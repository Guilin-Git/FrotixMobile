using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FrotixTeste.Models
{
    [Table("Motorista")]
    public class MotoristaFields
    {
        [Key]
        public Guid MotoristaID { get; set; } // Inicializando como string vazia
        public string Nome { get; set; } = string.Empty; // Inicializando como string vazia
    }

}
