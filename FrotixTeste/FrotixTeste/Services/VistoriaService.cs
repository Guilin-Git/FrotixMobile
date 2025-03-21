using FrotixTeste.Data;
using FrotixTeste.Models;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;

namespace FrotixTeste.Services
{
    public class VistoriaService
    {
        private readonly FrotixDbContext _context;

        public VistoriaService(FrotixDbContext context)
        {
            _context = context;
        }

        public async Task<List<PlacaFields>> ObterPlacasAsync()
        {
            return await _context.Veiculos.ToListAsync();  // 🔹 Corrigido para acessar "Veiculo"
        }

        public async Task<List<MotoristaFields>> ObterMotoristasAsync()
        {
            return await _context.Motoristas.ToListAsync();
        }

        public async Task<List<PontoFields>> ObterPontosAsync()
        {
            return await _context.Pontos.ToListAsync();
        }

        public async Task<List<Vistorias>> ObterTodasVistoriasAsync()
        {
            return await _context.Vistorias.ToListAsync();
        }

        public async Task<bool> SalvarVistoria(Vistorias vistoria)
        {
            _context.Vistorias.Add(vistoria);
            return await _context.SaveChangesAsync() > 0;
        }

        public async Task<bool> AtualizarVistoriaAsync(Vistorias vistoria)
        {
            try
            {
                var vistoriaExistente = await _context.Vistorias.FindAsync(vistoria.Id);

                if (vistoriaExistente == null)
                {
                    return false; // A vistoria não existe no banco de dados
                }

                // Atualiza os valores da vistoria existente
                _context.Entry(vistoriaExistente).CurrentValues.SetValues(vistoria);

                // Salva as alterações
                await _context.SaveChangesAsync();
                return true;
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Erro ao atualizar vistoria: {ex.Message}");
                return false;
            }
        }



        public async Task<bool> ExcluirVistoriaAsync(Guid id)
        {
            var vistoria = await _context.Vistorias.FindAsync(id);
            if (vistoria == null) return false;

            _context.Vistorias.Remove(vistoria);
            return await _context.SaveChangesAsync() > 0;
        }
    }
}
