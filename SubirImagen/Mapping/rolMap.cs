using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using SubirImagen.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SubirImagen.Mapping
{
    public class rolMap : IEntityTypeConfiguration<rol>
    {
        public void Configure(EntityTypeBuilder<rol> builder)
        {
            builder.ToTable("rol")
                .HasKey(a => a.id);
        }
    }
}
