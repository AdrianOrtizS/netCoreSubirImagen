using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using SubirImagen.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SubirImagen.Mapping
{
    public class usuarioMap: IEntityTypeConfiguration<usuario>
    {
        public void Configure(EntityTypeBuilder<usuario> builder)
        {
            builder.ToTable("usuario")
                .HasKey(a => a.id);
        }
    }
}
