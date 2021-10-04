using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SubirImagen.ViewModels.Usuario
{
    public class usuarioActualizarViewModel
    {
        [Required]
        public int id { get; set; }
        [Required]
        public int idrol { get; set; }
        [Required]
        [StringLength(100, ErrorMessage = "El nombre no debe tener mas de 100 y menos de 3 caracteres")]
        public string nombre { get; set; }
        
        [Required]
        [EmailAddress]
        public string email { get; set; }
        public string foto { get; set; }

    }
}
