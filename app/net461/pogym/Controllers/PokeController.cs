using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using pogym.Models;
using Newtonsoft.Json;

namespace pogym.Controllers
{
    public class PokeController : Controller
    {
        private pogymEntities db = new pogymEntities();

        // GET: Home
        public ActionResult Index()
        {
            BattleCard bc = new BattleCard();

            if (TempData["BattleCard"] != null)
            {
                bc = (BattleCard)TempData["BattleCard"];
            }
            else
            {
                //get cookie
                if (Request.Cookies["BattleCard"] != null)
                {
                    List<CookieBattleCard> cl = JsonConvert.DeserializeObject<List<CookieBattleCard>>(Request.Cookies["BattleCard"].Value);

                    foreach (var item in cl)
                    {
                        Pokemon p = new Pokemon();
                        p.Poke = db.pokemons.Find(item.Po);
                        p.QuickAttack = db.attacks.Find(item.Qa);
                        p.ChargeAttack = db.attacks.Find(item.Ca);

                        bc.FavPokes.Add(p);
                    }
                }
            }

            TempData["BattleCard"] = bc;
            return View(bc);
        }

        public ActionResult Battle()
        {
            return View();
        }

        public ActionResult Create(int? at)
        {
            SelectList po = new SelectList(db.pokemons.OrderBy(x => x.name), "pokemon_id", "name");
            //po.Where(x => x.Value == "1").First().Selected = true;
            //selected.Selected = true;
            ViewBag.PokemonID = po;

            IQueryable<attacks> q = (from p in db.pokemons
                                     join t in db.pokemons_attacks on p.pokemon_id equals t.pokemon_id
                                     join a in db.attacks on t.attack_id equals a.attack_id
                                     where p.pokemon_id == 63
                                     orderby a.name
                                     select a);
            ViewBag.QuickAttackID = new SelectList(q.Where(x => x.attack_type_id == 1).OrderBy(x => x.name), "attack_id", "name");
            ViewBag.ChargeAttackID = new SelectList(q.Where(x => x.attack_type_id == 2).OrderBy(x => x.name), "attack_id", "name");

            CreatePokemonViewModel v = new CreatePokemonViewModel();
            v.PokemonID = 63;
            v.SourceForm = (at != null)? (int)at : 1;

            return View(v);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "PokemonID, QuickAttackID, ChargeAttackID, SourceForm")] CreatePokemonViewModel Pokemon)
        {
            if (ModelState.IsValid)
            {
                BattleCard bc = new BattleCard();

                if (TempData["BattleCard"] != null)
                {
                    bc = (BattleCard)TempData["BattleCard"];
                }

                Pokemon p = new Pokemon();
                p.Poke = db.pokemons.Find(Pokemon.PokemonID);
                p.QuickAttack = db.attacks.Find(Pokemon.QuickAttackID);
                p.ChargeAttack = db.attacks.Find(Pokemon.ChargeAttackID);

                if (Pokemon.SourceForm == 1)
                {
                    bc.FavPokes.Add(p);
                }
                else
                {
                    bc.GymPokes.Add(p);
                }

                TempData["BattleCard"] = bc;
                return RedirectToAction("ListPokemon", new { at = Pokemon.SourceForm });
            }

            SelectList po = new SelectList(db.pokemons.OrderBy(x => x.name), "pokemon_id", "name");
            //po.Where(x => x.Value == "1").First().Selected = true;
            //selected.Selected = true;
            ViewBag.PokemonID = po;

            IQueryable<attacks> q = (from p in db.pokemons
                                     join t in db.pokemons_attacks on p.pokemon_id equals t.pokemon_id
                                     join a in db.attacks on t.attack_id equals a.attack_id
                                     where p.pokemon_id == Pokemon.PokemonID
                                     orderby a.name
                                     select a);
            ViewBag.QuickAttackID = new SelectList(q.Where(x => x.attack_type_id == 1).OrderBy(x => x.name), "attack_id", "name");
            ViewBag.ChargeAttackID = new SelectList(q.Where(x => x.attack_type_id == 2).OrderBy(x => x.name), "attack_id", "name");

            CreatePokemonViewModel v = new CreatePokemonViewModel();
            v.PokemonID = Pokemon.PokemonID;
            v.SourceForm = Pokemon.SourceForm;
            v.QuickAttackID = Pokemon.QuickAttackID;
            v.ChargeAttackID = Pokemon.ChargeAttackID;

            return View(v);
        }

        public ActionResult Delete(Guid guid, int? at)
        {
            if(guid == null || at == null)
            {
                return RedirectToAction("ListPokemon", new { at = 1 });
            }

            if(TempData["BattleCard"] == null)
            {
                return RedirectToAction("Index");
            }

            BattleCard bc = (BattleCard)TempData["BattleCard"];

            if((int)at == 1)
            {
                Pokemon p = bc.FavPokes.Find(x => x.PokeGUID == guid);
                bc.FavPokes.Remove(p);
            }
            else
            {
                Pokemon p = bc.GymPokes.Find(x => x.PokeGUID == guid);
                bc.GymPokes.Remove(p);
            }

            TempData["BattleCard"] = bc;
            return RedirectToAction("ListPokemon", new { at = at });
        }

        public ActionResult ListPokemon(int? at)
        {
            BattleCard bc = new BattleCard();

            if (TempData["BattleCard"] != null)
            {
                bc = (BattleCard)TempData["BattleCard"];

                if (at != null && (int)at == 1)
                {
                    //save cookie
                    List<CookieBattleCard> cl = new List<CookieBattleCard>();

                    foreach (var item in bc.FavPokes)
                    {
                        CookieBattleCard co = new CookieBattleCard();
                        co.Po = item.Poke.pokemon_id;
                        co.Qa = item.QuickAttack.attack_id;
                        co.Ca = item.ChargeAttack.attack_id;
                        cl.Add(co);
                    }

                    string value = JsonConvert.SerializeObject(cl);
                    var cookie = new HttpCookie("BattleCard", value);
                    Response.SetCookie(cookie);
                }
            }

            TempData["BattleCard"] = bc;

            if(at == null || at == 1)
            {
                ViewBag.Title = "Favorite Pokemons";
                ViewBag.a = "1";
                return View(bc.FavPokes.AsEnumerable());
            }
            else
            {
                ViewBag.Title = "Pokemons at Gym";
                ViewBag.a = "2";
                return View(bc.GymPokes.AsEnumerable());
            }
        }

        public JsonResult JsonQuickAttacks(int? id, int? at)
        {
            IQueryable<attacks> q = (from p in db.pokemons
                                     join t in db.pokemons_attacks on p.pokemon_id equals t.pokemon_id
                                     join a in db.attacks on t.attack_id equals a.attack_id
                                     where p.pokemon_id == (int)id && a.attack_type_id == (int)at
                                     orderby a.name
                                     select a);

            List<SelectListItem> l = (from e in q
                                      select new SelectListItem() { Text = e.name, Value = e.attack_id.ToString() }).ToList();

            return Json(new SelectList(l, "Value", "Text"));
        }
    }
}