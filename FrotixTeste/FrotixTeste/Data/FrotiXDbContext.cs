using Microsoft.EntityFrameworkCore;
using FrotixTeste.Models;

namespace FrotixTeste.Data
{
    public class FrotixDbContext : DbContext
    {
        public FrotixDbContext(DbContextOptions<FrotixDbContext> options) : base(options) { }

        // Mapeando corretamente as tabelas do banco de dados
        public DbSet<PlacaFields> Veiculos { get; set; }  // 🔹 Tabela correta é "Veiculo"
        public DbSet<MotoristaFields> Motoristas { get; set; }  // 🔹 Tabela correta é "Motorista"
        public DbSet<PontoFields> Pontos { get; set; }  // 🔹 Tabela correta é "Ponto"
        public DbSet<Vistorias> Vistorias { get; set; }  // 🔹 Tabela correta é "Vistorias"

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            // 🔹 Configurar os nomes das tabelas corretamente
            modelBuilder.Entity<PlacaFields>().ToTable("Veiculo");
            modelBuilder.Entity<MotoristaFields>().ToTable("Motorista");
            modelBuilder.Entity<PontoFields>().ToTable("Ponto");
            modelBuilder.Entity<Vistorias>().ToTable("Vistorias");
        }
    }
}
