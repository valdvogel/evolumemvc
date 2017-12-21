using System;
using System.ComponentModel.DataAnnotations;
using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

namespace evolumeMVC.Models
{
    public class Locatario : Pessoa
    {
        [Required]
        [Display(Name = "Rating")]
        public String Rating { get; set; }

        [Required]
        [Display(Name = "OptinLocacao")]
        public String optinLocacao { get; set; }
    }
}