using System.Net.Http.Json;
using FrotixTeste.Models;

namespace FrotixTeste.Services
{
    public class VistoriaService
    {
        private readonly HttpClient _http;

        private const string BaseUrl = "Vistorias";

        public VistoriaService(HttpClient http)
        {
            _http = http;
        }

        public async Task<List<PlacaFields>> ObterPlacasAsync()
        {
            return await _http.GetFromJsonAsync<List<PlacaFields>>("Vistorias/Placas") ?? new();
        }

        public async Task<List<MotoristaFields>> ObterMotoristasAsync()
        {
            return await _http.GetFromJsonAsync<List<MotoristaFields>>("Vistorias/Motoristas") ?? new();
        }

        public async Task<List<PontoFields>> ObterPontosAsync()
        {
            return await _http.GetFromJsonAsync<List<PontoFields>>("Vistorias/Pontos") ?? new();
        }

        public async Task<List<Vistorias>> ObterTodasVistoriasAsync()
        {
            return await _http.GetFromJsonAsync<List<Vistorias>>("") ?? new();
        }

        public async Task<bool> SalvarVistoria(Vistorias vistoria)
        {
            try
            {
                var response = await _http.PostAsJsonAsync("", vistoria);
                return response.IsSuccessStatusCode;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Erro ao salvar vistoria: {ex.Message}");
                return false;
            }
        }

        public async Task<bool> AtualizarVistoriaAsync(Vistorias vistoria)
        {
            try
            {
                var response = await _http.PutAsJsonAsync($"{BaseUrl}/{vistoria.Id}", vistoria);
                return response.IsSuccessStatusCode;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Erro ao atualizar vistoria: {ex.Message}");
                return false;
            }
        }

        public async Task<bool> ExcluirVistoriaAsync(Guid id)
        {
            try
            {
                var response = await _http.DeleteAsync($"{BaseUrl}/{id}");
                return response.IsSuccessStatusCode;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Erro ao excluir vistoria: {ex.Message}");
                return false;
            }
        }
    }
}
