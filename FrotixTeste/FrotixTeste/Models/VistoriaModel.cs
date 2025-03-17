using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FrotixTeste.Models
{
    public class Vistorias
    {
            public string Id { get; set; } = Guid.NewGuid().ToString();
            public string? PlacaID { get; set; }
            public string? MotoristaID { get; set; }
            public string? PontoID { get; set; } // 🔹 Ponto da Vistoria Inicial
            public string? PontoFinalID { get; set; } // 🔹 Ponto da Vistoria Final
            public int? NumeroFicha { get; set; }
            public DateTime? DataHoraInicio { get; set; }
            public bool CRLV { get; set; }
            public bool CartaoAbastecimento { get; set; }

            // 🔹 Definir um valor padrão para evitar nulos
            public string NivelCombustivelInicial { get; set; } = "Cheio";
            public string NivelCombustivelFinal { get; set; } = "Cheio";

            public string? SetorSolicitante { get; set; }
            public string? Nome { get; set; }
            public string? Ramal { get; set; }
            public string? KM { get; set; }
            public string? DanoAvaria { get; set; }
            public string? Rubrica { get; set; }

            public DateTime? DataHoraFinal { get; set; }


            public List<string> Fotos { get; set; } = new();
            public List<string> Videos { get; set; } = new();
        }
    }
