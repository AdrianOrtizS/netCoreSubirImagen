using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SubirImagen.Models
{
    public class archivo
    {
        [Key]
        public int id { get; set; }

        public string nombre { get; set; }
        public string extension { get; set; }
        public double tamanio { get; set; }
        public string ubicacion { get; set; }

        public List<producto_Archivo> producto_Archivo { get; set; }

    }
}
