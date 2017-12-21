using System;
using System.ComponentModel.DataAnnotations;
using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

namespace evolumeMVC.Models
{
    public class Endereco
    {
        [BsonRepresentation(BsonType.ObjectId)]
        public String Id { get; set; }

        [Required]
        [Display(Name = "Logradouro")]
        public String Logradouro { get; set; }

        [Required]
        [Display(Name = "Numero")]
        public String Numero { get; set; }

        [Required]
        [Display(Name = "Bairro")]
        public String Bairro { get; set; }

        [Required]
        [Display(Name = "Cidade")]
        public Cidade Cidade { get; set; }

        [Required]
        [Display(Name = "Complemento")]
        public String Complemento { get; set; }
    }
}