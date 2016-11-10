using System;
using System.Collections.Generic;

namespace pogym.Models
{
    public partial class PokemonsAttacks
    {
        public int PokemonAttackId { get; set; }
        public int PokemonId { get; set; }
        public int AttackId { get; set; }
        public decimal? TrueDamageps { get; set; }

        public virtual Attacks Attack { get; set; }
        public virtual Pokemons Pokemon { get; set; }
    }
}
