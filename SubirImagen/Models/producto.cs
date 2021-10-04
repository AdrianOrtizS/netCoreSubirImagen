using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SubirImagen.Models
{
    public class producto
    {
        [Key]
        public int id { get; set; }
        public string nombre { get; set; }
        public bool condicion { get; set; }

        public List<producto_Archivo> producto_Archivo { get; set; }

    }
}
