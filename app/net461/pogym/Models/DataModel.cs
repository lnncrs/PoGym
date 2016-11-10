using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace pogym.Models
{
    public class Type
    {
        [Key]
        public int ID { get; set; }
        public String Name { get; set; }
    }

    public class Attack
    {
        [Key]
        public int ID { get; set; }
        public String Name { get; set; }
        public Type Type { get; set; }
        public float Damage { get; set; }
        public float DamagePS { get; set; }
    }

    public class QuickAttack: Attack
    {

    }

    public class ChargeAttack : Attack
    {

    }

    public class Pokemon
    {
        public Pokemon()
        {
            GID = Guid.NewGuid();
        }

        [Key]
        public Guid GID { get; set; }
        public int ID { get; set; }
        public String Name { get; set; }
        public List<Type> Types { get; set; }
        public QuickAttack QuickAttack { get; set; }
        public ChargeAttack ChargeAttack { get; set; }

    }

    public class BattleCard
    {
        public List<Pokemon> FavPokes { get; set; }
        public List<Pokemon> GymPokes { get; set; }
    }
}
