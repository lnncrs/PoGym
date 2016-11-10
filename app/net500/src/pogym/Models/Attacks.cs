using System;
using System.Collections.Generic;

namespace pogym.Models
{
    public partial class Attacks
    {
        public Attacks()
        {
            PokemonsAttacks = new HashSet<PokemonsAttacks>();
        }

        public int AttackId { get; set; }
        public int AttackTypeId { get; set; }
        public string Name { get; set; }
        public int TypeId { get; set; }
        public decimal Damage { get; set; }
        public decimal? DamageStab { get; set; }
        public decimal Damageps { get; set; }
        public decimal? DamagepsStab { get; set; }
        public decimal MoveCooldown { get; set; }

        public virtual AttacksCharge AttacksCharge { get; set; }
        public virtual AttacksQuick AttacksQuick { get; set; }
        public virtual ICollection<PokemonsAttacks> PokemonsAttacks { get; set; }
        public virtual AttacksTypes AttackType { get; set; }
        public virtual Types Type { get; set; }
    }
}
