using MongoDB.Driver;
using System;
using System.Configuration;

namespace evolumeMVC.Models
{
    public class LocadorDB
    {
        public IMongoDatabase Database;
        public String DataBaseName = "evolume";
        string conexaoMongoDB = "";


        public LocadorDB()
        {
            conexaoMongoDB = ConfigurationManager.ConnectionStrings["conexaoMongoDB"].ConnectionString;
            MongoClient client = new MongoClient(conexaoMongoDB);
            Database = client.GetDatabase(DataBaseName);
        }

        public IMongoCollection<Locador> Locador
        {
            get
            {
                var Locadores = Database.GetCollection<Locador>("Locadores");
                return Locadores;
            }
        }
    }

    
}