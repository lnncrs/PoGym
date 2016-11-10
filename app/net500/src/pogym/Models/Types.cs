using System;
using System.Collections.Generic;

namespace pogym.Models
{
    public partial class Types
    {
        public Types()
        {
            Attacks = new HashSet<Attacks>();
            PokemonsTypes = new HashSet<PokemonsTypes>();
            TypesTypesAttackerType = new HashSet<TypesTypes>();
            TypesTypesDefenderType = new HashSet<TypesTypes>();
        }

        public int TypeId { get; set; }
        public string Type { get; set; }

        public virtual ICollection<Attacks> Attacks { get; set; }
        public virtual ICollection<PokemonsTypes> PokemonsTypes { get; set; }
        public virtual ICollection<TypesTypes> TypesTypesAttackerType { get; set; }
        public virtual ICollection<TypesTypes> TypesTypesDefenderType { get; set; }
    }
}
