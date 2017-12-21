using MongoDB.Driver;
using System;
using System.Configuration;

namespace evolumeMVC.Models
{
    public class LocatarioDB
    {
        public IMongoDatabase Database;
        public String DataBaseName = "evolume";
        string conexaoMongoDB = "";


        public LocatarioDB()
        {
            conexaoMongoDB = ConfigurationManager.ConnectionStrings["conexaoMongoDB"].ConnectionString;
            MongoClient client = new MongoClient(conexaoMongoDB);
            Database = client.GetDatabase(DataBaseName);
        }

        public IMongoCollection<Locatario> Locatario
        {
            get
            {
                var Locatarios = Database.GetCollection<Locatario>("Locatario");
                return Locatarios;
            }
        }
    }


}