using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FrotixApi.Models
{
    [Table("Vistorias")]
    public class Vistorias
    {
        [Key]
        public Guid Id { get; set; }

        public Guid? PlacaID { get; set; }
        public Guid? MotoristaID { get; set; }
        public string? PontoID { get; set; }
        public string? PontoFinalID { get; set; }

        public int? NumeroFicha { get; set; }
        public DateTime? DataHoraInicio { get; set; }
        public DateTime? DataHoraFinal { get; set; }

        public bool CRLV { get; set; }
        public bool CartaoAbastecimento { get; set; }

        public string NivelCombustivelInicial { get; set; } = "Cheio";
        public string NivelCombustivelFinal { get; set; } = "Cheio";

        public string SetorSolicitante { get; set; } = string.Empty;
        public string Nome { get; set; } = string.Empty;
        public string Ramal { get; set; } = string.Empty;
        public string Rubrica { get; set; } = string.Empty;
        public string DanoAvaria { get; set; } = string.Empty;
        public string KM { get; set; } = string.Empty;

        public List<string> Fotos { get; set; } = new List<string>();
        public List<string> Videos { get; set; } = new List<string>();
    }
}
