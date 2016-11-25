using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using pogym.Models;

namespace pogym.Controllers
{
    public class pokemonsController : Controller
    {
        private pogymEntities db = new pogymEntities();

        // GET: pokemons
        public ActionResult Index()
        {
            var pokemons = db.pokemons.Include(p => p.pokemons2);
            return View(pokemons.ToList());
        }

        // GET: pokemons/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            pokemons pokemons = db.pokemons.Find(id);
            if (pokemons == null)
            {
                return HttpNotFound();
            }
            return View(pokemons);
        }

        // GET: pokemons/Create
        public ActionResult Create()
        {
            ViewBag.evolvefrom_pokemon_id = new SelectList(db.pokemons, "pokemon_id", "name");
            return View();
        }

        // POST: pokemons/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "pokemon_id,evolvefrom_pokemon_id,name,icon,image,url,height_avg,weight_avg,combatpower_max,attack_base,defense_base,stamina_base")] pokemons pokemons)
        {
            if (ModelState.IsValid)
            {
                db.pokemons.Add(pokemons);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.evolvefrom_pokemon_id = new SelectList(db.pokemons, "pokemon_id", "name", pokemons.evolvefrom_pokemon_id);
            return View(pokemons);
        }

        // GET: pokemons/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            pokemons pokemons = db.pokemons.Find(id);
            if (pokemons == null)
            {
                return HttpNotFound();
            }
            ViewBag.evolvefrom_pokemon_id = new SelectList(db.pokemons, "pokemon_id", "name", pokemons.evolvefrom_pokemon_id);
            return View(pokemons);
        }

        // POST: pokemons/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "pokemon_id,evolvefrom_pokemon_id,name,icon,image,url,height_avg,weight_avg,combatpower_max,attack_base,defense_base,stamina_base")] pokemons pokemons)
        {
            if (ModelState.IsValid)
            {
                db.Entry(pokemons).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.evolvefrom_pokemon_id = new SelectList(db.pokemons, "pokemon_id", "name", pokemons.evolvefrom_pokemon_id);
            return View(pokemons);
        }

        // GET: pokemons/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            pokemons pokemons = db.pokemons.Find(id);
            if (pokemons == null)
            {
                return HttpNotFound();
            }
            return View(pokemons);
        }

        // POST: pokemons/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            pokemons pokemons = db.pokemons.Find(id);
            db.pokemons.Remove(pokemons);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
