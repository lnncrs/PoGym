using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using pogym.Models;

namespace pogym.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            using (var db = new pogymContext())
            {
                var po = db.Pokemons
                    .Where(b => b.AttackBase > 3)
                    .OrderBy(b => b.Name)
                    .ToList();
            }

            return View();
        }

        public IActionResult About()
        {
            ViewData["Message"] = "Your application description page.";

            return View();
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Error()
        {
            return View();
        }
    }
}
