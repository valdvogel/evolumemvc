using System;
using System.ComponentModel.DataAnnotations;
using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

namespace evolumeMVC.Models
{
    public class Cidade
    {
        [BsonRepresentation(BsonType.ObjectId)]
        public String Id { get; set; }

        [Required]
        [Display(Name = "Descricao")]
        public String Descricao { get; set; }

        [Required]
        [Display(Name = "Pais")]
        public Pais Pais { get; set; }
    }
}