using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FrotixTeste.Models
{
    [Table("Vistorias")]
    public class Vistorias
    {
        [Key]
        public Guid Id { get; set; }

        // Relacionamentos com outras entidades
        public Guid? PlacaID { get; set; }

        public Guid? MotoristaID { get; set; }


        public string? PontoID { get; set; }

        public string? PontoFinalID { get; set; } 

        public int? NumeroFicha { get; set; }
        public DateTime? DataHoraInicio { get; set; }
        public bool CRLV { get; set; }
        public bool CartaoAbastecimento { get; set; }
        public string NivelCombustivelInicial { get; set; } = "Cheio";
        public string NivelCombustivelFinal { get; set; } = "Cheio";
        public string? SetorSolicitante { get; set; }
        public string? Nome { get; set; }
        public string? Ramal { get; set; }
        public string? KM { get; set; }
        public string? DanoAvaria { get; set; }
        public string? Rubrica { get; set; }
        public DateTime? DataHoraFinal { get; set; }

        // Para Fotos e Vídeos, inicialize com listas vazias se forem strings vazias ou nulas
        public List<string> Fotos { get; set; } = new List<string>();
        public List<string> Videos { get; set; } = new List<string>();
    }
}
