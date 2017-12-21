using System.Web.Mvc;
using evolumeMVC.Models;
using MongoDB.Bson;
using MongoDB.Driver;
using System.IO;
using System.Collections.Generic;

namespace evolumeMVC.Controllers
{
    public class AcessorioController : Controller
    {
        private readonly AcessorioDB Context = new AcessorioDB();
        private readonly VeiculoDB ContextVeiculo = new VeiculoDB();

        public ActionResult Index(string search)
        {
            if (search != null && search != "")
            {
                var filter = new BsonDocument { { "Descricao", new BsonDocument { { "$regex", search }, { "$options", "i" } } } };
                var acessorio = Context.Acessorio.Find(filter).Sort("{Descricao: 1}").ToEnumerable();
                return View(acessorio);
            }
            else
            {
                var acessorio = Context.Acessorio.Find(new BsonDocument()).Sort("{Descricao: 1}").ToEnumerable();
                return View(acessorio);
            }

        }

        public ActionResult Create()
        {

            //var veiculo = ContextVeiculo.Veiculo.Find(new BsonDocument()).Sort("{Nome: 1}").ToEnumerable();

           // var a = new Acessorio();

            //a.Veiculo = veiculo;


            //List<SelectListItem> ObjItem = new List<SelectListItem>();

           // a.Veiculo = new List<Veiculo>();
            
            /*
            foreach (Veiculo v in veiculo)
            {
                //a.Veiculo.Add(v);

                ObjItem.Add(new SelectListItem { Text =v.Modelo , Value = v.Id});
            }
            */
            


            //  List<SelectListItem> ObjItem = new List<SelectListItem>()
            //  {
            //new SelectListItem {Text="Select",Value="0",Selected=true },
            //new SelectListItem {Text="ASP.NET",Value="1" },
            //new SelectListItem {Text="C#",Value="2"},
            //new SelectListItem {Text="MVC",Value="3"},
            //new SelectListItem {Text="SQL",Value="4" },
            //  };

            //ViewBag.ListItem = ObjItem;
            return View();
        }

        [HttpPost]
        public ActionResult Create(Acessorio _acessorio)
        {
            if (ModelState.IsValid)
            {

                Context.Acessorio.InsertOne(_acessorio);
                return RedirectToAction("Index");
            }
            return View();
        }

        public ActionResult Edit(string Id)
        {

            var acessorio = Context.Acessorio.Find(Acessorio => Acessorio.Id == Id).FirstOrDefault();

            return View(acessorio);
        }

        [HttpPost]
        public ActionResult Edit(Acessorio _acessorio)
        {
            if (ModelState.IsValid)
            {
                Context.Acessorio.ReplaceOne(Acessorio => Acessorio.Id == _acessorio.Id, _acessorio);
                return RedirectToAction("Index");
            }
            return View();
        }

        [HttpGet]
        public ActionResult Delete(string Id)
        {

            var del = Context.Acessorio.Find(Acessorio => Acessorio.Id == Id).FirstOrDefault();

            return View(del);
        }

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(string Id)
        {

            var del = Context.Acessorio.DeleteOne(Acessorio => Acessorio.Id == Id);
            return RedirectToAction("Index");
        }

    }
}