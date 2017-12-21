using System;
using System.ComponentModel.DataAnnotations;
using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using System.Collections.Generic;

namespace evolumeMVC.Models
{
    public class Acessorio
    {

        [BsonRepresentation(BsonType.ObjectId)]
        public String Id { get; set; }

        [Required]
        [Display(Name = "Veiculo")]
        public String Veiculo { get; set; }

        [Required]
        [Display(Name = "Descricao")]
        public String Descricao { get; set; }

        [Required]
        [Display(Name = "Observacao")]
        public String Observacao { get; set; }

        [Required]
        [Display(Name = "Largura")]
        public String Largura { get; set; }

        [Required]
        [Display(Name = "Altura")]
        public String Altura { get; set; }

        [Required]
        [Display(Name = "Cumprimento")]
        public String Cumprimento { get; set; }

        [Required]
        [Display(Name = "Cor")]
        public String Cor { get; set; }

        [Required]
        [Display(Name = "Capacidade")]
        public String Capacidade { get; set; }

        [Required]
        [Display(Name = "Local")]
        public String Local { get; set; }

        [Required]
        [Display(Name = "Imagem")]
        public String Imagem { get; set; }
    }
}