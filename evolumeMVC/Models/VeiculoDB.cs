using MongoDB.Driver;
using System;
using System.Configuration;

namespace evolumeMVC.Models
{
    public class VeiculoDB
    {

        public IMongoDatabase Database;
        public String DataBaseName = "evolume";
        string conexaoMongoDB = "";


        public VeiculoDB()
        {
            conexaoMongoDB = ConfigurationManager.ConnectionStrings["conexaoMongoDB"].ConnectionString;
            MongoClient client = new MongoClient(conexaoMongoDB);
            Database = client.GetDatabase(DataBaseName);
        }

        public IMongoCollection<Veiculo> Veiculo
        {
            get
            {
                var Veiculo = Database.GetCollection<Veiculo>("Veiculo");
                return Veiculo;
            }
        }
    }


}