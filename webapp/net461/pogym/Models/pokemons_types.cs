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
    
    public partial class pokemons_types
    {
        public int pokemon_type_id { get; set; }
        public int pokemon_id { get; set; }
        public int type_id { get; set; }
    
        public virtual pokemons pokemons { get; set; }
        public virtual types types { get; set; }
    }
}
