using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SubirImagen.ViewModels.Producto
{
    public class productoVerViewModel
    {

        public int id { get; set; }
        public string nombre { get; set; }
        public bool condicion { get; set; }

        public List<productoArchivoListVerViewModel> archivos { get; set; }

    }
}
