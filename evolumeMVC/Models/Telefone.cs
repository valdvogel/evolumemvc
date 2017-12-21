using System;
using System.ComponentModel.DataAnnotations;
using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

namespace evolumeMVC.Models
{
    public class Telefone
    {
        [BsonRepresentation(BsonType.ObjectId)]
        public String Id { get; set; }

        [Required]
        [Display(Name = "Numero")]
        public String Numero { get; set; }

        [Required]
        [Display(Name = "Tipo")]
        public String Tipo { get; set; }
    }
}