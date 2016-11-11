
--weakness/resistance types
select td.type as attacker,EXP(SUM(LOG(tt.multiplier))) as multiplier
from types_types as tt inner join types as ta on ta.type_id = tt.attacker_type_id
inner join types as td on td.type_id = tt.defender_type_id
where attacker_type_id in(15,0)
group by td.type
having EXP(SUM(LOG(tt.multiplier))) <> 1
order by td.type

--weakness/resistance types
select ta.type as defender,EXP(SUM(LOG(tt.multiplier))) as multiplier
from types_types as tt inner join types as ta on ta.type_id = tt.attacker_type_id
inner join types as td on td.type_id = tt.defender_type_id
where defender_type_id in(16,3)
group by ta.type
having EXP(SUM(LOG(tt.multiplier))) <> 1
order by ta.type


