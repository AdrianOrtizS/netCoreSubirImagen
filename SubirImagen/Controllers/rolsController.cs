using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SubirImagen.Context;
using SubirImagen.Models;
using SubirImagen.ViewModels.Usuario;

namespace SubirImagen.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class rolsController : ControllerBase
    {
        private readonly AppDbContext _context;

        public rolsController(AppDbContext context)
        {
            _context = context;
        }


        // GET: api/rols/ListarDropdown
        [HttpGet("[action]")]
        public async Task<IEnumerable<rolViewModel>> ListarDropdown()
        {

            var roles = await _context.rol.Where(c => c.condicion == true).ToListAsync();

            return roles.Select(r => new rolViewModel
            {
                id = r.id,
                nombre = r.nombre
            });
        }



        // GET: api/rols/Listar
        [HttpGet("[action]")]
        public async Task<IEnumerable<rolViewModel>> Listar()
        {
            var roles = await _context.rol.ToListAsync();

            return roles.Select(r => new rolViewModel
            {
                id = r.id,
                nombre = r.nombre,
                descripcion = r.descripcion,
                condicion = r.condicion
            });
        }


        // PUT: api/rols/Actualizar
        [HttpPut("[action]")]
        public async Task<IActionResult> Actualizar([FromBody] rolActualizarViewModel rolViewModel)
        {
            if (rolViewModel.idrol <= 0)
            {
                return BadRequest();
            }

            var rol = await _context.rol.FirstOrDefaultAsync(r => r.id == rolViewModel.idrol);

            if (rol == null)
            {
                return NotFound();
            }

            try
            {
                rol.nombre = rolViewModel.nombre;
                rol.descripcion = rolViewModel.descripcion;

                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                return BadRequest();
            }

            return Ok();
        }


        // PUT: api/rols/Desactivar
        [HttpPut("[action]/{id}")]
        public async Task<IActionResult> Desactivar([FromRoute] int id)
        {
            if (id <= 0)
            {
                return BadRequest();
            }

            var rol = await _context.rol.FirstOrDefaultAsync(r => r.id == id);

            if (rol == null)
            {
                return NotFound();
            }

            rol.condicion = false;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException ex)
            {
                return BadRequest(ex.Message);
            }

            return Ok();
        }

        // PUT: api/rols/Activar
        [HttpPut("[action]/{id}")]
        public async Task<IActionResult> Activar([FromRoute] int id)
        {
            if (id <= 0)
            {
                return BadRequest();
            }

            var rol = await _context.rol.FirstOrDefaultAsync(r => r.id == id);

            if (rol == null)
            {
                return NotFound();
            }

            rol.condicion = true;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                return BadRequest();
            }

            return Ok();
        }


        private bool rolExists(int id)
        {
            return _context.rol.Any(e => e.id == id);
        }
    }
}
