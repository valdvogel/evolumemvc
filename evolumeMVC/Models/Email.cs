using System;
using System.ComponentModel.DataAnnotations;
using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

namespace evolumeMVC.Models
{
    public class Email
    {
        [BsonRepresentation(BsonType.ObjectId)]
        public String Id { get; set; }

        [Required]
        [Display(Name = "Descricao")]
        public String Descricao { get; set; }

        [Required]
        [Display(Name = "Tipo")]
        public String Tipo { get; set; }
    }
}