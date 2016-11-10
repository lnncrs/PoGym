using System;
using System.Collections.Generic;

namespace pogym.Models
{
    public partial class AttacksTypes
    {
        public AttacksTypes()
        {
            Attacks = new HashSet<Attacks>();
        }

        public int AttackTypeId { get; set; }
        public string Type { get; set; }

        public virtual ICollection<Attacks> Attacks { get; set; }
    }
}
