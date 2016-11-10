using System;
using System.Collections.Generic;

namespace pogym.Models
{
    public partial class Pokemons
    {
        public Pokemons()
        {
            PokemonsAttacks = new HashSet<PokemonsAttacks>();
            PokemonsTypes = new HashSet<PokemonsTypes>();
        }

        public int PokemonId { get; set; }
        public int? EvolvefromPokemonId { get; set; }
        public string Name { get; set; }
        public string Icon { get; set; }
        public string Image { get; set; }
        public string Url { get; set; }
        public decimal HeightAvg { get; set; }
        public decimal WeightAvg { get; set; }
        public int CombatpowerMax { get; set; }
        public int AttackBase { get; set; }
        public int DefenseBase { get; set; }
        public int StaminaBase { get; set; }

        public virtual ICollection<PokemonsAttacks> PokemonsAttacks { get; set; }
        public virtual ICollection<PokemonsTypes> PokemonsTypes { get; set; }
        public virtual Pokemons EvolvefromPokemon { get; set; }
        public virtual ICollection<Pokemons> InverseEvolvefromPokemon { get; set; }
    }
}
