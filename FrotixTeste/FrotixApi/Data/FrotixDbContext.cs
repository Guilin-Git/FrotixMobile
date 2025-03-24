using Microsoft.EntityFrameworkCore;
using FrotixApi.Models;

namespace FrotixApi.Data
{
    public class FrotixDbContext : DbContext
    {
        public FrotixDbContext(DbContextOptions<FrotixDbContext> options) : base(options) { }

        public DbSet<Vistorias> Vistorias { get; set; }
        public DbSet<PlacaFields> Veiculos { get; set; }
        public DbSet<MotoristaFields> Motoristas { get; set; }
        public DbSet<PontoFields> Pontos { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Vistorias>().ToTable("Vistorias");
            modelBuilder.Entity<PlacaFields>().ToTable("Veiculo");
            modelBuilder.Entity<MotoristaFields>().ToTable("Motorista");
            modelBuilder.Entity<PontoFields>().ToTable("Ponto");
        }
    }
}
