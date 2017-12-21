using System.Web.Mvc;
using evolumeMVC.Models;
using MongoDB.Bson;
using MongoDB.Driver;
using System.IO;
using System.Web;
using System;

namespace evolumeMVC.Controllers
{
    public class LocadorController : Controller
    {
        private readonly LocadorDB Context = new LocadorDB();


        // GET: Locador
        //public ActionResult Index()
        //{
        //    var Locador = Context.Locador.Find(new BsonDocument()).Sort("{Nome: 1}").ToEnumerable();
        //    return View(Locador);
            
        //}

        public ActionResult Index(string search)
        {
            if (search != null && search != "")
            {
                var filter = new BsonDocument { { "Nome", new BsonDocument { { "$regex", search }, { "$options", "i" } } } };
                var locador = Context.Locador.Find(filter).Sort("{Nome: 1}").ToEnumerable();
                return View(locador);
            }
            else
            {
                var Locador = Context.Locador.Find(new BsonDocument()).Sort("{Nome: 1}").ToEnumerable();
                return View(Locador);
            }

        }

        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(Locador _locador)
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
                        _locador.ImagemDocumento = path;
                        
                    }
                }
                Context.Locador.InsertOne(_locador);
                return RedirectToAction("Index");
            }
            return View();
        }
        
        public ActionResult Edit(string Id)
        {

            var locador = Context.Locador.Find(Locador => Locador.Id == Id).FirstOrDefault();

            return View(locador);
        }

        [HttpPost]
        public ActionResult Edit(Locador _locador)
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
                        _locador.ImagemDocumento = path;

                    }
                }

                Context.Locador.ReplaceOne(Locador => Locador.Id == _locador.Id, _locador);
                return RedirectToAction("Index");
            }
            return View();
        }

        [HttpGet]
        public ActionResult Delete(string Id)
        {

            var del = Context.Locador.Find(Locador => Locador.Id == Id).FirstOrDefault();

            return View(del);
        }

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(string Id)
        {

            var del = Context.Locador.DeleteOne(Locador => Locador.Id == Id);
            return RedirectToAction("Index");
        }

    }
}