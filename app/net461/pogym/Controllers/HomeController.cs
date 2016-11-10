using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using pogym.Models;

namespace pogym.Controllers
{
    public class HomeController : Controller
    {
        private pogymEntities db = new pogymEntities();

        // GET: Home
        public ActionResult Index()
        {
            ViewBag.polist = new SelectList(db.pokemons, "pokemon_id", "name");

            if (TempData["BattleCard"] != null)
            {
                return View(TempData["BattleCard"]);
            }
            else
            {
                return View(new BattleCard());
            }
        }

        public ActionResult Battle()
        {
            return View();
        }

        public ActionResult Create()
        {
            return View();
        }

        public ActionResult FavPokemon()
        {
            List<Pokemon> polist = new List<Pokemon>();

            Pokemon po = new Pokemon();
            po.ID = 1;
            po.Name = "Bulbassaur";

            polist.Add(po);

            return View(polist.AsEnumerable());
        }

        /*
        [HttpPost]
        public ActionResult NewFav(SearchCostPage searchModel, string Command)
        {
            SessionHelper.ProjectCase = searchModel.ProjectCaseNumber;

            if (string.Equals(Command, Constants.SearchPage.ExportToExcel))
            {

            }
        }
        */
    }
}