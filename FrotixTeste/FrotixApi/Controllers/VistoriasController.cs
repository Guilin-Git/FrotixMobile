using FrotixApi.Data;
using FrotixApi.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace FrotixApi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class VistoriasController : ControllerBase
    {
        private readonly FrotixDbContext _context;

        public VistoriasController(FrotixDbContext context)
        {
            _context = context;
        }

        // GET /vistorias/placas
        [HttpGet("placas")]
        public async Task<ActionResult<List<PlacaFields>>> ObterPlacas()
        {
            return await _context.Veiculos.ToListAsync();
        }

        // GET /vistorias/motoristas
        [HttpGet("motoristas")]
        public async Task<ActionResult<List<MotoristaFields>>> ObterMotoristas()
        {
            return await _context.Motoristas.ToListAsync();
        }

        // GET /vistorias/pontos
        [HttpGet("pontos")]
        public async Task<ActionResult<List<PontoFields>>> ObterPontos()
        {
            return await _context.Pontos.ToListAsync();
        }

        // GET /vistorias
        [HttpGet]
        public async Task<ActionResult<List<Vistorias>>> ObterTodas()
        {
            return await _context.Vistorias.ToListAsync();
        }

        // POST /vistorias
        [HttpPost]
        public async Task<IActionResult> Salvar([FromBody] Vistorias vistoria)
        {
            _context.Vistorias.Add(vistoria);
            await _context.SaveChangesAsync();
            return Ok("✅ Vistoria salva com sucesso!");
        }

        // PUT /vistorias/{id}
        [HttpPut("{id}")]
        public async Task<IActionResult> Atualizar(Guid id, [FromBody] Vistorias vistoria)
        {
            var existente = await _context.Vistorias.FindAsync(id);
            if (existente == null) return NotFound("❌ Vistoria não encontrada.");

            _context.Entry(existente).CurrentValues.SetValues(vistoria);
            await _context.SaveChangesAsync();

            return Ok("✏️ Vistoria atualizada.");
        }

        // DELETE /vistorias/{id}
        [HttpDelete("{id}")]
        public async Task<IActionResult> Excluir(Guid id)
        {
            var vistoria = await _context.Vistorias.FindAsync(id);
            if (vistoria == null) return NotFound("❌ Vistoria não encontrada.");

            _context.Vistorias.Remove(vistoria);
            await _context.SaveChangesAsync();

            return Ok("🗑️ Vistoria excluída.");
        }
    }
}
