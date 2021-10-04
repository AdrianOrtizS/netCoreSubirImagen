using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using SubirImagen.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SubirImagen.Mapping
{
    public class productoMap : IEntityTypeConfiguration<producto>
    {
        public void Configure(EntityTypeBuilder<producto> builder)
        {
            builder.ToTable("producto")
                .HasKey(p => p.id);
        }
    }
}
