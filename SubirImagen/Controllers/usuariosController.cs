using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.IO;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using SubirImagen.Auxiliar;
using SubirImagen.Context;
using SubirImagen.Models;
using SubirImagen.ViewModels.Usuario;
using SubirImagen.ViewModelsAuxiliar;

namespace SubirImagen.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class usuariosController : ControllerBase
    {
        private readonly AppDbContext _context;
        private IQueryable<usuario> queryableUser;       //public static IWebHostEnvironment _enviroment;
        private readonly IConfiguration _config;
     //   private readonly IHubContext<Mensaje> _hubContext;


        public usuariosController(AppDbContext context, IConfiguration config
            //, IHubContext<Mensaje> hubContext
            )
        {
            _context = context;
            _config = config; //_hubContext = hubContext;
        }


        // POST: api/usuarios/Upload
        [HttpPost("[action]"), DisableRequestSizeLimit]
        public async Task<IActionResult> Upload()
        {
            try
            {
                var formCollection = await Request.ReadFormAsync();
                var file = formCollection.Files.First();
                var folderName = Path.Combine("Resources", "Images");
                var pathToSave = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", folderName);

                if (file.Length > 0)
                {

                    var fileName = (DateTime.Now.ToString("yyyyMMddHHmmss") + "-" + file.FileName).ToLower();
                    var fullPath = Path.Combine(pathToSave, fileName);
                    using (var stream = new FileStream(fullPath, FileMode.Create))
                    {
                        file.CopyTo(stream);
                    }

                    return Ok(new { fileName });
                }
                else
                {
                    return BadRequest();
                }
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"Internal server error: {ex}");
            }
        }




        // POST: api/usuarios/Upload2
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






        // GET: api/usuarios/GetImage/nomImage
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


        // GET: api/usuarios/Listar
        [HttpGet("[action]")]
        public async Task<IEnumerable<usuarioViewModel>> Listar([FromQuery] PaginacionViewModel paginacionViewModel)
        {
            this.queryableUser = _context.usuario.Include(r => r.rol).AsQueryable();

            //Devuelve cantidad de registros en Db a cabecera de peticion
            //await HttpContext.InsertarParametrosPaginacionEnCabecera(queryable);
            if (HttpContext == null)
            {
                throw new ArgumentNullException(nameof(HttpContext));
            }
            else
            {
                double cantidad = await this.queryableUser.CountAsync();
                HttpContext.Response.Headers.Add("cantidadTotalRegistros", cantidad.ToString());
            }

            var usuarios = await this.queryableUser.OrderBy(u => u.nombre)
                                           .Paginar(paginacionViewModel).ToListAsync();

            return usuarios.Select(u => new usuarioViewModel
            {
                id = u.id,
                idrol = u.idrol,
                rol = u.rol.nombre,
                nombre = u.nombre,
                email = u.email,
                //                password_hash= u.password_hash,
                condicion = u.condicion
            });
        }


        // GET: api/usuarios/Buscar
        [HttpGet("[action]/{campo}/{valor}")]
        public async Task<IEnumerable<usuarioViewModel>> Buscar([FromQuery] PaginacionViewModel paginacionViewModel,
                                                                  [FromRoute] string campo,
                                                                  [FromRoute] string valor)
        {
            if (campo == "nombre")
            {
                this.queryableUser = _context.usuario.Where(u => u.nombre.Contains(valor)).Include(r => r.rol).AsQueryable();
            }

            if (campo == "email")
            {
                this.queryableUser = _context.usuario.Where(u => u.email.Contains(valor)).Include(r => r.rol).AsQueryable();
            }

            var usuarios = await this.queryableUser.OrderBy(x => x.nombre)
                                            .Paginar(paginacionViewModel).ToListAsync();

            return usuarios.Select(u => new usuarioViewModel
            {
                id = u.id,
                idrol = u.idrol,
                rol = u.rol.nombre,
                nombre = u.nombre,
                email = u.email,
                password_hash = u.password_hash,
                condicion = u.condicion
            });
        }


        // GET: api/usuarios/Mostrar/5
        [HttpGet("[action]/{id}")]
        public async Task<IActionResult> Mostrar([FromRoute] int id)
        {
            var usuario = await _context.usuario.Include(r => r.rol).SingleOrDefaultAsync(u => u.id == id);

            if (usuario == null)
            {
                return NotFound();
            }

            usuarioViewModel usuarioViewModel = new usuarioViewModel
            {
                id = usuario.id,
                idrol = usuario.idrol,
                rol = usuario.rol.nombre,
                nombre = usuario.nombre,
                email = usuario.email,
                foto = usuario.foto,
                //    password_hash = usuario.password_hash,
                condicion = usuario.condicion
            };

            return Ok(usuarioViewModel);
        }


        // PUT: api/usuarios/Actualizar 
        [HttpPut("[action]")]
        public async Task<IActionResult> Actualizar([FromBody] usuarioActualizarViewModel usuarioViewModel)
        {
            if (usuarioViewModel.id <= 0)
            {
                return BadRequest();
            }

            var usuario = await _context.usuario.Where(u => u.condicion == true).FirstOrDefaultAsync(u => u.id == usuarioViewModel.id);

            if (usuario == null)
            {
                return NotFound();
            }

            try
            {
                usuario.idrol = usuarioViewModel.idrol;
                usuario.nombre = usuarioViewModel.nombre;
                usuario.email = usuarioViewModel.email;
                usuario.foto = usuarioViewModel.foto;
                await _context.SaveChangesAsync();
                //await _hubContext.Clients.Group("Administrador").SendAsync("ReceiveMessage", "Se ha actualizado usuario " + usuario.nombre);

            }
            catch (DbUpdateConcurrencyException)
            {
                return BadRequest();
            }

            return Ok();
        }


        // POST: api/usuarios/Crear
        [HttpPost("[action]")]
        public async Task<IActionResult> Crear([FromBody] usuarioCrearViewModel usuarioViewModel)
        {
            var email = usuarioViewModel.email.ToLower();

            if (await _context.usuario.AnyAsync(u => u.email == email))
            {
                return BadRequest("El email ya existe");
            }

            CrearPasswordHash(usuarioViewModel.password, out byte[] password_Hash, out byte[] password_Salt);

            usuario usuario = new usuario
            {
                idrol = usuarioViewModel.idrol,
                nombre = usuarioViewModel.nombre,
                email = usuarioViewModel.email,
                foto = usuarioViewModel.foto,
                password_salt = password_Salt,  //llaves con la que se encripta
                password_hash = password_Hash,  //clave encriptada
                condicion = true
            };

            try
            {
                _context.usuario.Add(usuario);
                await _context.SaveChangesAsync();
                //await _hubContext.Clients.Group("Administrador").SendAsync("ReceiveMessage", "Se ha registrado usuario " + usuario.nombre);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.InnerException.Message);
                return BadRequest(ex.Message);
            }

            return Ok();
        }


        private void CrearPasswordHash(string password, out byte[] passwordHash, out byte[] passwordSalt)
        {
            using (var hmac = new System.Security.Cryptography.HMACSHA512())
            {
                passwordSalt = hmac.Key;
                passwordHash = hmac.ComputeHash(System.Text.Encoding.UTF8.GetBytes(password));
            }
        }



        // POST: api/usuarios/Login
        [HttpPost("[action]")]
        public async Task<IActionResult> Login(loginViewModel loginViewModel)
        {
            var email = loginViewModel.email.ToLower();

            var usuario = await _context.usuario
                .Where(u => u.condicion == true)
                .Include(r => r.rol)
                .FirstOrDefaultAsync(u => u.email == email);

            if (usuario == null)
            {
                return NotFound();
            }


            if (!VerificarPasswordHash(loginViewModel.password, usuario.password_hash, usuario.password_salt))
            {
                return NotFound();
            }

            var claims = new List<Claim>
            {
                new Claim(ClaimTypes.NameIdentifier, usuario.id.ToString()),
                new Claim(ClaimTypes.Email, email),
                new Claim(ClaimTypes.Role, usuario.rol.nombre),
                new Claim("id",         usuario.id.ToString()),
                new Claim("idrol",      usuario.rol.id.ToString()),
                new Claim("rol",        usuario.rol.nombre),
                new Claim("nombre",     usuario.nombre),
                new Claim("email",      usuario.email),
                new Claim("foto",       usuario.foto)
            };

            return Ok(new { token = GenerarToken(claims) });
        }


        private bool VerificarPasswordHash(string password, byte[] passwordHashAlmacenado, byte[] passwordSalt)
        {
            using (var hmac = new System.Security.Cryptography.HMACSHA512(passwordSalt))
            {
                var passwordHashNuevo = hmac.ComputeHash(System.Text.Encoding.UTF8.GetBytes(password));
                return new ReadOnlySpan<byte>(passwordHashAlmacenado)
                                                .SequenceEqual(new ReadOnlySpan<byte>(passwordHashNuevo));
            }
        }


        private string GenerarToken(List<Claim> claims)
        {
            //Clave secreta appSetting
            var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_config["Jwt:Key"]));
            //Encripta clave key
            var creds = new SigningCredentials(key, SecurityAlgorithms.HmacSha256);

            var token = new JwtSecurityToken(
                _config["Jwt:Issuer"],   // Issuer.....https://localhost:44328/
                _config["Jwt:Issuer"],
                notBefore: DateTime.Now,
                expires: DateTime.Now.AddHours(2),
                signingCredentials: creds,
                claims: claims
                );
            return new JwtSecurityTokenHandler().WriteToken(token);
        }



        // DELETE: api/usuarios/5
        [HttpDelete("[action]/{id}")]
        public async Task<IActionResult> Eliminar([FromRoute] int id)
        {
            var usuario = await _context.usuario.FindAsync(id);
            if (usuario == null)
            {
                return NotFound();
            }

            _context.usuario.Remove(usuario);

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (Exception)
            {
                return BadRequest();
            }

            return Ok(usuario);
        }


        // PUT: api/usuarios/Desactivar
        [HttpPut("[action]/{id}")]
        public async Task<IActionResult> Desactivar([FromRoute] int id)
        {
            if (id <= 0)
            {
                return BadRequest();
            }

            var usuarios = await _context.usuario.FirstOrDefaultAsync(u => u.id == id);

            if (usuarios == null)
            {
                return NotFound();
            }

            usuarios.condicion = false;

            try
            {
                await _context.SaveChangesAsync();
                //   await _hubContext.Clients.Group("Administrador").SendAsync("ReceiveMessage", "Se ha desactivado usuario " + usuarios.nombre);

            }
            catch (DbUpdateConcurrencyException ex)
            {
                return BadRequest(ex.Message);
            }

            return Ok();
        }


        // PUT: api/usuarios/Activar
        [HttpPut("[action]/{id}")]
        public async Task<IActionResult> Activar([FromRoute] int id)
        {
            if (id <= 0)
            {
                return BadRequest();
            }

            var usuarios = await _context.usuario.FirstOrDefaultAsync(u => u.id == id);

            if (usuarios == null)
            {
                return NotFound();
            }

            usuarios.condicion = true;

            try
            {
                await _context.SaveChangesAsync();
                //     await _hubContext.Clients.Group("Administrador").SendAsync("ReceiveMessage", "Se ha activado usuario " + usuarios.nombre);
            }
            catch (DbUpdateConcurrencyException)
            {
                return BadRequest();
            }

            return Ok();
        }


        private bool usuarioExists(int id)
        {
            return _context.usuario.Any(e => e.id == id);
        }
    }
}
