using System;
using System.Collections.Generic;

namespace pogym.Models
{
    public partial class AttacksCharge
    {
        public int AttackId { get; set; }
        public int Charge { get; set; }
        public decimal Critical { get; set; }
        public decimal Dodge { get; set; }

        public virtual Attacks Attack { get; set; }
    }
}
