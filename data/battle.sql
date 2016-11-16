
--attack
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

--defense
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


