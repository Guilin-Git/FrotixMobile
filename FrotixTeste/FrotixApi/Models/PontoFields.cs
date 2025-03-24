using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FrotixApi.Models
{
    [Table("Ponto")]
    public class PontoFields
    {
        [Key]
        public string PontoID { get; set; } = string.Empty;

        public string Descricao { get; set; } = string.Empty;
    }
}
