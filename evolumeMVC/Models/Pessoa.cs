using System;
using System.ComponentModel.DataAnnotations;
using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;


namespace evolumeMVC.Models
{
    public class Pessoa
    {
        [BsonRepresentation(BsonType.ObjectId)]
        public String Id { get; set; }

        [Required]
        [Display(Name = "Nome")]
        public String Nome { get; set; }

        [Required]
        [Display(Name = "Telefone")]
        public String Telefone { get; set; }

        [Required]
        [Display(Name = "Endereco")]
        public String Endereco { get; set; }

        [Required]
        [Display(Name = "Email")]
        public String Email { get; set; }

        [Required]
        [Display(Name = "CPF")]
        public String CPF { get; set; }

        [Required]
        [DataType(DataType.Upload)]
        [Display(Name = "ImagemDocumento")]
        public String ImagemDocumento { get; set; }

    }
}