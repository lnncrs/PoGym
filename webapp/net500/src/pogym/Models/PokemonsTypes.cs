using System;
using System.Collections.Generic;

namespace pogym.Models
{
    public partial class PokemonsTypes
    {
        public int PokemonTypeId { get; set; }
        public int PokemonId { get; set; }
        public int TypeId { get; set; }

        public virtual Pokemons Pokemon { get; set; }
        public virtual Types Type { get; set; }
    }
}
