//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace pogym.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class attacks_charge
    {
        public int attack_id { get; set; }
        public int charge { get; set; }
        public decimal critical { get; set; }
        public decimal dodge { get; set; }
    
        public virtual attacks attacks { get; set; }
    }
}
