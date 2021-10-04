using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SubirImagen.Auxiliar;
using SubirImagen.Context;
using SubirImagen.Models;
using SubirImagen.ViewModels;
using SubirImagen.ViewModels.Producto;
using SubirImagen.ViewModelsAuxiliar;

namespace SubirImagen.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class productosController : ControllerBase
    {
        private readonly AppDbContext _context;
        private IQueryable<producto> queryableProducto;       //public static IWebHostEnvironment _enviroment;

        public productosController(AppDbContext context)
        {
            _context = context;
        }



        // GET: api/productos/Mostrar/5
        [HttpGet("[action]/{id}")]
        public async Task<IActionResult> Mostrar([FromRoute] int id)
        {
            var prod = await _context.producto
                                //.Include(a => a.categoria)
                                .Include(r => r.producto_Archivo)
                                .ThenInclude(t => t.archivo)
                                .SingleOrDefaultAsync(a => a.id == id);

            var archivo = prod.producto_Archivo
                .Select(a => new productoArchivoListVerViewModel
                {
                    idArchivo = a.idarchivo,
                    archivo = a.archivo.nombre
                }
                ).ToList();

            if (prod == null || archivo == null)
            {
                return NotFound();
            }

            productoVerViewModel producto = new productoVerViewModel
            {
                id = prod.id,
                nombre = prod.nombre,
                condicion = prod.condicion,
                archivos = archivo
            };

            return Ok( producto  );
        }


       


        // GET: api/productos/ListaParaRandom
        [HttpGet("[action]")]
        public async Task<IEnumerable<archivoListRandViewModel>> ListaParaRandom()
        {
            var archivos = await _context.archivos
                                .Include(r => r.producto_Archivo)
                                .ThenInclude(t => t.producto)
                                .ToListAsync();

            var numArchi = archivos.Count();

            return archivos.Select(c => new archivoListRandViewModel
            {
                nombre = c.nombre,
                numTotalArchivos = numArchi,
            });

        }


        // POST: api/productos/seleccionar
        [HttpPost("[action]")]
        public async Task<IActionResult> Seleccionar([FromBody] archivoSeleccionarViewModel archivoSeleccionar)
        {
            var arch = await _context.archivos
                                .Include(r => r.producto_Archivo)
                                .ThenInclude(t => t.producto)
                                .SingleOrDefaultAsync(a => a.nombre.Equals(archivoSeleccionar.nombre));

            var prod_arch = await _context.producto_Archivo
                                .Where(p => p.idarchivo.Equals(arch.id))
                                .SingleOrDefaultAsync();

            var prod = await _context.producto
                     .SingleOrDefaultAsync(a => a.id.Equals(prod_arch.idproducto));


            var archivos = prod.producto_Archivo
                .Select(a => new productoArchivoListVerViewModel
                {
                    idArchivo = a.idarchivo,
                    archivo = a.archivo.nombre
                }
                ).ToList();


            if (prod == null)
            {
                return NotFound();
            }

            productoVerViewModel producto = new productoVerViewModel
            {
                id = prod.id,
                nombre = prod.nombre,
                condicion = prod.condicion,
                archivos = archivos
            };

            return Ok(producto);

        }




        // GET: api/productos/Listar
        [HttpGet("[action]")]
        public async Task<IEnumerable<productoViewModel>> Listar([FromQuery] PaginacionViewModel paginacionViewModel)
        {
            this.queryableProducto = _context.producto
                //.Include(c => c.categoria)
                .AsQueryable();

            //Devuelve cantidad de registros en Db a cabecera de peticion
            //await HttpContext.InsertarParametrosPaginacionEnCabecera(queryable);
            if (HttpContext == null)
            {
                throw new ArgumentNullException(nameof(HttpContext));
            }
            else
            {
                double cantidad = await this.queryableProducto.CountAsync();
                HttpContext.Response.Headers.Add("cantidadTotalRegistros", cantidad.ToString());
            }

            var productos = await this.queryableProducto.OrderBy(x => x.nombre)
                                           .Paginar(paginacionViewModel).ToListAsync();

            return productos.Select(a => new productoViewModel
            {
                id = a.id,
                nombre = a.nombre,
                condicion = a.condicion

            });
        }


        // GET: api/productos/Buscar
        [HttpGet("[action]/{campo}/{valor}")]
        public async Task<IEnumerable<productoViewModel>> Buscar([FromQuery] PaginacionViewModel paginacionViewModel,
                                                                  [FromRoute] string campo,
                                                                  [FromRoute] string valor)
        {
            if (campo == "nombre")
            {
                this.queryableProducto = _context.producto
                                        .Where(a => a.nombre.Contains(valor))
                                        //.Include(a => a.categoria)
                                        .AsQueryable();
            }

/*            if (campo == "descripcion")
            {
                this.queryableProducto = _context.producto.Where(c => c.descripcion.Contains(valor)).Include(a => a.categoria).AsQueryable();
            }
*/
            var productos = await this.queryableProducto.OrderBy(x => x.nombre)
                                            .Paginar(paginacionViewModel).ToListAsync();

            return productos.Select(a => new productoViewModel
            {
                id = a.id,
                nombre = a.nombre,
                condicion = a.condicion
            });
        }


        // GET: api/productos/GetImage/nomImage
        [HttpGet("[action]/{image}")]
        public IActionResult GetImage([FromRoute] string image)
        {
            try
            {
                var folderName = Path.Combine("Resources", "Images");
                var pathToOpen = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", folderName);
                var fullPath = Path.Combine(pathToOpen, image).Replace(@"\", "/");

                bool fileExist = System.IO.File.Exists(fullPath);
                if (fileExist)
                {
                    return Ok(System.IO.File.OpenRead(fullPath));
                }
                else
                {
                    return NotFound();
                }

            }
            catch (Exception ex)
            {
                return NotFound();
                throw;
            }
        }


        // POST: api/productos/Upload
        [HttpPost("[action]")]
        public async Task<ActionResult> Upload()
        {
            var files = Request.Form.Files;
            List<archivo> archivos = new List<archivo>();

            try
            {
                if (files.Count > 0 && files.Count < 4)
                {
                    foreach (var file in files)
                    {
                        var folderName = Path.Combine("Resources", "Images");
                        var pathToSave = Path.Combine(Directory.GetCurrentDirectory(),
                                    "wwwroot", folderName);

                        var fName = (DateTime.Now.ToString("yyyyMMddHHmmss") + "-" + file.FileName);

                        var filePath = pathToSave + "\\" + fName;

                        using (var stream = System.IO.File.Create(filePath))
                        {
                            await file.CopyToAsync(stream);
                        }
                        double tamanio = file.Length;
                        tamanio = tamanio / 1000000;
                        tamanio = Math.Round(tamanio, 2);

                        archivo archivo = new archivo();
                        archivo.extension = Path.GetExtension(file.FileName).Substring(1);
                        archivo.tamanio = tamanio;
                        archivo.ubicacion = filePath;

                        var pathWithExten = Path.GetFileNameWithoutExtension(file.FileName);
                        //var nom = (DateTime.Now.ToString("yyyyMMddHHmmss") + "-" + pathWithExten).ToLower();

                        //archivo.nombre = fName + "." + archivo.extension;
                        archivo.nombre = fName;
                        archivos.Add(archivo);

                    }

                    await _context.archivos.AddRangeAsync(archivos);
                    await _context.SaveChangesAsync();
                }

            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }

            return Ok(archivos);

        }




        // POST: api/productos/Upload2
        [HttpPost("[action]")]
        public async Task<ActionResult> Upload2()
        {
            var files = Request.Form.Files;
            List<archivo> archivos = new List<archivo>();

            try
            {
                if (files.Count > 0 && files.Count < 4)
                {
                    foreach (var file in files)
                    {
                        var folderName = Path.Combine("Resources", "Images");
                        var pathToSave = Path.Combine(Directory.GetCurrentDirectory(),
                                    "wwwroot", folderName);

                        var fName = (DateTime.Now.ToString("yyyyMMddHHmmss") + "-" + file.FileName);

                        var filePath = pathToSave + "\\" + fName;

                        using (var stream = System.IO.File.Create(filePath))
                        {
                            await file.CopyToAsync(stream);
                        }
                        double tamanio = file.Length;
                        tamanio = tamanio / 1000000;
                        tamanio = Math.Round(tamanio, 2);

                        archivo archivo = new archivo();
                        archivo.extension = Path.GetExtension(file.FileName).Substring(1);
                        archivo.tamanio = tamanio;
                        archivo.ubicacion = filePath;

                        var pathWithExten = Path.GetFileNameWithoutExtension(file.FileName);
                        //var nom = (DateTime.Now.ToString("yyyyMMddHHmmss") + "-" + pathWithExten).ToLower();
                        //archivo.nombre = fName + "." + archivo.extension;
                        archivo.nombre = fName;
                        archivos.Add(archivo);

                    }

                    await _context.archivos.AddRangeAsync(archivos);
                    await _context.SaveChangesAsync();
                }

            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }

            return Ok(archivos);
        }






        // POST: api/productos/Crear
        [HttpPost("[action]")]
        public async Task<IActionResult> Crear([FromBody] productoCrearViewModel productoViewModel)
        {
            producto producto = new producto
            {
                nombre = productoViewModel.nombre,
                condicion = true
            };


            try
            {
                _context.producto.Add(producto);
                await _context.SaveChangesAsync();
                var id = producto.id;

                foreach (var ARC in productoViewModel.archivos)
                {
                    producto_Archivo art_T = new producto_Archivo
                    {
                        idproducto = id,
                        idarchivo = ARC.id,
                    };

                    _context.producto_Archivo.Add(art_T);

                }
                await _context.SaveChangesAsync();

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return BadRequest("Error: " + ex.Message);
            }

            return Ok(productoViewModel);
        }



        // PUT: api/productos/Actualizar
        [HttpPut("[action]")]
        public async Task<IActionResult> Actualizar([FromBody] productoActualizarViewModel productoViewModel)
        {
            if (productoViewModel.id <= 0)
            {
                return BadRequest();
            }
            //var producto = await _context.producto.FirstOrDefaultAsync(a => a.idproducto == productoViewModel.idproducto);
            var producto = await _context.producto
                               //.Include(a => a.categoria)
                               .Include(r => r.producto_Archivo)
                               .ThenInclude(t => t.archivo)
                               .SingleOrDefaultAsync(a => a.id == productoViewModel.id);

            var archivo = producto.producto_Archivo
                .Select(a => new productoArchivoListVerViewModel
                {
                    idArchivo = a.idarchivo,
                    archivo = a.archivo.nombre
                }
                ).ToList();

            if (producto == null)
            {
                return NotFound();
            }

            try
            {
                producto.nombre = productoViewModel.nombre;

                await _context.SaveChangesAsync();

                var id = producto.id;

                //eliminar datos de tabla intermedia
                var pro_Arch = await _context.producto_Archivo.Where(ta => ta.idproducto == id).ToListAsync();
                foreach (var pa in pro_Arch)
                {
                    _context.producto_Archivo.Remove(pa);
                    await _context.SaveChangesAsync();
                }

                //agrega datos relacionados en table intermedia
                foreach (var P_A in productoViewModel.archivos)
                {
                    producto_Archivo pro_A = new producto_Archivo
                    {
                        idproducto = id,
                        idarchivo = P_A.id,
                    };

                    _context.producto_Archivo.Add(pro_A);

                }

                //await _hubContext.Clients.Group("Administrador").SendAsync("ReceiveMessage", "Se ha actualizado producto " + producto.nombre);
                await _context.SaveChangesAsync();


            }
            catch (DbUpdateConcurrencyException)
            {
                return BadRequest();
            }

            return Ok();
        }




        // DELETE: api/productos/5
        [HttpDelete("[action]/{id}")]
        public async Task<IActionResult> Eliminar([FromRoute] int id)
        {
            var producto = await _context.producto.FindAsync(id);
            if (producto == null)
            {
                return NotFound();
            }

            _context.producto.Remove(producto);

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (Exception)
            {
                return BadRequest();
            }

            return Ok(producto);
        }



        private bool productoExists(int id)
        {
            return _context.producto.Any(e => e.id == id);
        }
    }
}
