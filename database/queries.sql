


-- =============================================
-- Select simples para listagem de tipos por
-- sua ordem natural no jogo
-- =============================================
SELECT t.type_id as id,t.type as tipo
FROM types as t
ORDER BY id
go






-- =============================================
-- Selects que listam o(s) tipo(s) e ficha de um
-- dado pokemon
-- =============================================
declare @id int = 1

select t.type as tipo
from pokemons_types as pa inner join types as t on pa.type_id = t.type_id
where pokemon_id = @id

select p.pokemon_id as pokedex,p.name as nome,weight_avg as peso,height_avg as altura
      ,p.attack_base as atk,p.defense_base as def,p.stamina_base as sta
from pokemons as p
where p.pokemon_id = @id
go






-- =============================================
-- Selects que listam o(s) tipo(s) e ataques
-- possíveis de um dado pokemon
-- =============================================
declare @id int = 1

select po.name as pokemon, t.type as elementos
from pokemons_types as pa inner join types as t on pa.type_id = t.type_id
                          inner join pokemons as po on pa.pokemon_id = po.pokemon_id
where pa.pokemon_id = @id

select p.name as pokemon
	  ,a.name as movimento
	  ,ta.type as 'tipo'
	  ,t.type as 'elemento'

	  ,(case dbo.fn_stab(p.pokemon_id,a.type_id)
	    when 1 then 'Sim'
	    else 'Não'
	    end) as 'bônus stab'

	  ,a.damage as dano
	  ,a.damageps as 'dano/s'

	  ,cast((case dbo.fn_stab(p.pokemon_id,a.type_id)
	         when 1 then a.damage_stab
	         else a.damage
	         end) as decimal(18,2)) as 'dano +stab'

  	  ,cast((case dbo.fn_stab(p.pokemon_id,a.type_id)
	         when 1 then a.damageps_stab
	         else a.damageps
	         end) as decimal(18,2)) as 'dano/s +stab'

from pokemons as p inner join pokemons_attacks as pa on p.pokemon_id = pa.pokemon_id
                   inner join attacks as a on pa.attack_id = a.attack_id
                   inner join attacks_types as ta on a.attack_type_id = ta.attack_type_id
                   inner join types as t on a.type_id = t.type_id
where p.pokemon_id = @id
go






-- =============================================
-- Select que combina os dois tipos de um
-- pokemon SE DEFENDENDO e gera a tabela de
-- multiplicadores (tabela do site gamepress)
-- =============================================
select ta.type as atacante,EXP(SUM(LOG(tt.multiplier))) as multiplicador
from types_types as tt inner join types as ta on ta.type_id = tt.attacker_type_id
                       inner join types as td on td.type_id = tt.defender_type_id
where defender_type_id in(16,3) --dragonite
group by ta.type
having EXP(SUM(LOG(tt.multiplier))) <> 1
order by ta.type
go






-- =============================================
-- Select que combina os dois tipos de um
-- pokemon ATACANDO e gera a tabela de
-- multiplicadores
-- =============================================
select td.type as defensor,EXP(SUM(LOG(tt.multiplier))) as multiplicador
from types_types as tt inner join types as ta on ta.type_id = tt.attacker_type_id
                       inner join types as td on td.type_id = tt.defender_type_id
where attacker_type_id in(16,3) --dragonite
--where attacker_type_id in(15,11) --lapras
--where attacker_type_id in(18,0) --fairy
--where attacker_type_id in(10,0) --fire
group by td.type
having EXP(SUM(LOG(tt.multiplier))) <> 1
order by td.type
go






-- =============================================
-- Select que mostra a relação da tabela tipos 
-- pra ela própria com o atributo de
-- relação denominado 'multiplicador'
-- =============================================
SELECT type_type_id as id
      ,attacker_type_id as idatk,ta.type as atacante
      ,defender_type_id as iddef,td.type as defensor
      ,multiplier as multiplicador
  FROM types_types as tt inner join types as ta on tt.attacker_type_id = ta.type_id
                         inner join types as td on tt.defender_type_id = td.type_id
order by idatk asc,iddef asc
go







-- =============================================
-- Selects que listam a tabela de ataques e UMA
-- de suas disjuntas com registros ordenados do
-- maior ao menor dano
-- =============================================
select top 25 a.name as ataque,t.type as tipo,a.damage as dano,a.damageps as 'dano/s'
             ,a.move_cooldown as 'recarga (ms)',q.energyps as 'energia/s',q.energypu as 'energia gerada'
from attacks_quick as q inner join attacks as a on q.attack_id = a.attack_id
                        inner join attacks_types as t on t.attack_type_id = a.attack_type_id
order by a.damage desc
go

select top 25 a.name as ataque,t.type as tipo,a.damage as dano,a.damageps as 'dano/s'
             ,a.move_cooldown as 'recarga em (ms)',c.dodge as 'janela esquiva (ms)'
			 ,convert(nvarchar(50),cast(c.critical*100 as int))+'%' as 'chance dano crítico'
			 ,c.charge as 'barras de energia'
from attacks_charge as c inner join attacks as a on c.attack_id = a.attack_id
                         inner join attacks_types as t on t.attack_type_id = a.attack_type_id
order by a.damage desc
go






-- =============================================
-- Select que lista a tabela de ataques JUNTO
-- a suas disjuntas com registros ordenados por
-- nome
-- =============================================
select top 25 a.name as ataque,t.type as tipo,a.damage as dano,a.damageps as 'dano/s'
             ,a.move_cooldown as 'recarga em (ms)',c.charge as 'barras de energia'
			 ,q.energypu as 'energia gerada'
from attacks as a left outer join attacks_charge as c on c.attack_id = a.attack_id
                  left outer join attacks_quick as q on q.attack_id = a.attack_id
                  inner join attacks_types as t on t.attack_type_id = a.attack_type_id
order by a.name asc
go






-- =============================================
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
-- Execução da procedure de batalha para gerar a
-- tabela de multiplicadores
-- =============================================
DECLARE @type1 int = 16 --Dragon type
DECLARE @type2 int = 3 --Flying type

EXECUTE sp_battle @type1,@type2
GO






-- =============================================
-- Execução da procedure de verificação de
-- bônus STAB
-- =============================================
DECLARE @pokemon_id int = 1 --Bulbassaur
DECLARE @attack_id int = 48 --Poison Fang
DECLARE @stab int

EXECUTE sp_stab @pokemon_id,@attack_id,@stab output
select @stab
GO






-- =============================================
-- Select que lista os pokemons no jogo na
-- ordem do pokedex e com total de ataques
-- disponíveis para ele
-- =============================================
SELECT pokemon_id,name,('https://http://pokemongo.gamepress.gg'+url) as 'url'
      ,height_avg as 'altura',weight_avg as 'peso',combatpower_max as 'cp máximo'
	  ,attack_base as 'ataque',defense_base as 'defesa',stamina_base as 'resistência'
	  ,(select count(*)
	      from attacks as a inner join attacks_quick as q on a.attack_id = q.attack_id
			                inner join pokemons_attacks as pa on pa.attack_id = a.attack_id
         where pa.pokemon_id = p.pokemon_id) as 'rápidos'
	  ,(select count(*)
	      from attacks as a inner join attacks_charge as c on a.attack_id = c.attack_id
			                inner join pokemons_attacks as pa on pa.attack_id = a.attack_id
         where pa.pokemon_id = p.pokemon_id) as 'carregados'
  FROM pokemons as p
go


