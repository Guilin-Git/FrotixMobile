using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FrotixApi.Models
{
    [Table("Motorista")]
    public class MotoristaFields
    {
        [Key]
        public Guid MotoristaID { get; set; }

        public string Nome { get; set; } = string.Empty;
    }
}
