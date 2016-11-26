using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Core.Objects;

namespace pogym.Models
{
    /*
    public class Type
    {
        [Key]
        public int TypeID { get; set; }
        public String Name { get; set; }
    }

    public class Attack
    {
        [Key]
        public int AttackID { get; set; }
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
            PokemonGUID = Guid.NewGuid();
        }

        [Key]
        public Guid PokemonGUID { get; set; }
        public int PokemonID { get; set; }
        public String Name { get; set; }
        public List<Type> Types { get; set; }
        public QuickAttack QuickAttack { get; set; }
        public ChargeAttack ChargeAttack { get; set; }
    }
    */

    public class CookieBattleCard
    {
        public int Po { get; set; }
        public int Qa { get; set; }
        public int Ca { get; set; }
    }

    public class CreatePokemonViewModel
    {
        [Required]
        [Display(Name = "Pokemon")]
        public int PokemonID { get; set; }

        [Display(Name = "Quick Attack")]
        public int QuickAttackID { get; set; }

        [Display(Name = "Charge Attack")]
        public int ChargeAttackID { get; set; }

        [System.Web.Mvc.HiddenInput(DisplayValue = false)]
        public int SourceForm { get; set; }
    }

    public class Pokemon
    {
        public Pokemon()
        {
            PokeGUID = Guid.NewGuid();
        }

        [Key]
        public Guid PokeGUID { get; set; }
        public pokemons Poke { get; set; }

        public bool Used { get; set; }
        public int Match { get; set; }

        private attacks quick;
        public attacks QuickAttack
        {
            get
            {
                return quick;
            }
            set
            {
                quick = value;

                pogymEntities p = new pogymEntities();
                if (Poke != null && quick != null)
                {
                    ObjectParameter stab = new ObjectParameter("stab", typeof(int));
                    p.sp_stab(Poke.pokemon_id, quick.attack_id, stab);
                    QuickAttackSTAB = (int)stab.Value;

                    if (QuickAttackSTAB == 1)
                    {
                        QuickAttackDamage = decimal.Round((decimal)quick.damage_stab, 2, MidpointRounding.AwayFromZero);
                        QuickAttackDPS = decimal.Round((decimal)quick.damageps_stab, 2, MidpointRounding.AwayFromZero);
                    }
                    else
                    {
                        QuickAttackDamage = quick.damage;
                        QuickAttackDPS = quick.damageps;
                    }
                }
                else
                {
                    QuickAttackSTAB = 0;
                    QuickAttackDamage = 0;
                    QuickAttackDPS = 0;
                }
            }
        }
        public int QuickAttackSTAB { get; set; }
        public decimal? QuickAttackDamage { get; set; }
        public decimal? QuickAttackDPS { get; set; }

        private attacks charge;
        public attacks ChargeAttack
        {
            get
            {
                return charge;
            }
            set
            {
                charge = value;

                pogymEntities p = new pogymEntities();
                if (Poke != null && charge != null)
                {
                    ObjectParameter stab = new ObjectParameter("stab", typeof(int));
                    p.sp_stab(Poke.pokemon_id, charge.attack_id, stab);
                    ChargeAttackSTAB = (int)stab.Value;

                    if (ChargeAttackSTAB == 1)
                    {
                        ChargeAttackDamage = decimal.Round((decimal)charge.damage_stab, 2, MidpointRounding.AwayFromZero);
                        ChargeAttackDPS = decimal.Round((decimal)charge.damageps_stab, 2, MidpointRounding.AwayFromZero);                        
                    }
                    else
                    {
                        ChargeAttackDamage = charge.damage;
                        ChargeAttackDPS = charge.damageps;
                    }
                }
                else
                {
                    ChargeAttackSTAB = 0;
                    ChargeAttackDamage = 0;
                    ChargeAttackDPS = 0;
                }
            }
        }
        public int ChargeAttackSTAB { get; set; }
        public decimal? ChargeAttackDamage { get; set; }
        public decimal? ChargeAttackDPS { get; set; }
    }

    public class BattleCard
    {
        public BattleCard()
        {
            FavPokes = new List<Pokemon>();
            GymPokes = new List<Pokemon>();
            AtkPokes = new List<Tuple<Pokemon,Pokemon, double?>>();
        }

        public void Reset()
        {
            foreach (var item in this.FavPokes)
            {
                item.Used = false;
                item.Match = 0;
            }

            foreach (var item in this.GymPokes)
            {
                item.Used = false;
                item.Match = 0;
            }

            this.AtkPokes.Clear();
        }

        public List<Pokemon> FavPokes { get; set; }
        public List<Pokemon> GymPokes { get; set; }
        public List<Tuple<Pokemon,Pokemon,double?>> AtkPokes { get; set; }
    }

    [MetadataType(typeof(pokemonsMetaData))]
    public partial class pokemons
    {
    }

    public class pokemonsMetaData
    {
        [Display(Name = "Pokemon")]
        public string name;

        [Display(Name = "Height")]
        public decimal height_avg;

        [Display(Name = "Weight")]
        public decimal weight_avg;

        [Display(Name = "Max CP")]
        public int combatpower_max;

        [Display(Name = "Attack")]
        public int attack_base;

        [Display(Name = "Defense")]
        public int defense_base;

        [Display(Name = "Stamina")]
        public int stamina_base;
    }

    public partial class pokemons
    {
        public string iconUrl
        {
            get
            {
                return String.Format("https://pokemongo.gamepress.gg{0}", this.icon);
            }
        }

        public string urlUrl
        {
            get
            {
                return String.Format("https://pokemongo.gamepress.gg{0}", this.url);
            }
        }

        public string imageUrl
        {
            get
            {
                return String.Format("https://pokemongo.gamepress.gg{0}", this.image);
            }
        }
    }

    public partial class types
    {
        public string iconUrl
        {
            get
            {
                return String.Format("https://pokemongo.gamepress.gg{0}", this.icon);
            }
        }
    }
}