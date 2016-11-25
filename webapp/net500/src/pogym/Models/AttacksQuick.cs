using System;
using System.Collections.Generic;

namespace pogym.Models
{
    public partial class AttacksQuick
    {
        public int AttackId { get; set; }
        public decimal Energyps { get; set; }
        public decimal Energypu { get; set; }
        public decimal DefensiveDamageps { get; set; }

        public virtual Attacks Attack { get; set; }
    }
}
