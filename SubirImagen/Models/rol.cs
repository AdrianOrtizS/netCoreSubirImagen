using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SubirImagen.Models
{
    public class rol
    {
        [Key]
        public int id { get; set; }
        [Required]
        [StringLength(100, MinimumLength = 3, ErrorMessage = "Nombre debe tener mas de 3 y menos de 100 caracteres")]
        public string nombre { get; set; }

        [StringLength(200, MinimumLength = 10, ErrorMessage = "Descripcion debe tener mas de 10 y menos de 100 caracteres")]
        public string descripcion { get; set; }
        public bool condicion { get; set; }

        public ICollection<usuario> usuarios { get; set; }

    }
}
