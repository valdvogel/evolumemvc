using System.Web.Mvc;
using evolumeMVC.Models;
using MongoDB.Bson;
using MongoDB.Driver;
using System.IO;

namespace evolumeMVC.Controllers
{
    public class VeiculoController : Controller
    {
        private readonly VeiculoDB Context = new VeiculoDB();

        public ActionResult Index(string search)
        {
            if (search != null && search != "")
            {
                var filter = new BsonDocument { { "Nome", new BsonDocument { { "$regex", search }, { "$options", "i" } } } };
                var veiculo = Context.Veiculo.Find(filter).Sort("{Nome: 1}").ToEnumerable();
                return View(veiculo);
            }
            else
            {
                var veiculo = Context.Veiculo.Find(new BsonDocument()).Sort("{Nome: 1}").ToEnumerable();
                return View(veiculo);
            }

        }

        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(Veiculo _veiculo)
        {
            if (ModelState.IsValid)
            {

                Context.Veiculo.InsertOne(_veiculo);
                return RedirectToAction("Index");
            }
            return View();
        }

        public ActionResult Edit(string Id)
        {

            var locador = Context.Veiculo.Find(Veiculo => Veiculo.Id == Id).FirstOrDefault();

            return View(locador);
        }

        [HttpPost]
        public ActionResult Edit(Veiculo _veiculo)
        {
            if (ModelState.IsValid)
            {
                Context.Veiculo.ReplaceOne(Veiculo => Veiculo.Id == _veiculo.Id, _veiculo);
                return RedirectToAction("Index");
            }
            return View();
        }

        [HttpGet]
        public ActionResult Delete(string Id)
        {

            var del = Context.Veiculo.Find(Veiculo => Veiculo.Id == Id).FirstOrDefault();

            return View(del);
        }

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(string Id)
        {

            var del = Context.Veiculo.DeleteOne(Veiculo => Veiculo.Id == Id);
            return RedirectToAction("Index");
        }

    }
}