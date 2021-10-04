using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using SubirImagen.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SubirImagen.Mapping
{
    public class producto_ArchivoMap : IEntityTypeConfiguration<producto_Archivo>
    {
        public void Configure(EntityTypeBuilder<producto_Archivo> builder)
        {

            builder.ToTable("producto_Archivo")
                .HasKey(bc => new { bc.idproducto, bc.idarchivo });


            builder.ToTable("producto_Archivo")
                .HasOne(b => b.producto)
                .WithMany(bg => bg.producto_Archivo)
                .HasForeignKey(bc => bc.idproducto);


            builder.ToTable("producto_Archivo")
                .HasOne(c => c.archivo)
                .WithMany(ca => ca.producto_Archivo)
                .HasForeignKey(cc => cc.idarchivo);
        }
    }
}
