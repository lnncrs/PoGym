declare @id int = 36

select p.pokemon_id,p.name,weight_avg,height_avg,p.attack_base,p.defense_base,p.stamina_base,a.name,a.damage,a.damage_stab,a.damageps,a.damageps_stab,ta.type,t.type
from pokemons as p inner join pokemons_attacks as pa on p.pokemon_id = pa.pokemon_id
inner join attacks as a on pa.attack_id = a.attack_id
inner join attacks_types as ta on a.attack_type_id = ta.attack_type_id
inner join types as t on a.type_id = t.type_id
where p.pokemon_id = @id

select t.type
from [dbo].[pokemons_types] as pa inner join types as t on pa.type_id = t.type_id
where pokemon_id = @id
