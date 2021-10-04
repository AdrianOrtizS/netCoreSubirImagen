using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using SubirImagen.Models;

namespace SubirImagen.Mapping
{
    public class archivoMap : IEntityTypeConfiguration<archivo>
    {
        public void Configure(EntityTypeBuilder<archivo> builder)
        {
            builder.ToTable("archivo")
                .HasKey(a => a.id);
        }
    }
}
