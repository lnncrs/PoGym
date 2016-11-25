
-- =============================================
-- Description:
-- Select simples para listagem de tipos por
-- sua ordem natural no jogo
-- =============================================
SELECT t.type_id as id,t.type as tipo
FROM types as t
order by id
go



-- =============================================
-- Description:
-- Selects que listam o(s) tipo(s) e ficha de um
-- dado pokemon
-- =============================================
declare @id int = 1

select t.type
from [dbo].[pokemons_types] as pa inner join types as t on pa.type_id = t.type_id
where pokemon_id = @id

select p.pokemon_id,p.name,weight_avg,height_avg,p.attack_base,p.defense_base,p.stamina_base
from pokemons as p
where p.pokemon_id = @id
go



-- =============================================
-- Description:
-- Select que mostra a relação da tabela tipos 
-- pra ela própria com o atributo de
-- relação denominado 'multiplicador'
-- =============================================
SELECT type_type_id as id
      ,attacker_type_id as idatk,ta.type as attacker
      ,defender_type_id as iddef,td.type as defender
      ,multiplier
  FROM types_types as tt
  inner join types as ta on tt.attacker_type_id = ta.type_id
  inner join types as td on tt.defender_type_id = td.type_id
order by idatk asc,iddef asc
go



-- =============================================
-- Description:
-- Selects que listam o(s) tipo(s) e ataques
-- possíveis de um dado pokemon
-- =============================================
declare @id int = 1

select t.type
from [dbo].[pokemons_types] as pa inner join types as t on pa.type_id = t.type_id
where pokemon_id = @id

select p.pokemon_id,p.name,a.name,a.damage,a.damage_stab,a.damageps,a.damageps_stab,ta.type,t.type
from pokemons as p inner join pokemons_attacks as pa on p.pokemon_id = pa.pokemon_id
inner join attacks as a on pa.attack_id = a.attack_id
inner join attacks_types as ta on a.attack_type_id = ta.attack_type_id
inner join types as t on a.type_id = t.type_id
where p.pokemon_id = @id
go



-- =============================================
-- Description:
-- Select que combina os dois tipos de um
-- pokemon SE DEFENDENDO e gera a tabela de
-- multiplicadores (tabela do site gamepress)
-- =============================================
select ta.type as attacker,EXP(SUM(LOG(tt.multiplier))) as multiplier
from types_types as tt inner join types as ta on ta.type_id = tt.attacker_type_id
inner join types as td on td.type_id = tt.defender_type_id
--where defender_type_id in(15,11) --lapras
where defender_type_id in(16,3) --dragonite
--where defender_type_id in(18,0) --fairy
--where defender_type_id in(10,0) --fire
group by ta.type
having EXP(SUM(LOG(tt.multiplier))) <> 1
order by ta.type
go



-- =============================================
-- Description:
-- Select que combina os dois tipos de um
-- pokemon ATACANDO e gera a tabela de
-- multiplicadores
-- =============================================
select td.type as defender,EXP(SUM(LOG(tt.multiplier))) as multiplier
from types_types as tt inner join types as ta on ta.type_id = tt.attacker_type_id
inner join types as td on td.type_id = tt.defender_type_id
--where attacker_type_id in(15,11) --lapras
where attacker_type_id in(16,3) --dragonite
--where attacker_type_id in(18,0) --fairy
--where attacker_type_id in(1,0) --fire
group by td.type
having EXP(SUM(LOG(tt.multiplier))) <> 1
order by td.type
go



-- =============================================
-- Description:
-- Selects que listam a tabela de ataques e UMA
-- de suas disjuntas com registros ordenados do
-- maior ao menor dano
-- =============================================
select a.name,t.type,a.damage,a.damageps,a.damageps_stab,a.move_cooldown,q.energyps,q.energypu,q.defensive_damageps
from attacks_quick as q inner join attacks as a on q.attack_id = a.attack_id
inner join attacks_types as t on t.attack_type_id = a.attack_type_id
order by a.damage desc

select a.name,t.type,a.damage,a.damageps,a.damageps_stab,a.move_cooldown,c.dodge,c.critical,c.charge
from attacks_charge as c inner join attacks as a on c.attack_id = a.attack_id
inner join attacks_types as t on t.attack_type_id = a.attack_type_id
order by a.damage desc
go


-- =============================================
-- Description:
-- Select que lista a tabela de ataques JUNTO
-- a suas disjuntas com registros ordenados do
-- maior ao menor dano
-- =============================================
select a.name,t.type,a.damage,a.damageps,a.damageps_stab,a.move_cooldown,c.charge,q.energypu
from attacks as a left outer join attacks_charge as c on c.attack_id = a.attack_id
left outer join attacks_quick as q on q.attack_id = a.attack_id
inner join attacks_types as t on t.attack_type_id = a.attack_type_id
order by a.damage desc
go



-- =============================================
-- Description:
-- Inserção de registro de ataque nas tabelas
-- attacks_quick e attacks_charge para
-- demostrar o disjoint entre elas
-- =============================================
INSERT INTO dbo.attacks_quick(attack_id,energyps,energypu,defensive_damageps)
     VALUES(40,3,3,3)
go

INSERT INTO dbo.attacks_charge(attack_id,charge,critical,dodge)
     VALUES(1,5,0.05,1.40)
go


-- =============================================
-- Description:
-- Execução da procedure de ataque para gerar a
-- tabela de multiplicadores
-- =============================================
DECLARE @type1 int = 16 --Dragon type
DECLARE @type2 int = 13 --Flying type

EXECUTE sp_attack @type1,@type2
GO





