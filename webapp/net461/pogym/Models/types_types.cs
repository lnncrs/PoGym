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
    
    public partial class types_types
    {
        public int type_type_id { get; set; }
        public int attacker_type_id { get; set; }
        public int defender_type_id { get; set; }
        public decimal multiplier { get; set; }
    
        public virtual types types { get; set; }
        public virtual types types1 { get; set; }
    }
}
