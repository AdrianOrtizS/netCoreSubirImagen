using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace SubirImagen.Models
{
    public class usuario
    {
        [Key]
        public int id { get; set; }
        [Required]
        [ForeignKey("rol")]
        public int idrol { get; set; }
        [Required]
        [StringLength(100, MinimumLength = 3, ErrorMessage = "Nombre debe tener mas de 3 y menos de 100 caracteres")]
        public string nombre { get; set; }
        
        [StringLength(100, MinimumLength = 3, ErrorMessage = "Nombre debe tener mas de 3 y menos de 100 caracteres")]
        public string user { get; set; }
        [Required]
        public string email { get; set; }
        
        [Required]
        public byte[] password_hash { get; set; }
        [Required]
        public byte[] password_salt { get; set; }
        public bool condicion { get; set; }
        
        public rol rol { get; set; }

        public string foto { get; set; }

    }
}
