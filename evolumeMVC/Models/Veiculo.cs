using System;
using System.ComponentModel.DataAnnotations;
using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

namespace evolumeMVC.Models
{
    public class Veiculo
    {
        [BsonRepresentation(BsonType.ObjectId)]
        public String Id { get; set; }

        [Required]
        [Display(Name = "Marca")]
        public String Marca { get; set; }

        [Required]
        [Display(Name = "Ano")]
        public String Ano { get; set; }

        [Required]
        [Display(Name = "Modelo")]
        public String Modelo { get; set; }
    }
}