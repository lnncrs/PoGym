using System;
using System.Collections.Generic;

namespace pogym.Models
{
    public partial class TypesTypes
    {
        public int TypeTypeId { get; set; }
        public int AttackerTypeId { get; set; }
        public int DefenderTypeId { get; set; }
        public decimal Multiplier { get; set; }

        public virtual Types AttackerType { get; set; }
        public virtual Types DefenderType { get; set; }
    }
}
