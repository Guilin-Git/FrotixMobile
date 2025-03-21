using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FrotixTeste.Models
{
    [Table("Veiculo")]
    public class PlacaFields
    {
        [Key]
        public Guid VeiculoId { get; set; } // Inicializando como string vazia
        public string Placa { get; set; } = string.Empty; // Inicializando como string vazia
    }

}
