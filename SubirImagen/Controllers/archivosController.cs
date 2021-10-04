using System;
using System.Collections.Generic;
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
    public class archivosController : ControllerBase
    {
        private readonly AppDbContext _context;
        private IQueryable<archivo> queryableArchivo;

        public archivosController(AppDbContext context)
        {
            _context = context;
        }


        // GET: api/archivos/ListarDropdown
        /*      [HttpGet("[action]")]
              public async Task<IEnumerable<archivoViewModel>> ListarDropdown()
              {

                  var archivos = await _context.archivos
                      //.Where(c => c.condicion == true)
                      .ToListAsync();

                  return archivos.Select(c => new archivoViewModel
                  {
                      id = c.id,
                      nombre = c.nombre,
                      extension = c.extension,
                      tamanio= c.tamanio,
                      ubicacion = c.ubicacion
                  });
              }*/


        // GET: api/archivos/ListarCheck
        /*[HttpGet("[action]")]
        public async Task<IEnumerable<archivoViewModel>> ListarCheck()
        {

            var archivos = await _context.archivos
                //.Where(c => c.condicion == true)
                .ToListAsync();

            return archivos.Select(c => new archivoViewModel
            {
                id = c.id,
                nombre = c.nombre,
                extension = c.extension,
                tamanio = c.tamanio,
                ubicacion = c.ubicacion
            });
        }
*/


        // GET: api/archivos/Listar
        /*[HttpGet("[action]")]
        public async Task<IEnumerable<archivoViewModel>> Listar([FromQuery] PaginacionViewModel paginacionViewModel)
        {
            this.queryableArchivo = _context.archivos.AsQueryable();
            //Devuelve cantidad de registros en Db a cabecera de peticion
            //await HttpContext.InsertarParametrosPaginacionEnCabecera(queryable);

            if (HttpContext == null)
            {
                throw new ArgumentNullException(nameof(HttpContext));
            }
            else
            {
                double cantidad = await this.queryableArchivo.CountAsync();
                HttpContext.Response.Headers.Add("cantidadTotalRegistros", cantidad.ToString());
            }

            var archivos = await this.queryableArchivo.OrderBy(x => x.nombre)
                                            .Paginar(paginacionViewModel).ToListAsync();

            return archivos.Select(c => new archivoViewModel
            {
                id = c.id,
                nombre = c.nombre,
                extension = c.extension,
                tamanio = c.tamanio,
                ubicacion = c.ubicacion

            });
        }*/


        // GET: api/archivos/Buscar
        /*[HttpGet("[action]/{campo}/{valor}")]
        public async Task<IEnumerable<archivoViewModel>> Buscar([FromQuery] PaginacionViewModel paginacionViewModel,
                                                                  [FromRoute] string campo,
                                                                  [FromRoute] string valor)
        {
            if (campo == "archivos")
            {
                this.queryableArchivo = _context.archivos.Where(c => c.nombre.Contains(valor)).AsQueryable();
            }

            var archivos = await this.queryableArchivo.OrderBy(x => x.nombre)
                                            .Paginar(paginacionViewModel).ToListAsync();

            return archivos.Select(c => new archivoViewModel
            {
                id = c.id,
                nombre = c.nombre,
                extension = c.extension,
                tamanio = c.tamanio,
                ubicacion = c.ubicacion
            });
        }*/




        // GET: api/archivos/Mostrar/5
        [HttpGet("[action]/{id}")]
        public async Task<IActionResult> Mostrar([FromRoute] int id)
        {
            var archivos = await _context.archivos.FindAsync(id);

            if (archivos == null)
            {
                return NotFound();
            }

            archivoViewModel archivoViewModel = new archivoViewModel
            {
                id = archivos.id,
                nombre = archivos.nombre,
                extension = archivos.extension,
                tamanio = archivos.tamanio,
                ubicacion = archivos.ubicacion
            };


            return Ok(archivoViewModel);
        }

        // PUT: api/archivos/Actualizar
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        /*[HttpPut("[action]")]
        public async Task<IActionResult> Actualizar([FromBody] archivoViewModel archivosViewModel)
        {
            if (archivosViewModel.id <= 0)
            {
                return BadRequest();
            }

            var archivos = await _context.archivos.FirstOrDefaultAsync(c => c.id == archivosViewModel.id);

            if (archivos == null)
            {
                return NotFound();
            }

            try
            {
                archivos.nombre = archivosViewModel.nombre;

                await _context.SaveChangesAsync();
 //               await _hubContext.Clients.Group("Administrador").SendAsync("ReceiveMessage", "Se ha actualizado Tipo Articulos " + archivos.archivos);

                //await _hubContext.Clients.All.SendAsync("enviaratodos", archivos);
            }
            catch (DbUpdateConcurrencyException)
            {
                return BadRequest();
            }

            return Ok();
        }*/

        // POST: api/archivos/Crear
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost("[action]")]
        public async Task<IActionResult> Crear([FromBody] archivoViewModel archivosViewModel)
        {
            archivo archivos = new archivo
            {
                nombre = archivosViewModel.nombre,
                extension = archivosViewModel.extension,
                tamanio = archivosViewModel.tamanio,
                ubicacion = archivosViewModel.ubicacion
            };

            try
            {
                _context.archivos.Add(archivos);
                await _context.SaveChangesAsync();
             //   await _hubContext.Clients.Group("Administrador").SendAsync("ReceiveMessage", "Se ha registrado Tipo Articulos " + archivos.archivos);

            }
            catch (Exception)
            {
                return BadRequest();
            }

            return Ok();
        }

        // DELETE: api/archivos/5
        [HttpDelete("[action]/{id}")]
        public async Task<IActionResult> Eliminar([FromRoute] int id)
        {
            var archivos = await _context.archivos.FindAsync(id);
            if (archivos == null)
            {
                return NotFound();
            }

            _context.archivos.Remove(archivos);

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (Exception)
            {
                return BadRequest();
            }

            return Ok(archivos);
        }


        private bool archivoExists(int id)
        {
            return _context.archivos.Any(e => e.id == id);
        }
    }
}
