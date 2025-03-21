using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FrotixTeste.Models
{
    [Table("Ponto")]
    public class PontoFields
    {
        [Key]
        public string PontoID { get; set; } = string.Empty; // Inicializando como string vazia
        public string Descricao { get; set; } = string.Empty; // Inicializando como string vazia
    }

}
