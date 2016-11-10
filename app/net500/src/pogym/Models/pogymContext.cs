using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace pogym.Models
{
    public partial class pogymContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            #warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
            optionsBuilder.UseSqlServer(@"Server=.\sql3;Database=pogym;Trusted_Connection=True;");
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Attacks>(entity =>
            {
                entity.HasKey(e => e.AttackId)
                    .HasName("PK_attacks");

                entity.ToTable("attacks");

                entity.Property(e => e.AttackId)
                    .HasColumnName("attack_id")
                    .ValueGeneratedNever();

                entity.Property(e => e.AttackTypeId).HasColumnName("attack_type_id");

                entity.Property(e => e.Damage)
                    .HasColumnName("damage")
                    .HasColumnType("decimal");

                entity.Property(e => e.DamageStab)
                    .HasColumnName("damage_stab")
                    .HasColumnType("numeric")
                    .HasComputedColumnSql("[damage]*(1.25)")
                    .ValueGeneratedOnAddOrUpdate();

                entity.Property(e => e.Damageps)
                    .HasColumnName("damageps")
                    .HasColumnType("decimal");

                entity.Property(e => e.DamagepsStab)
                    .HasColumnName("damageps_stab")
                    .HasColumnType("numeric")
                    .HasComputedColumnSql("[damageps]*(1.25)")
                    .ValueGeneratedOnAddOrUpdate();

                entity.Property(e => e.MoveCooldown)
                    .HasColumnName("move_cooldown")
                    .HasColumnType("decimal");

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasColumnName("name")
                    .HasMaxLength(100);

                entity.Property(e => e.TypeId).HasColumnName("type_id");

                entity.HasOne(d => d.AttackType)
                    .WithMany(p => p.Attacks)
                    .HasForeignKey(d => d.AttackTypeId)
                    .OnDelete(DeleteBehavior.Restrict)
                    .HasConstraintName("FK_attacks_attacks_types");

                entity.HasOne(d => d.Type)
                    .WithMany(p => p.Attacks)
                    .HasForeignKey(d => d.TypeId)
                    .OnDelete(DeleteBehavior.Restrict)
                    .HasConstraintName("FK_attacks_types");
            });

            modelBuilder.Entity<AttacksCharge>(entity =>
            {
                entity.HasKey(e => e.AttackId)
                    .HasName("PK_attacks_charge");

                entity.ToTable("attacks_charge");

                entity.Property(e => e.AttackId)
                    .HasColumnName("attack_id")
                    .ValueGeneratedNever();

                entity.Property(e => e.Charge).HasColumnName("charge");

                entity.Property(e => e.Critical)
                    .HasColumnName("critical")
                    .HasColumnType("decimal");

                entity.Property(e => e.Dodge)
                    .HasColumnName("dodge")
                    .HasColumnType("decimal");

                entity.HasOne(d => d.Attack)
                    .WithOne(p => p.AttacksCharge)
                    .HasForeignKey<AttacksCharge>(d => d.AttackId)
                    .HasConstraintName("FK_attacks_charge_attacks");
            });

            modelBuilder.Entity<AttacksQuick>(entity =>
            {
                entity.HasKey(e => e.AttackId)
                    .HasName("PK_attacks_quick");

                entity.ToTable("attacks_quick");

                entity.Property(e => e.AttackId)
                    .HasColumnName("attack_id")
                    .ValueGeneratedNever();

                entity.Property(e => e.DefensiveDamageps)
                    .HasColumnName("defensive_damageps")
                    .HasColumnType("decimal");

                entity.Property(e => e.Energyps)
                    .HasColumnName("energyps")
                    .HasColumnType("decimal");

                entity.Property(e => e.Energypu)
                    .HasColumnName("energypu")
                    .HasColumnType("decimal");

                entity.HasOne(d => d.Attack)
                    .WithOne(p => p.AttacksQuick)
                    .HasForeignKey<AttacksQuick>(d => d.AttackId)
                    .HasConstraintName("FK_attacks_quick_attacks");
            });

            modelBuilder.Entity<AttacksTypes>(entity =>
            {
                entity.HasKey(e => e.AttackTypeId)
                    .HasName("PK_attack_types");

                entity.ToTable("attacks_types");

                entity.Property(e => e.AttackTypeId)
                    .HasColumnName("attack_type_id")
                    .ValueGeneratedNever();

                entity.Property(e => e.Type)
                    .IsRequired()
                    .HasColumnName("type")
                    .HasMaxLength(100);
            });

            modelBuilder.Entity<Pokemons>(entity =>
            {
                entity.HasKey(e => e.PokemonId)
                    .HasName("PK_pokemon");

                entity.ToTable("pokemons");

                entity.Property(e => e.PokemonId)
                    .HasColumnName("pokemon_id")
                    .ValueGeneratedNever();

                entity.Property(e => e.AttackBase).HasColumnName("attack_base");

                entity.Property(e => e.CombatpowerMax).HasColumnName("combatpower_max");

                entity.Property(e => e.DefenseBase).HasColumnName("defense_base");

                entity.Property(e => e.EvolvefromPokemonId).HasColumnName("evolvefrom_pokemon_id");

                entity.Property(e => e.HeightAvg)
                    .HasColumnName("height_avg")
                    .HasColumnType("decimal");

                entity.Property(e => e.Icon)
                    .HasColumnName("icon")
                    .HasMaxLength(400);

                entity.Property(e => e.Image)
                    .HasColumnName("image")
                    .HasMaxLength(400);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasColumnName("name")
                    .HasMaxLength(100);

                entity.Property(e => e.StaminaBase).HasColumnName("stamina_base");

                entity.Property(e => e.Url)
                    .IsRequired()
                    .HasColumnName("url")
                    .HasMaxLength(400);

                entity.Property(e => e.WeightAvg)
                    .HasColumnName("weight_avg")
                    .HasColumnType("decimal");

                entity.HasOne(d => d.EvolvefromPokemon)
                    .WithMany(p => p.InverseEvolvefromPokemon)
                    .HasForeignKey(d => d.EvolvefromPokemonId)
                    .HasConstraintName("FK_pokemons_pokemons");
            });

            modelBuilder.Entity<PokemonsAttacks>(entity =>
            {
                entity.HasKey(e => e.PokemonAttackId)
                    .HasName("PK_pokemons_attacks");

                entity.ToTable("pokemons_attacks");

                entity.Property(e => e.PokemonAttackId).HasColumnName("pokemon_attack_id");

                entity.Property(e => e.AttackId).HasColumnName("attack_id");

                entity.Property(e => e.PokemonId).HasColumnName("pokemon_id");

                entity.Property(e => e.TrueDamageps)
                    .HasColumnName("true_damageps")
                    .HasColumnType("decimal");

                entity.HasOne(d => d.Attack)
                    .WithMany(p => p.PokemonsAttacks)
                    .HasForeignKey(d => d.AttackId)
                    .OnDelete(DeleteBehavior.Restrict)
                    .HasConstraintName("FK_pokemons_attacks_attacks");

                entity.HasOne(d => d.Pokemon)
                    .WithMany(p => p.PokemonsAttacks)
                    .HasForeignKey(d => d.PokemonId)
                    .HasConstraintName("FK_pokemons_attacks_pokemons");
            });

            modelBuilder.Entity<PokemonsTypes>(entity =>
            {
                entity.HasKey(e => e.PokemonTypeId)
                    .HasName("PK_pokemons_types");

                entity.ToTable("pokemons_types");

                entity.Property(e => e.PokemonTypeId).HasColumnName("pokemon_type_id");

                entity.Property(e => e.PokemonId).HasColumnName("pokemon_id");

                entity.Property(e => e.TypeId).HasColumnName("type_id");

                entity.HasOne(d => d.Pokemon)
                    .WithMany(p => p.PokemonsTypes)
                    .HasForeignKey(d => d.PokemonId)
                    .HasConstraintName("FK_pokemons_types_pokemons");

                entity.HasOne(d => d.Type)
                    .WithMany(p => p.PokemonsTypes)
                    .HasForeignKey(d => d.TypeId)
                    .OnDelete(DeleteBehavior.Restrict)
                    .HasConstraintName("FK_pokemons_types_types");
            });

            modelBuilder.Entity<Types>(entity =>
            {
                entity.HasKey(e => e.TypeId)
                    .HasName("PK_types");

                entity.ToTable("types");

                entity.Property(e => e.TypeId)
                    .HasColumnName("type_id")
                    .ValueGeneratedNever();

                entity.Property(e => e.Type)
                    .IsRequired()
                    .HasColumnName("type")
                    .HasMaxLength(100);
            });

            modelBuilder.Entity<TypesMultiplier>(entity =>
            {
                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.Bug).HasColumnName("BUG");

                entity.Property(e => e.Dark).HasColumnName("DARK");

                entity.Property(e => e.Dragon).HasColumnName("DRAGON");

                entity.Property(e => e.Electric).HasColumnName("ELECTRIC");

                entity.Property(e => e.Fairy).HasColumnName("FAIRY");

                entity.Property(e => e.Fighting).HasColumnName("FIGHTING");

                entity.Property(e => e.Fire).HasColumnName("FIRE");

                entity.Property(e => e.Flying).HasColumnName("FLYING");

                entity.Property(e => e.Ghost).HasColumnName("GHOST");

                entity.Property(e => e.Grass).HasColumnName("GRASS");

                entity.Property(e => e.Ground).HasColumnName("GROUND");

                entity.Property(e => e.Ice).HasColumnName("ICE");

                entity.Property(e => e.Normal).HasColumnName("NORMAL");

                entity.Property(e => e.Poison).HasColumnName("POISON");

                entity.Property(e => e.Psychic).HasColumnName("PSYCHIC");

                entity.Property(e => e.Rock).HasColumnName("ROCK");

                entity.Property(e => e.Steel).HasColumnName("STEEL");

                entity.Property(e => e.Type)
                    .HasColumnName("TYPE")
                    .HasMaxLength(255);

                entity.Property(e => e.Water).HasColumnName("WATER");
            });

            modelBuilder.Entity<TypesTypes>(entity =>
            {
                entity.HasKey(e => e.TypeTypeId)
                    .HasName("PK_types_types");

                entity.ToTable("types_types");

                entity.Property(e => e.TypeTypeId).HasColumnName("type_type_id");

                entity.Property(e => e.AttackerTypeId).HasColumnName("attacker_type_id");

                entity.Property(e => e.DefenderTypeId).HasColumnName("defender_type_id");

                entity.Property(e => e.Multiplier)
                    .HasColumnName("multiplier")
                    .HasColumnType("decimal");

                entity.HasOne(d => d.AttackerType)
                    .WithMany(p => p.TypesTypesAttackerType)
                    .HasForeignKey(d => d.AttackerTypeId)
                    .OnDelete(DeleteBehavior.Restrict)
                    .HasConstraintName("FK_types_types_types");

                entity.HasOne(d => d.DefenderType)
                    .WithMany(p => p.TypesTypesDefenderType)
                    .HasForeignKey(d => d.DefenderTypeId)
                    .OnDelete(DeleteBehavior.Restrict)
                    .HasConstraintName("FK_types_types_types1");
            });
        }

        public virtual DbSet<Attacks> Attacks { get; set; }
        public virtual DbSet<AttacksCharge> AttacksCharge { get; set; }
        public virtual DbSet<AttacksQuick> AttacksQuick { get; set; }
        public virtual DbSet<AttacksTypes> AttacksTypes { get; set; }
        public virtual DbSet<Pokemons> Pokemons { get; set; }
        public virtual DbSet<PokemonsAttacks> PokemonsAttacks { get; set; }
        public virtual DbSet<PokemonsTypes> PokemonsTypes { get; set; }
        public virtual DbSet<Types> Types { get; set; }
        public virtual DbSet<TypesMultiplier> TypesMultiplier { get; set; }
        public virtual DbSet<TypesTypes> TypesTypes { get; set; }
    }
}