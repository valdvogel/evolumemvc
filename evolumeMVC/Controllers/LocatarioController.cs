using System.Web.Mvc;
using evolumeMVC.Models;
using MongoDB.Bson;
using MongoDB.Driver;
using System.IO;

namespace evolumeMVC.Controllers
{
    public class LocatarioController : Controller
    {
        private readonly LocatarioDB Context = new LocatarioDB();


        // GET: Locador
        //public ActionResult Index()
        //{
        //    var Locatario = Context.Lo  catario.Find(new BsonDocument()).Sort("{Nome: 1}").ToEnumerable();
        //    return View(Locatario);

        //}
        public ActionResult Index(string search)
        {
            if (search != null && search != "")
            {
                var filter = new BsonDocument { { "Nome", new BsonDocument { { "$regex", search }, { "$options", "i" } } } };
                var locador = Context.Locatario.Find(filter).Sort("{Nome: 1}").ToEnumerable();
                return View(locador);
            }
            else
            {
                var Locador = Context.Locatario.Find(new BsonDocument()).Sort("{Nome: 1}").ToEnumerable();
                return View(Locador);
            }

        }

        public ActionResult Details(string id)
        {
            return View();
        }
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(Locatario _locatario)
        {
            if (ModelState.IsValid)
            {

                if (Request.Files.Count > 0)
                {
                    var Inputfile = Request.Files[0];

                    if (Inputfile != null && Inputfile.ContentLength > 0)
                    {
                        var filename = Path.GetFileName(Inputfile.FileName);
                        var path = Path.Combine(Server.MapPath("../Imagens/Documentos/"), filename);
                        Inputfile.SaveAs(path);
                        _locatario.ImagemDocumento = path;

                    }
                }
                Context.Locatario.InsertOne(_locatario);
                return RedirectToAction("Index");
            }
            return View();
        }

        public ActionResult Edit(string Id)
        {

            var locatario = Context.Locatario.Find(Locatario => Locatario.Id == Id).FirstOrDefault();

            return View(locatario);
        }

        [HttpPost]
        public ActionResult Edit(Locatario _locatario)
        {
            if (ModelState.IsValid)
            {

                if (Request.Files.Count > 0)
                {
                    var Inputfile = Request.Files[0];

                    if (Inputfile != null && Inputfile.ContentLength > 0)
                    {
                        var filename = Path.GetFileName(Inputfile.FileName);
                        var path = Path.Combine(Server.MapPath("../../Imagens/Documentos/"), filename);
                        Inputfile.SaveAs(path);
                        _locatario.ImagemDocumento = path;

                    }
                }

                Context.Locatario.ReplaceOne(Locatario => Locatario.Id == _locatario.Id, _locatario);
                return RedirectToAction("Index");
            }
            return View();
        }

        [HttpGet]
        public ActionResult Delete(string Id)
        {

            var del = Context.Locatario.Find(Locatario => Locatario.Id == Id).FirstOrDefault();

            return View(del);
        }

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(string Id)
        {

            var del = Context.Locatario.DeleteOne(Locatario => Locatario.Id == Id);
            return RedirectToAction("Index");
        }

    }
}