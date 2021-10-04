using Microsoft.EntityFrameworkCore;
using SubirImagen.Mapping;
using SubirImagen.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SubirImagen.Context
{
    public class AppDbContext: DbContext
    {
        public DbSet<archivo> archivos { get; set; }
        public DbSet<producto> producto { get; set; }
        public DbSet<producto_Archivo> producto_Archivo { get; set; }
        public DbSet<rol> rol { get; set; }
        public DbSet<usuario> usuario { get; set; }


        public AppDbContext(DbContextOptions<AppDbContext> options): base(options)
        {
        }


        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.ApplyConfiguration(new archivoMap());
            modelBuilder.ApplyConfiguration(new productoMap());
            modelBuilder.ApplyConfiguration(new producto_ArchivoMap());
            modelBuilder.ApplyConfiguration(new rolMap());
            modelBuilder.ApplyConfiguration(new usuarioMap());

        }

    }
}
