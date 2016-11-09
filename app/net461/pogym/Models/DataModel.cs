using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace pogym.Models
{
    public class Pokemon
    {
        [Key]
        public int Number { get; set; }
        public String Name { get; set; }
    }

    public class BattleCard
    {
        List<Pokemon> FavPokes;
    }

}
