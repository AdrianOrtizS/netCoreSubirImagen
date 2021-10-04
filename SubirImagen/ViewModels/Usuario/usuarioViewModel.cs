using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SubirImagen.ViewModels.Usuario
{
    public class usuarioViewModel
    {
        public int id { get; set; }

        public int idrol { get; set; }
        public string rol { get; set; }

        public string nombre { get; set; }

        public string email { get; set; }

        public byte[] password_hash { get; set; }

        public bool condicion { get; set; }
        public string foto { get; set; }



    }
}
