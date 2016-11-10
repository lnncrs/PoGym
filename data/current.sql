
--====================
--types
--====================

declare @id int = 11

select tt.type_type_id as id,ta.type as attacker,td.type as defender,tt.multiplier
from types_types as tt inner join types as ta on ta.type_id = tt.attacker_type_id
inner join types as td on td.type_id = tt.defender_type_id
where attacker_type_id = @id and tt.multiplier <> 1
order by tt.defender_type_id

--====================
--attacks
--====================

select a.name,t.type,a.damage,a.damageps,a.damageps_stab,a.move_cooldown,q.energyps,q.energypu,q.defensive_damageps
from attacks_quick as q inner join attacks as a on q.attack_id = a.attack_id
inner join attacks_types as t on t.attack_type_id = a.attack_type_id
order by a.name

select a.name,t.type,a.damage,a.damageps,a.damageps_stab,a.move_cooldown,c.dodge,c.critical,c.charge
from attacks_charge as c inner join attacks as a on c.attack_id = a.attack_id
inner join attacks_types as t on t.attack_type_id = a.attack_type_id
order by a.name

--====================
--pokemon
--====================

declare @id int = 1

select p.pokemon_id,p.name,weight_avg,height_avg,p.attack_base,p.defense_base,p.stamina_base,a.name,a.damage,a.damage_stab,a.damageps,a.damageps_stab,ta.type,t.type
from pokemons as p inner join pokemons_attacks as pa on p.pokemon_id = pa.pokemon_id
inner join attacks as a on pa.attack_id = a.attack_id
inner join attacks_types as ta on a.attack_type_id = ta.attack_type_id
inner join types as t on a.type_id = t.type_id
where p.pokemon_id = @id

select t.type
from [dbo].[pokemons_types] as pa inner join types as t on pa.type_id = t.type_id
where pokemon_id = @id
