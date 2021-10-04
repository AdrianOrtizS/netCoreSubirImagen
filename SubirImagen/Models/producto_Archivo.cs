using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace SubirImagen.Models
{
    public class producto_Archivo
    {
        [Required]
        [ForeignKey("producto")]
        public int idproducto { get; set; }
        public producto producto { get; set; }


        [Required]
        [ForeignKey("archivo")]
        public int idarchivo { get; set; }
        public archivo archivo { get; set; }

    }
}
