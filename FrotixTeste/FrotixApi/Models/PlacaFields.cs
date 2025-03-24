using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FrotixApi.Models
{
    [Table("Veiculo")]
    public class PlacaFields
    {
        [Key]
        public Guid VeiculoId { get; set; }

        public string Placa { get; set; } = string.Empty;
    }
}
