using MongoDB.Driver;
using System;
using System.Configuration;


namespace evolumeMVC.Models
{
    public class AcessorioDB
    {
        public IMongoDatabase Database;
        public String DataBaseName = "evolume";
        string conexaoMongoDB = "";


        public AcessorioDB()
        {
            conexaoMongoDB = ConfigurationManager.ConnectionStrings["conexaoMongoDB"].ConnectionString;
            MongoClient client = new MongoClient(conexaoMongoDB);
            Database = client.GetDatabase(DataBaseName);
        }

        public IMongoCollection<Acessorio> Acessorio
        {
            get
            {
                var Acessorio = Database.GetCollection<Acessorio>("Acessorio");
                return Acessorio;
            }
        }
    }


}