using System;
using System.ComponentModel.DataAnnotations;
using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

namespace evolumeMVC.Models
{
    public class Locador : Pessoa
    {
        [Required]
        [Display(Name = "Rating")]
        public String Rating { get; set; }
    }
}