﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class pogymEntities : DbContext
    {
        public pogymEntities()
            : base("name=pogymEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<attacks> attacks { get; set; }
        public virtual DbSet<attacks_charge> attacks_charge { get; set; }
        public virtual DbSet<attacks_quick> attacks_quick { get; set; }
        public virtual DbSet<attacks_types> attacks_types { get; set; }
        public virtual DbSet<pokemons> pokemons { get; set; }
        public virtual DbSet<pokemons_attacks> pokemons_attacks { get; set; }
        public virtual DbSet<pokemons_types> pokemons_types { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<types> types { get; set; }
        public virtual DbSet<types_types> types_types { get; set; }
    
        public virtual int sp_stab(Nullable<int> pokemon_id, Nullable<int> attack_id, ObjectParameter stab)
        {
            var pokemon_idParameter = pokemon_id.HasValue ?
                new ObjectParameter("pokemon_id", pokemon_id) :
                new ObjectParameter("pokemon_id", typeof(int));
    
            var attack_idParameter = attack_id.HasValue ?
                new ObjectParameter("attack_id", attack_id) :
                new ObjectParameter("attack_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_stab", pokemon_idParameter, attack_idParameter, stab);
        }
    
        public virtual ObjectResult<sp_battle_Result> sp_battle(Nullable<int> type1, Nullable<int> type2)
        {
            var type1Parameter = type1.HasValue ?
                new ObjectParameter("type1", type1) :
                new ObjectParameter("type1", typeof(int));
    
            var type2Parameter = type2.HasValue ?
                new ObjectParameter("type2", type2) :
                new ObjectParameter("type2", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_battle_Result>("sp_battle", type1Parameter, type2Parameter);
        }
    }
}
