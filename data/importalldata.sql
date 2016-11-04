use pogym

INSERT INTO [types] ([type_id],[type]) VALUES 
(1, 'Normal')
,(2, 'Fighting')
,(3, 'Flying')
,(4, 'Poison')
,(5, 'Ground')
,(6, 'Rock')
,(7, 'Bug')
,(8, 'Ghost')
,(9, 'Steel')
,(10, 'Fire')
,(11, 'Water')
,(12, 'Grass')
,(13, 'Electric')
,(14, 'Psychic')
,(15, 'Ice')
,(16, 'Dragon')
,(17, 'Dark')
,(18, 'Fairy')
;

INSERT INTO [attacks_types] ([attack_type_id],[type]) VALUES 
(1,'Quick Move')
,(2,'Charge Move')
;

INSERT INTO [attacks] ([attack_id],[name],[attack_type_id],[type_id],[damage],[damageps],[move_cooldown],[energyps],[charge]) VALUES 
(1,'Splash',1,11,0,0.00,1.23,0.00,0)
,(2,'Fury Cutter',1,7,3,7.50,0.40,15.00,0)
,(3,'Low Kick',1,2,5,8.33,0.60,11.67,0)
,(4,'Bug Bite',1,7,5,11.11,0.45,15.56,0)
,(5,'Lick',1,8,5,10.00,0.50,12.00,0)
,(6,'Thunder Shock',1,13,5,8.33,0.60,13.33,0)
,(7,'Dragon Breath',1,16,6,12.00,0.50,14.00,0)
,(8,'Bite',1,17,6,12.00,0.50,14.00,0)
,(9,'Karate Chop',1,2,6,7.50,0.80,10.00,0)
,(10,'Poison Sting',1,4,6,10.43,0.58,13.91,0)
,(11,'Scratch',1,1,6,12.00,0.50,14.00,0)
,(12,'Mud Shot',1,5,6,10.91,0.55,12.73,0)
,(13,'Water Gun',1,11,6,12.00,0.50,14.00,0)
,(14,'Spark',1,13,7,10.00,0.70,11.43,0)
,(15,'Sucker Punch',1,17,7,10.00,0.70,12.86,0)
,(16,'Pound',1,1,7,12.96,0.54,12.96,0)
,(17,'Vine Whip',1,12,7,10.77,0.65,10.77,0)
,(18,'Psycho Cut',1,14,7,12.28,0.57,12.28,0)
,(19,'Metal Claw',1,9,8,12.70,0.63,11.11,0)
,(20,'Frost Breath',1,15,9,11.11,0.81,8.64,0)
,(21,'Wing Attack',1,3,9,12.00,0.75,9.33,0)
,(22,'Quick Attack',1,1,10,7.52,1.33,9.02,0)
,(23,'Ember',1,10,10,9.52,1.05,9.52,0)
,(24,'Peck',1,3,10,8.70,1.15,8.70,0)
,(25,'Fire Fang',1,10,10,11.90,0.84,9.52,0)
,(26,'Bullet Punch',1,9,10,8.33,1.20,8.33,0)
,(27,'Acid',1,4,10,9.52,1.05,9.52,0)
,(28,'Shadow Claw',1,8,11,11.58,0.95,8.42,0)
,(29,'Zen Headbutt',1,14,12,11.43,1.05,8.57,0)
,(30,'Feint Attack',1,17,12,11.54,1.04,9.62,0)
,(31,'Poison Jab',1,4,12,11.43,1.05,9.52,0)
,(32,'Rock Throw',1,6,12,8.82,1.36,11.03,0)
,(33,'Tackle',1,1,12,10.91,1.10,9.09,0)
,(34,'Cut',1,1,12,10.62,1.13,8.85,0)
,(35,'Mud Slap',1,5,15,11.11,1.35,8.89,0)
,(36,'Steel Wing',1,9,15,11.28,1.33,9.02,0)
,(37,'Razor Leaf',1,12,15,10.34,1.45,8.28,0)
,(38,'Rock Smash',1,2,15,10.64,1.41,8.51,0)
,(39,'Confusion',1,14,15,9.93,1.51,9.27,0)
,(40,'Struggle',2,1,15,8.85,1.70,0.00,5)
,(41,'Ice Shard',1,15,15,10.71,1.40,8.57,0)
,(42,'Twister',2,16,25,9.26,2.70,0.00,5)
,(43,'Aqua Jet',2,11,25,10.64,2.35,0.00,5)
,(44,'Vice Grip',2,1,25,11.90,2.10,0.00,5)
,(45,'Bubble',1,11,25,10.87,2.30,10.87,0)
,(46,'Draining Kiss',2,18,25,8.93,2.80,0.00,5)
,(47,'Horn Attack',2,1,25,11.36,2.20,0.00,4)
,(48,'Poison Fang',2,4,25,10.42,2.40,0.00,5)
,(49,'Wrap',2,1,25,6.25,4.00,0.00,5)
,(50,'Icy Wind',2,15,25,6.58,3.80,0.00,5)
,(51,'Disarming Voice',2,18,25,6.41,3.90,0.00,5)
,(52,'Brine',2,11,25,10.42,2.40,0.00,4)
,(53,'Bone Club',2,5,25,15.63,1.60,0.00,4)
,(54,'Cross Poison',2,4,25,16.67,1.50,0.00,4)
,(55,'Flame Charge',2,10,25,8.06,3.10,0.00,5)
,(56,'Brick Break',2,2,30,18.75,1.60,0.00,3)
,(57,'Low Sweep',2,2,30,13.33,2.25,0.00,4)
,(58,'Submission',2,2,30,14.29,2.10,0.00,3)
,(59,'Ominous Wind',2,8,30,9.68,3.10,0.00,4)
,(60,'Bubble Beam',2,11,30,10.34,2.90,0.00,4)
,(61,'Magnet Bomb',2,9,30,10.71,2.80,0.00,4)
,(62,'Swift',2,1,30,10.00,3.00,0.00,4)
,(63,'Flame Burst',2,10,30,14.29,2.10,0.00,4)
,(64,'Aerial Ace',2,3,30,10.34,2.90,0.00,4)
,(65,'Stomp',2,1,30,14.29,2.10,0.00,4)
,(66,'Air Cutter',2,3,30,9.09,3.30,0.00,4)
,(67,'Mud Bomb',2,5,30,11.54,2.60,0.00,4)
,(68,'Sludge',2,4,30,11.54,2.60,0.00,4)
,(69,'Iron Head',2,9,30,15.00,2.00,0.00,3)
,(70,'Rock Tomb',2,6,30,8.82,3.40,0.00,4)
,(71,'Night Slash',2,17,30,11.11,2.70,0.00,4)
,(72,'Dragon Claw',2,16,35,21.88,1.60,0.00,2)
,(73,'Hyper Fang',2,1,35,16.67,2.10,0.00,3)
,(74,'Water Pulse',2,11,35,10.61,3.30,0.00,4)
,(75,'Bulldoze',2,5,35,10.29,3.40,0.00,4)
,(76,'X-Scissor',2,7,35,16.67,2.10,0.00,3)
,(77,'Ancient Power',2,6,35,9.72,3.60,0.00,4)
,(78,'Discharge',2,13,35,14.00,2.50,0.00,3)
,(79,'Psybeam',2,14,40,10.53,3.80,0.00,4)
,(80,'Fire Punch',2,10,40,14.29,2.80,0.00,3)
,(81,'Seed Bomb',2,12,40,16.67,2.40,0.00,3)
,(82,'Psyshock',2,14,40,14.81,2.70,0.00,3)
,(83,'Flame Wheel',2,10,40,8.70,4.60,0.00,4)
,(84,'Body Slam',2,1,40,25.64,1.56,0.00,2)
,(85,'Drill Peck',2,3,40,14.81,2.70,0.00,3)
,(86,'Thunder Punch',2,13,40,16.67,2.40,0.00,3)
,(87,'Power Gem',2,6,40,13.79,2.90,0.00,3)
,(88,'Dark Pulse',2,17,45,12.86,3.50,0.00,3)
,(89,'Aqua Tail',2,11,45,19.15,2.35,0.00,2)
,(90,'Shadow Ball',2,8,45,14.61,3.08,0.00,3)
,(91,'Ice Punch',2,15,45,12.86,3.50,0.00,3)
,(92,'Signal Beam',2,7,45,14.52,3.10,0.00,3)
,(93,'Drill Run',2,5,50,14.71,3.40,0.00,3)
,(94,'Rock Slide',2,6,50,15.63,3.20,0.00,3)
,(95,'Scald',2,11,55,13.75,4.00,0.00,3)
,(96,'Psychic',2,14,55,19.64,2.80,0.00,2)
,(97,'Dazzling Gleam',2,18,55,13.10,4.20,0.00,3)
,(98,'Play Rough',2,18,55,18.97,2.90,0.00,2)
,(99,'Leaf Blade',2,12,55,19.64,2.80,0.00,2)
,(100,'Flamethrower',2,10,55,18.97,2.90,0.00,2)
,(101,'Thunderbolt',2,13,55,20.37,2.70,0.00,2)
,(102,'Sludge Bomb',2,4,55,21.15,2.60,0.00,2)
,(103,'Cross Chop',2,2,60,30.00,2.00,0.00,1)
,(104,'Flash Cannon',2,9,60,15.38,3.90,0.00,3)
,(105,'Gunk Shot',2,4,65,21.67,3.00,0.00,1)
,(106,'Petal Blizzard',2,12,65,20.31,3.20,0.00,2)
,(107,'Dragon Pulse',2,16,65,18.06,3.60,0.00,2)
,(108,'Ice Beam',2,15,65,17.81,3.65,0.00,2)
,(109,'Sludge Wave',2,4,70,20.59,3.40,0.00,1)
,(110,'Dig',2,5,70,12.07,5.80,0.00,3)
,(111,'Power Whip',2,12,70,25.00,2.80,0.00,1)
,(112,'Bug Buzz',2,7,75,17.65,4.25,0.00,2)
,(113,'Hurricane',2,3,80,25.00,3.20,0.00,1)
,(114,'Heat Wave',2,10,80,21.05,3.80,0.00,1)
,(115,'Megahorn',2,7,80,25.00,3.20,0.00,1)
,(116,'Stone Edge',2,6,80,25.81,3.10,0.00,1)
,(117,'Moonblast',2,18,85,20.73,4.10,0.00,1)
,(118,'Hydro Pump',2,11,90,23.68,3.80,0.00,1)
,(119,'Fire Blast',2,10,100,24.39,4.10,0.00,1)
,(120,'Blizzard',2,15,100,25.64,3.90,0.00,1)
,(121,'Thunder',2,13,100,23.26,4.30,0.00,1)
,(122,'Earthquake',2,5,100,23.81,4.20,0.00,1)
,(123,'Solar Beam',2,12,120,24.49,4.90,0.00,1)
,(124,'Hyper Beam',2,1,120,24.00,5.00,0.00,1)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(1,'Bulbasaur','/sites/default/files/styles/pokemon_small/public/2016-08/1_0.png','/sites/default/files/styles/240w/public/2016-08/1_0.png','/pokemon/1',0.70,6.90,1071,126,126,90)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (1,12)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (1,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (1,33)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (1,17)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (1,111)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (1,81)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (1,102)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(2,'Ivysaur','/sites/default/files/styles/pokemon_small/public/2016-08/2.png','/sites/default/files/styles/240w/public/2016-08/2.png','/pokemon/2',1.00,13.00,1632,156,158,120)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (2,12)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (2,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (2,37)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (2,17)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (2,111)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (2,102)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (2,123)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(3,'Venusaur','/sites/default/files/styles/pokemon_small/public/2016-07/3.png','/sites/default/files/styles/240w/public/2016-07/3.png','/pokemon/3',2.00,100.00,2580,198,200,160)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (3,12)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (3,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (3,37)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (3,17)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (3,106)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (3,102)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (3,123)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(4,'Charmander','/sites/default/files/styles/pokemon_small/public/2016-07/4.png','/sites/default/files/styles/240w/public/2016-07/4.png','/pokemon/4',0.60,8.50,955,128,108,78)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (4,10)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (4,23)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (4,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (4,63)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (4,100)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (4,55)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(5,'Charmeleon','/sites/default/files/styles/pokemon_small/public/2016-07/5.png','/sites/default/files/styles/240w/public/2016-07/5.png','/pokemon/5',1.10,19.00,1557,160,140,116)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (5,10)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (5,23)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (5,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (5,80)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (5,63)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (5,100)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(6,'Charizard','/sites/default/files/styles/pokemon_small/public/2016-07/6.png','/sites/default/files/styles/240w/public/2016-07/6.png','/pokemon/6',1.70,90.50,2602,212,182,156)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (6,10)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (6,3)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (6,23)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (6,21)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (6,72)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (6,119)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (6,100)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(7,'Squirtle','/sites/default/files/styles/pokemon_small/public/2016-07/7.png','/sites/default/files/styles/240w/public/2016-07/7.png','/pokemon/7',0.50,9.00,1008,112,142,88)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (7,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (7,33)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (7,45)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (7,43)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (7,89)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (7,74)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(8,'Wartortle','/sites/default/files/styles/pokemon_small/public/2016-07/8.png','/sites/default/files/styles/240w/public/2016-07/8.png','/pokemon/8',1.00,22.50,1582,144,176,118)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (8,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (8,8)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (8,13)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (8,43)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (8,118)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (8,108)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(9,'Blastoise','/sites/default/files/styles/pokemon_small/public/2016-07/9.png','/sites/default/files/styles/240w/public/2016-07/9.png','/pokemon/9',1.60,85.50,2542,186,222,158)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (9,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (9,8)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (9,13)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (9,104)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (9,118)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (9,108)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(10,'Caterpie','/sites/default/files/styles/pokemon_small/public/2016-07/10.png','/sites/default/files/styles/240w/public/2016-07/10.png','/pokemon/10',0.30,2.00,443,62,66,90)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (10,7)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (10,33)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (10,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (10,40)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(11,'Metapod','/sites/default/files/styles/pokemon_small/public/2016-07/11.png','/sites/default/files/styles/240w/public/2016-07/11.png','/pokemon/11',0.70,9.90,477,56,86,100)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (11,7)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (11,33)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (11,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (11,40)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(12,'Butterfree','/sites/default/files/styles/pokemon_small/public/2016-07/12.png','/sites/default/files/styles/240w/public/2016-07/12.png','/pokemon/12',1.10,32.00,1454,144,144,120)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (12,7)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (12,3)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (12,4)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (12,39)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (12,112)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (12,96)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (12,92)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(13,'Weedle','/sites/default/files/styles/pokemon_small/public/2016-07/13.png','/sites/default/files/styles/240w/public/2016-07/13.png','/pokemon/13',0.30,3.20,449,68,64,80)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (13,7)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (13,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (13,4)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (13,10)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (13,40)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(14,'Kakuna','/sites/default/files/styles/pokemon_small/public/2016-07/14.png','/sites/default/files/styles/240w/public/2016-07/14.png','/pokemon/14',0.60,10.00,485,62,82,90)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (14,7)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (14,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (14,4)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (14,10)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (14,40)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(15,'Beedrill','/sites/default/files/styles/pokemon_small/public/2016-07/15.png','/sites/default/files/styles/240w/public/2016-07/15.png','/pokemon/15',1.00,29.50,1439,144,130,130)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (15,7)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (15,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (15,4)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (15,31)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (15,64)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (15,102)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (15,76)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(16,'Pidgey','/sites/default/files/styles/pokemon_small/public/2016-07/16.png','/sites/default/files/styles/240w/public/2016-07/16.png','/pokemon/16',0.30,1.80,679,94,90,80)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (16,3)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (16,1)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (16,33)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (16,22)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (16,64)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (16,66)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (16,42)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(17,'Pidgeotto','/sites/default/files/styles/pokemon_small/public/2016-07/17.png','/sites/default/files/styles/240w/public/2016-07/17.png','/pokemon/17',1.10,30.00,1223,126,122,126)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (17,3)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (17,1)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (17,36)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (17,21)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (17,64)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (17,66)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (17,42)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(18,'Pidgeot','/sites/default/files/styles/pokemon_small/public/2016-07/18.png','/sites/default/files/styles/240w/public/2016-07/18.png','/pokemon/18',1.50,39.50,2091,170,166,166)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (18,3)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (18,1)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (18,36)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (18,21)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (18,64)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (18,66)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (18,113)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(19,'Rattata','/sites/default/files/styles/pokemon_small/public/2016-07/19.png','/sites/default/files/styles/240w/public/2016-07/19.png','/pokemon/19',0.30,3.50,581,92,86,60)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (19,1)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (19,33)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (19,22)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (19,84)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (19,110)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (19,73)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(20,'Raticate','/sites/default/files/styles/pokemon_small/public/2016-07/20.png','/sites/default/files/styles/240w/public/2016-07/20.png','/pokemon/20',0.70,18.50,1444,146,150,110)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (20,1)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (20,8)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (20,22)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (20,110)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (20,124)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (20,73)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(21,'Spearow','/sites/default/files/styles/pokemon_small/public/2016-07/21.png','/sites/default/files/styles/240w/public/2016-07/21.png','/pokemon/21',0.30,2.00,686,102,78,80)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (21,3)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (21,1)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (21,24)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (21,22)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (21,64)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (21,85)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (21,42)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(22,'Fearow','/sites/default/files/styles/pokemon_small/public/2016-07/22.png','/sites/default/files/styles/240w/public/2016-07/22.png','/pokemon/22',1.20,38.00,1746,168,146,130)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (22,3)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (22,1)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (22,24)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (22,36)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (22,64)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (22,42)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (22,93)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(23,'Ekans','/sites/default/files/styles/pokemon_small/public/2016-07/23.png','/sites/default/files/styles/240w/public/2016-07/23.png','/pokemon/23',2.00,6.90,824,112,112,70)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (23,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (23,27)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (23,10)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (23,105)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (23,102)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (23,49)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(24,'Arbok','/sites/default/files/styles/pokemon_small/public/2016-07/24.png','/sites/default/files/styles/240w/public/2016-07/24.png','/pokemon/24',3.50,65.00,1767,166,166,120)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (24,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (24,27)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (24,8)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (24,88)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (24,105)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (24,109)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(25,'Pikachu','/sites/default/files/styles/pokemon_small/public/2016-07/25.png','/sites/default/files/styles/240w/public/2016-07/25.png','/pokemon/25',0.40,6.00,887,124,108,70)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (25,13)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (25,22)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (25,6)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (25,78)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (25,121)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (25,101)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(26,'Raichu','/sites/default/files/styles/pokemon_small/public/2016-07/26.png','/sites/default/files/styles/240w/public/2016-07/26.png','/pokemon/26',0.80,30.00,2028,200,154,120)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (26,13)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (26,14)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (26,6)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (26,56)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (26,121)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (26,86)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(27,'Sandshrew','/sites/default/files/styles/pokemon_small/public/2016-07/27.png','/sites/default/files/styles/240w/public/2016-07/27.png','/pokemon/27',0.60,12.00,798,90,114,100)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (27,5)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (27,12)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (27,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (27,110)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (27,94)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (27,70)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(28,'Sandslash','/sites/default/files/styles/pokemon_small/public/2016-07/28.png','/sites/default/files/styles/240w/public/2016-07/28.png','/pokemon/28',1.00,29.50,1810,150,172,150)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (28,5)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (28,19)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (28,12)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (28,75)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (28,122)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (28,70)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(29,'Nidoran♀','/sites/default/files/styles/pokemon_small/public/2016-07/29.png','/sites/default/files/styles/240w/public/2016-07/29.png','/pokemon/29',0.40,7.00,876,100,104,110)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (29,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (29,8)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (29,10)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (29,84)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (29,48)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (29,102)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(30,'Nidorina','/sites/default/files/styles/pokemon_small/public/2016-07/30.png','/sites/default/files/styles/240w/public/2016-07/30.png','/pokemon/30',0.80,20.00,1404,132,136,140)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (30,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (30,8)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (30,10)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (30,110)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (30,48)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (30,102)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(31,'Nidoqueen','/sites/default/files/styles/pokemon_small/public/2016-07/31.png','/sites/default/files/styles/240w/public/2016-07/31.png','/pokemon/31',1.30,60.00,2485,184,190,180)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (31,5)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (31,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (31,8)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (31,31)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (31,122)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (31,109)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (31,116)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(32,'Nidoran♂','/sites/default/files/styles/pokemon_small/public/2016-07/32.png','/sites/default/files/styles/240w/public/2016-07/32.png','/pokemon/32',0.50,9.00,843,110,94,92)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (32,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (32,24)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (32,10)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (32,84)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (32,47)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (32,102)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(33,'Nidorino','/sites/default/files/styles/pokemon_small/public/2016-07/33.png','/sites/default/files/styles/240w/public/2016-07/33.png','/pokemon/33',0.90,19.50,1372,142,128,122)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (33,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (33,10)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (33,31)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (33,110)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (33,47)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (33,102)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(34,'Nidoking','/sites/default/files/styles/pokemon_small/public/2016-07/34.png','/sites/default/files/styles/240w/public/2016-07/34.png','/pokemon/34',1.40,62.00,2475,204,170,162)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (34,5)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (34,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (34,2)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (34,31)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (34,122)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (34,115)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (34,109)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(35,'Clefairy','/sites/default/files/styles/pokemon_small/public/2016-07/35.png','/sites/default/files/styles/240w/public/2016-07/35.png','/pokemon/35',0.60,7.50,1200,116,124,140)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (35,18)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (35,16)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (35,29)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (35,84)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (35,51)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (35,117)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(36,'Clefable','/sites/default/files/styles/pokemon_small/public/2016-07/36.png','/sites/default/files/styles/240w/public/2016-07/36.png','/pokemon/36',1.30,40.00,2397,178,178,190)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (36,18)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (36,16)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (36,29)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (36,97)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (36,117)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (36,96)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(37,'Vulpix','/sites/default/files/styles/pokemon_small/public/2016-07/37.png','/sites/default/files/styles/240w/public/2016-07/37.png','/pokemon/37',0.60,9.90,831,106,118,76)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (37,10)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (37,23)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (37,22)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (37,84)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (37,100)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (37,55)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(38,'Ninetales','/sites/default/files/styles/pokemon_small/public/2016-07/38.png','/sites/default/files/styles/240w/public/2016-07/38.png','/pokemon/38',1.10,19.90,2188,176,194,146)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (38,10)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (38,23)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (38,30)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (38,119)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (38,100)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (38,114)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(39,'Jigglypuff','/sites/default/files/styles/pokemon_small/public/2016-07/39.png','/sites/default/files/styles/240w/public/2016-07/39.png','/pokemon/39',0.50,5.50,917,98,54,230)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (39,18)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (39,1)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (39,30)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (39,16)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (39,84)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (39,97)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (39,51)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(40,'Wigglytuff','/sites/default/files/styles/pokemon_small/public/2016-07/40.png','/sites/default/files/styles/240w/public/2016-07/40.png','/pokemon/40',1.00,12.00,2177,168,108,280)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (40,18)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (40,1)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (40,30)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (40,16)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (40,97)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (40,124)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (40,98)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(41,'Zubat','/sites/default/files/styles/pokemon_small/public/2016-07/41.png','/sites/default/files/styles/240w/public/2016-07/41.png','/pokemon/41',0.80,7.50,642,88,90,80)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (41,3)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (41,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (41,8)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (41,22)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (41,66)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (41,48)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (41,102)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(42,'Golbat','/sites/default/files/styles/pokemon_small/public/2016-07/42.png','/sites/default/files/styles/240w/public/2016-07/42.png','/pokemon/42',1.60,55.00,1921,164,164,150)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (42,3)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (42,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (42,8)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (42,21)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (42,66)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (42,48)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (42,59)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(43,'Oddish','/sites/default/files/styles/pokemon_small/public/2016-07/43.png','/sites/default/files/styles/240w/public/2016-07/43.png','/pokemon/43',0.50,5.40,1148,134,130,90)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (43,12)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (43,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (43,27)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (43,37)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (43,117)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (43,81)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (43,102)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(44,'Gloom','/sites/default/files/styles/pokemon_small/public/2016-07/44.png','/sites/default/files/styles/240w/public/2016-07/44.png','/pokemon/44',0.80,8.60,1689,162,158,120)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (44,12)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (44,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (44,27)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (44,37)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (44,117)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (44,106)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (44,102)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(45,'Vileplume','/sites/default/files/styles/pokemon_small/public/2016-07/45.png','/sites/default/files/styles/240w/public/2016-07/45.png','/pokemon/45',1.20,18.60,2492,202,190,150)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (45,12)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (45,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (45,27)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (45,37)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (45,117)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (45,106)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (45,123)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(46,'Paras','/sites/default/files/styles/pokemon_small/public/2016-07/46.png','/sites/default/files/styles/240w/public/2016-07/46.png','/pokemon/46',0.30,5.40,916,122,120,70)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (46,7)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (46,12)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (46,4)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (46,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (46,54)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (46,81)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (46,76)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(47,'Parasect','/sites/default/files/styles/pokemon_small/public/2016-07/47.png','/sites/default/files/styles/240w/public/2016-07/47.png','/pokemon/47',1.00,29.50,1747,162,170,120)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (47,7)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (47,12)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (47,4)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (47,2)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (47,54)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (47,123)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (47,76)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(48,'Venonat','/sites/default/files/styles/pokemon_small/public/2016-07/48.png','/sites/default/files/styles/240w/public/2016-07/48.png','/pokemon/48',1.00,30.00,1029,108,118,120)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (48,7)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (48,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (48,4)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (48,39)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (48,48)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (48,79)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (48,92)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(49,'Venomoth','/sites/default/files/styles/pokemon_small/public/2016-07/49.png','/sites/default/files/styles/240w/public/2016-07/49.png','/pokemon/49',1.50,12.50,1890,172,154,140)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (49,7)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (49,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (49,4)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (49,39)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (49,112)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (49,48)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (49,96)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(50,'Diglett','/sites/default/files/styles/pokemon_small/public/2016-07/50.png','/sites/default/files/styles/240w/public/2016-07/50.png','/pokemon/50',0.20,0.80,456,108,86,20)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (50,5)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (50,35)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (50,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (50,110)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (50,67)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (50,70)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(51,'Dugtrio','/sites/default/files/styles/pokemon_small/public/2016-07/51.png','/sites/default/files/styles/240w/public/2016-07/51.png','/pokemon/51',0.70,33.30,1168,148,140,70)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (51,5)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (51,35)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (51,15)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (51,122)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (51,67)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (51,116)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(52,'Meowth','/sites/default/files/styles/pokemon_small/public/2016-07/52.png','/sites/default/files/styles/240w/public/2016-07/52.png','/pokemon/52',0.40,4.20,756,104,94,80)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (52,1)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (52,8)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (52,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (52,84)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (52,88)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (52,71)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(53,'Persian','/sites/default/files/styles/pokemon_small/public/2016-07/53.png','/sites/default/files/styles/240w/public/2016-07/53.png','/pokemon/53',1.00,32.00,1631,156,146,130)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (53,1)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (53,30)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (53,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (53,71)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (53,98)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (53,87)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(54,'Psyduck','/sites/default/files/styles/pokemon_small/public/2016-07/54.png','/sites/default/files/styles/240w/public/2016-07/54.png','/pokemon/54',0.80,19.60,1109,132,112,100)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (54,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (54,13)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (54,29)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (54,89)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (54,103)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (54,79)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(55,'Golduck','/sites/default/files/styles/pokemon_small/public/2016-07/55.png','/sites/default/files/styles/240w/public/2016-07/55.png','/pokemon/55',1.70,76.60,2386,194,176,160)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (55,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (55,39)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (55,13)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (55,118)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (55,108)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (55,96)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(56,'Mankey','/sites/default/files/styles/pokemon_small/public/2016-07/56.png','/sites/default/files/styles/240w/public/2016-07/56.png','/pokemon/56',0.50,28.00,878,122,96,80)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (56,2)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (56,9)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (56,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (56,56)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (56,103)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (56,57)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(57,'Primeape','/sites/default/files/styles/pokemon_small/public/2016-07/57.png','/sites/default/files/styles/240w/public/2016-07/57.png','/pokemon/57',1.00,32.00,1864,178,150,130)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (57,2)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (57,9)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (57,3)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (57,103)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (57,57)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (57,71)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(58,'Growlithe','/sites/default/files/styles/pokemon_small/public/2016-07/58.png','/sites/default/files/styles/240w/public/2016-07/58.png','/pokemon/58',0.70,19.00,1335,156,110,110)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (58,10)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (58,8)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (58,23)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (58,84)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (58,83)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (58,100)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(59,'Arcanine','/sites/default/files/styles/pokemon_small/public/2016-07/59.png','/sites/default/files/styles/240w/public/2016-07/59.png','/pokemon/59',1.90,155.00,2983,230,180,180)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (59,10)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (59,8)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (59,25)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (59,75)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (59,119)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (59,100)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(60,'Poliwag','/sites/default/files/styles/pokemon_small/public/2016-07/60.png','/sites/default/files/styles/240w/public/2016-07/60.png','/pokemon/60',0.60,12.40,795,108,98,80)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (60,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (60,45)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (60,12)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (60,84)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (60,60)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (60,67)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(61,'Poliwhirl','/sites/default/files/styles/pokemon_small/public/2016-07/61.png','/sites/default/files/styles/240w/public/2016-07/61.png','/pokemon/61',1.00,20.00,1340,132,132,130)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (61,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (61,45)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (61,12)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (61,60)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (61,67)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (61,95)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(62,'Poliwrath','/sites/default/files/styles/pokemon_small/public/2016-07/62.png','/sites/default/files/styles/240w/public/2016-07/62.png','/pokemon/62',1.30,54.00,2505,180,202,180)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (62,2)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (62,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (62,45)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (62,12)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (62,118)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (62,91)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (62,58)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(63,'Abra','/sites/default/files/styles/pokemon_small/public/2016-07/63.png','/sites/default/files/styles/240w/public/2016-07/63.png','/pokemon/63',0.90,19.50,600,110,76,50)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (63,14)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (63,29)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (63,82)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (63,90)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (63,92)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(64,'Kadabra','/sites/default/files/styles/pokemon_small/public/2016-07/64.png','/sites/default/files/styles/240w/public/2016-07/64.png','/pokemon/64',1.30,56.50,1131,150,112,80)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (64,14)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (64,39)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (64,18)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (64,97)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (64,79)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (64,90)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(65,'Alakazam','/sites/default/files/styles/pokemon_small/public/2016-07/65.png','/sites/default/files/styles/240w/public/2016-07/65.png','/pokemon/65',1.50,48.00,1813,186,152,110)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (65,14)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (65,39)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (65,18)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (65,97)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (65,96)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (65,90)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(66,'Machop','/sites/default/files/styles/pokemon_small/public/2016-07/66.png','/sites/default/files/styles/240w/public/2016-07/66.png','/pokemon/66',0.80,19.50,1089,118,96,140)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (66,2)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (66,9)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (66,3)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (66,56)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (66,103)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (66,57)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(67,'Machoke','/sites/default/files/styles/pokemon_small/public/2016-07/67.png','/sites/default/files/styles/240w/public/2016-07/67.png','/pokemon/67',1.50,70.50,1760,154,144,160)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (67,2)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (67,9)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (67,3)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (67,56)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (67,103)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (67,58)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(68,'Machamp','/sites/default/files/styles/pokemon_small/public/2016-07/68.png','/sites/default/files/styles/240w/public/2016-07/68.png','/pokemon/68',1.60,130.00,2594,198,180,180)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (68,2)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (68,26)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (68,9)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (68,103)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (68,116)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (68,58)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(69,'Bellsprout','/sites/default/files/styles/pokemon_small/public/2016-07/69.png','/sites/default/files/styles/240w/public/2016-07/69.png','/pokemon/69',0.70,4.00,1117,158,78,100)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (69,12)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (69,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (69,27)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (69,17)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (69,111)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (69,102)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (69,49)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(70,'Weepinbell','/sites/default/files/styles/pokemon_small/public/2016-07/70_0.png','/sites/default/files/styles/240w/public/2016-07/70_0.png','/pokemon/70',1.00,6.40,1723,190,110,130)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (70,12)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (70,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (70,27)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (70,37)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (70,111)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (70,81)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (70,102)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(71,'Victreebel','/sites/default/files/styles/pokemon_small/public/2016-07/71.png','/sites/default/files/styles/240w/public/2016-07/71.png','/pokemon/71',1.70,15.50,2530,222,152,160)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (71,12)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (71,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (71,27)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (71,37)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (71,102)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (71,123)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (71,99)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(72,'Tentacool','/sites/default/files/styles/pokemon_small/public/2016-07/72.png','/sites/default/files/styles/240w/public/2016-07/72.png','/pokemon/72',0.90,45.50,905,106,136,80)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (72,4)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (72,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (72,45)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (72,10)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (72,60)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (72,74)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (72,49)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(73,'Tentacruel','/sites/default/files/styles/pokemon_small/public/2016-07/73.png','/sites/default/files/styles/240w/public/2016-07/73.png','/pokemon/73',1.60,55.00,2220,170,196,160)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (73,4)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (73,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (73,27)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (73,31)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (73,120)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (73,118)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (73,109)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(74,'Geodude','/sites/default/files/styles/pokemon_small/public/2016-07/74.png','/sites/default/files/styles/240w/public/2016-07/74.png','/pokemon/74',0.40,20.00,849,106,118,80)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (74,5)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (74,6)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (74,33)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (74,32)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (74,110)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (74,94)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (74,70)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(75,'Graveler','/sites/default/files/styles/pokemon_small/public/2016-07/75.png','/sites/default/files/styles/240w/public/2016-07/75.png','/pokemon/75',1.00,105.00,1433,142,156,110)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (75,5)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (75,6)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (75,35)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (75,32)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (75,110)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (75,94)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (75,116)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(76,'Golem','/sites/default/files/styles/pokemon_small/public/2016-07/76.png','/sites/default/files/styles/240w/public/2016-07/76.png','/pokemon/76',1.40,300.00,2303,176,198,160)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (76,5)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (76,6)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (76,35)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (76,32)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (76,77)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (76,122)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (76,116)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(77,'Ponyta','/sites/default/files/styles/pokemon_small/public/2016-07/77.png','/sites/default/files/styles/240w/public/2016-07/77.png','/pokemon/77',1.00,30.00,1516,168,138,100)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (77,10)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (77,33)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (77,23)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (77,119)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (77,83)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (77,55)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(78,'Rapidash','/sites/default/files/styles/pokemon_small/public/2016-07/78.png','/sites/default/files/styles/240w/public/2016-07/78.png','/pokemon/78',1.70,95.00,2199,200,170,130)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (78,10)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (78,23)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (78,3)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (78,119)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (78,114)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (78,93)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(79,'Slowpoke','/sites/default/files/styles/pokemon_small/public/2016-07/79.png','/sites/default/files/styles/240w/public/2016-07/79.png','/pokemon/79',1.20,36.00,1218,110,110,180)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (79,14)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (79,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (79,39)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (79,13)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (79,96)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (79,82)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (79,74)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(80,'Slowbro','/sites/default/files/styles/pokemon_small/public/2016-07/80_0.png','/sites/default/files/styles/240w/public/2016-07/80_0.png','/pokemon/80',1.60,78.50,2597,184,198,190)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (80,14)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (80,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (80,39)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (80,13)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (80,108)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (80,96)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (80,74)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(81,'Magnemite','/sites/default/files/styles/pokemon_small/public/2016-07/81.png','/sites/default/files/styles/240w/public/2016-07/81.png','/pokemon/81',0.30,6.00,890,128,138,50)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (81,13)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (81,9)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (81,14)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (81,6)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (81,78)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (81,61)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (81,101)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(82,'Magneton','/sites/default/files/styles/pokemon_small/public/2016-07/82.png','/sites/default/files/styles/240w/public/2016-07/82.png','/pokemon/82',1.00,60.00,1879,186,180,100)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (82,13)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (82,9)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (82,14)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (82,6)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (82,78)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (82,104)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (82,61)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(83,'Farfetch''d','/sites/default/files/styles/pokemon_small/public/2016-07/83.png','/sites/default/files/styles/240w/public/2016-07/83.png','/pokemon/83',0.80,15.00,1263,138,132,104)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (83,3)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (83,1)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (83,2)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (83,34)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (83,64)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (83,66)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (83,99)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(84,'Doduo','/sites/default/files/styles/pokemon_small/public/2016-07/84.png','/sites/default/files/styles/240w/public/2016-07/84.png','/pokemon/84',1.40,39.20,855,126,96,70)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (84,3)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (84,1)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (84,24)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (84,22)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (84,64)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (84,85)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (84,62)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(85,'Dodrio','/sites/default/files/styles/pokemon_small/public/2016-07/85.png','/sites/default/files/styles/240w/public/2016-07/85.png','/pokemon/85',1.80,85.20,1836,182,150,120)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (85,3)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (85,1)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (85,30)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (85,36)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (85,64)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (85,66)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (85,85)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(86,'Seel','/sites/default/files/styles/pokemon_small/public/2016-07/86.png','/sites/default/files/styles/240w/public/2016-07/86.png','/pokemon/86',1.10,90.00,1107,104,138,130)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (86,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (86,5)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (86,41)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (86,43)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (86,89)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (86,50)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(87,'Dewgong','/sites/default/files/styles/pokemon_small/public/2016-07/87.png','/sites/default/files/styles/240w/public/2016-07/87.png','/pokemon/87',1.70,120.00,2145,156,192,180)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (87,15)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (87,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (87,20)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (87,41)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (87,43)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (87,120)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (87,50)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(88,'Grimer','/sites/default/files/styles/pokemon_small/public/2016-07/88.png','/sites/default/files/styles/240w/public/2016-07/88.png','/pokemon/88',0.90,30.00,1284,124,110,160)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (88,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (88,35)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (88,31)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (88,67)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (88,68)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (88,102)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(89,'Muk','/sites/default/files/styles/pokemon_small/public/2016-07/89.png','/sites/default/files/styles/240w/public/2016-07/89.png','/pokemon/89',1.20,30.00,2602,180,188,210)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (89,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (89,5)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (89,31)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (89,88)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (89,105)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (89,109)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(90,'Shellder','/sites/default/files/styles/pokemon_small/public/2016-07/90.png','/sites/default/files/styles/240w/public/2016-07/90.png','/pokemon/90',0.30,4.00,822,120,112,60)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (90,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (90,33)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (90,41)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (90,60)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (90,50)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (90,74)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(91,'Cloyster','/sites/default/files/styles/pokemon_small/public/2016-07/91.png','/sites/default/files/styles/240w/public/2016-07/91.png','/pokemon/91',1.50,132.50,2052,196,196,100)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (91,15)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (91,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (91,20)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (91,41)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (91,120)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (91,118)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (91,50)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(92,'Gastly','/sites/default/files/styles/pokemon_small/public/2016-07/92.png','/sites/default/files/styles/240w/public/2016-07/92.png','/pokemon/92',1.30,0.10,804,136,82,60)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (92,8)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (92,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (92,5)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (92,15)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (92,88)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (92,102)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (92,59)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(93,'Haunter','/sites/default/files/styles/pokemon_small/public/2016-07/93.png','/sites/default/files/styles/240w/public/2016-07/93.png','/pokemon/93',1.60,0.10,1380,172,118,90)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (93,8)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (93,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (93,5)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (93,28)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (93,88)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (93,90)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (93,102)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(94,'Gengar','/sites/default/files/styles/pokemon_small/public/2016-07/94.png','/sites/default/files/styles/240w/public/2016-07/94.png','/pokemon/94',1.50,40.50,2078,204,156,120)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (94,8)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (94,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (94,15)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (94,28)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (94,88)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (94,90)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (94,102)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(95,'Onix','/sites/default/files/styles/pokemon_small/public/2016-07/95.png','/sites/default/files/styles/240w/public/2016-07/95.png','/pokemon/95',8.80,210.00,857,90,186,70)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (95,5)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (95,6)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (95,33)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (95,32)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (95,69)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (95,94)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (95,116)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(96,'Drowzee','/sites/default/files/styles/pokemon_small/public/2016-07/96.png','/sites/default/files/styles/240w/public/2016-07/96.png','/pokemon/96',1.00,32.40,1075,104,140,120)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (96,14)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (96,39)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (96,16)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (96,79)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (96,96)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (96,82)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(97,'Hypno','/sites/default/files/styles/pokemon_small/public/2016-07/97.png','/sites/default/files/styles/240w/public/2016-07/97.png','/pokemon/97',1.60,75.60,2184,162,196,170)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (97,14)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (97,39)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (97,29)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (97,96)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (97,82)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (97,90)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(98,'Krabby','/sites/default/files/styles/pokemon_small/public/2016-07/98.png','/sites/default/files/styles/240w/public/2016-07/98.png','/pokemon/98',0.40,6.50,792,116,110,60)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (98,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (98,45)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (98,12)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (98,60)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (98,44)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (98,74)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(99,'Kingler','/sites/default/files/styles/pokemon_small/public/2016-07/99.png','/sites/default/files/styles/240w/public/2016-07/99.png','/pokemon/99',1.30,60.00,1823,178,168,110)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (99,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (99,19)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (99,12)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (99,44)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (99,74)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (99,76)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(100,'Voltorb','/sites/default/files/styles/pokemon_small/public/2016-07/100.png','/sites/default/files/styles/240w/public/2016-07/100.png','/pokemon/100',0.50,10.40,839,102,124,80)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (100,13)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (100,33)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (100,14)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (100,78)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (100,92)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (100,101)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(101,'Electrode','/sites/default/files/styles/pokemon_small/public/2016-07/101.png','/sites/default/files/styles/240w/public/2016-07/101.png','/pokemon/101',1.20,66.60,1646,150,174,120)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (101,13)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (101,33)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (101,14)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (101,78)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (101,124)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (101,101)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(102,'Exeggcute','/sites/default/files/styles/pokemon_small/public/2016-07/102.png','/sites/default/files/styles/240w/public/2016-07/102.png','/pokemon/102',0.40,2.50,1099,110,132,120)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (102,12)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (102,14)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (102,39)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (102,77)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (102,96)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (102,81)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(103,'Exeggutor','/sites/default/files/styles/pokemon_small/public/2016-07/103.png','/sites/default/files/styles/240w/public/2016-07/103.png','/pokemon/103',2.00,120.00,2955,232,164,190)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (103,12)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (103,14)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (103,39)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (103,29)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (103,96)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (103,81)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (103,123)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(104,'Cubone','/sites/default/files/styles/pokemon_small/public/2016-07/104.png','/sites/default/files/styles/240w/public/2016-07/104.png','/pokemon/104',0.40,6.50,1006,102,150,100)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (104,5)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (104,35)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (104,38)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (104,53)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (104,75)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (104,110)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(105,'Marowak','/sites/default/files/styles/pokemon_small/public/2016-07/105.png','/sites/default/files/styles/240w/public/2016-07/105.png','/pokemon/105',1.00,45.00,1656,140,202,120)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (105,5)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (105,35)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (105,38)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (105,53)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (105,110)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (105,122)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(106,'Hitmonlee','/sites/default/files/styles/pokemon_small/public/2016-07/106.png','/sites/default/files/styles/240w/public/2016-07/106.png','/pokemon/106',1.50,49.80,1492,148,172,100)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (106,2)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (106,3)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (106,38)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (106,56)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (106,57)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (106,116)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(107,'Hitmonchan','/sites/default/files/styles/pokemon_small/public/2016-07/107.png','/sites/default/files/styles/240w/public/2016-07/107.png','/pokemon/107',1.40,50.20,1516,138,204,100)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (107,2)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (107,26)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (107,38)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (107,56)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (107,80)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (107,91)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (107,86)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(108,'Lickitung','/sites/default/files/styles/pokemon_small/public/2016-07/108.png','/sites/default/files/styles/240w/public/2016-07/108.png','/pokemon/108',1.20,65.50,1626,126,160,180)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (108,1)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (108,5)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (108,29)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (108,124)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (108,111)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (108,65)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(109,'Koffing','/sites/default/files/styles/pokemon_small/public/2016-07/109.png','/sites/default/files/styles/240w/public/2016-07/109.png','/pokemon/109',0.60,1.00,1151,136,142,80)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (109,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (109,33)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (109,88)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (109,68)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (109,102)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(110,'Weezing','/sites/default/files/styles/pokemon_small/public/2016-07/110.png','/sites/default/files/styles/240w/public/2016-07/110.png','/pokemon/110',1.20,9.50,2250,190,198,130)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (110,4)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (110,33)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (110,88)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (110,90)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (110,102)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(111,'Rhyhorn','/sites/default/files/styles/pokemon_small/public/2016-07/111.png','/sites/default/files/styles/240w/public/2016-07/111.png','/pokemon/111',1.00,115.00,1182,110,116,160)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (111,5)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (111,6)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (111,35)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (111,38)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (111,75)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (111,47)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (111,65)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(112,'Rhydon','/sites/default/files/styles/pokemon_small/public/2016-07/112.png','/sites/default/files/styles/240w/public/2016-07/112.png','/pokemon/112',1.90,120.00,2243,166,160,210)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (112,5)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (112,6)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (112,35)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (112,38)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (112,122)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (112,115)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (112,116)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(113,'Chansey','/sites/default/files/styles/pokemon_small/public/2016-07/113.png','/sites/default/files/styles/240w/public/2016-07/113.png','/pokemon/113',1.10,34.60,675,40,60,500)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (113,1)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (113,16)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (113,29)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (113,97)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (113,124)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (113,96)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(114,'Tangela','/sites/default/files/styles/pokemon_small/public/2016-07/114.png','/sites/default/files/styles/240w/public/2016-07/114.png','/pokemon/114',1.00,35.00,1739,164,152,130)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (114,12)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (114,17)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (114,111)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (114,102)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (114,123)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(115,'Kangaskhan','/sites/default/files/styles/pokemon_small/public/2016-07/115.png','/sites/default/files/styles/240w/public/2016-07/115.png','/pokemon/115',2.20,80.00,2043,142,178,210)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (115,1)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (115,3)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (115,35)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (115,56)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (115,122)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (115,65)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(116,'Horsea','/sites/default/files/styles/pokemon_small/public/2016-07/116.png','/sites/default/files/styles/240w/public/2016-07/116.png','/pokemon/116',0.40,8.00,794,122,100,60)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (116,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (116,45)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (116,13)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (116,60)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (116,107)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (116,104)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(117,'Seadra','/sites/default/files/styles/pokemon_small/public/2016-07/117.png','/sites/default/files/styles/240w/public/2016-07/117.png','/pokemon/117',1.20,25.00,1713,176,150,110)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (117,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (117,7)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (117,13)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (117,120)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (117,107)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (117,118)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(118,'Goldeen','/sites/default/files/styles/pokemon_small/public/2016-07/118.png','/sites/default/files/styles/240w/public/2016-07/118.png','/pokemon/118',0.60,15.00,965,112,126,90)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (118,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (118,12)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (118,24)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (118,89)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (118,47)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (118,74)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(119,'Seaking','/sites/default/files/styles/pokemon_small/public/2016-07/119.png','/sites/default/files/styles/240w/public/2016-07/119.png','/pokemon/119',1.30,39.00,2043,172,160,160)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (119,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (119,24)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (119,31)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (119,50)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (119,115)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (119,93)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(120,'Staryu','/sites/default/files/styles/pokemon_small/public/2016-07/120.png','/sites/default/files/styles/240w/public/2016-07/120.png','/pokemon/120',1.10,80.00,937,130,128,60)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (120,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (120,33)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (120,13)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (120,60)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (120,87)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (120,62)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(121,'Starmie','/sites/default/files/styles/pokemon_small/public/2016-07/121.png','/sites/default/files/styles/240w/public/2016-07/121.png','/pokemon/121',1.10,80.00,2182,194,192,120)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (121,14)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (121,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (121,33)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (121,13)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (121,118)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (121,87)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (121,96)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(122,'Mr. Mime','/sites/default/files/styles/pokemon_small/public/2016-07/122.png','/sites/default/files/styles/240w/public/2016-07/122.png','/pokemon/122',1.30,54.50,1494,154,196,80)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (122,18)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (122,14)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (122,39)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (122,29)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (122,79)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (122,96)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (122,90)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(123,'Scyther','/sites/default/files/styles/pokemon_small/public/2016-07/123.png','/sites/default/files/styles/240w/public/2016-07/123.png','/pokemon/123',1.50,56.00,2073,176,180,140)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (123,7)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (123,3)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (123,2)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (123,36)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (123,112)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (123,71)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (123,76)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(124,'Jynx','/sites/default/files/styles/pokemon_small/public/2016-07/124.png','/sites/default/files/styles/240w/public/2016-07/124.png','/pokemon/124',1.40,40.60,1716,172,134,130)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (124,15)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (124,14)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (124,20)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (124,16)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (124,46)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (124,91)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (124,82)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(125,'Electabuzz','/sites/default/files/styles/pokemon_small/public/2016-07/125.png','/sites/default/files/styles/240w/public/2016-07/125.png','/pokemon/125',1.10,30.00,2119,198,160,130)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (125,13)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (125,3)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (125,6)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (125,121)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (125,86)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (125,101)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(126,'Magmar','/sites/default/files/styles/pokemon_small/public/2016-07/126.png','/sites/default/files/styles/240w/public/2016-07/126.png','/pokemon/126',1.30,44.50,2265,214,158,130)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (126,10)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (126,23)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (126,9)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (126,119)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (126,80)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (126,100)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(127,'Pinsir','/sites/default/files/styles/pokemon_small/public/2016-07/127.png','/sites/default/files/styles/240w/public/2016-07/127.png','/pokemon/127',1.50,55.00,2121,184,186,130)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (127,7)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (127,2)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (127,38)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (127,58)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (127,44)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (127,76)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(128,'Tauros','/sites/default/files/styles/pokemon_small/public/2016-07/128.png','/sites/default/files/styles/240w/public/2016-07/128.png','/pokemon/128',1.40,88.40,1844,148,184,150)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (128,1)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (128,33)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (128,29)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (128,122)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (128,47)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (128,69)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(129,'Magikarp','/sites/default/files/styles/pokemon_small/public/2016-07/129.png','/sites/default/files/styles/240w/public/2016-07/129.png','/pokemon/129',0.90,10.00,262,42,84,40)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (129,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (129,1)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (129,40)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(130,'Gyarados','/sites/default/files/styles/pokemon_small/public/2016-07/130.png','/sites/default/files/styles/240w/public/2016-07/130.png','/pokemon/130',6.50,235.00,2688,192,196,190)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (130,3)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (130,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (130,8)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (130,107)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (130,118)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (130,42)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(131,'Lapras','/sites/default/files/styles/pokemon_small/public/2016-07/131.png','/sites/default/files/styles/240w/public/2016-07/131.png','/pokemon/131',2.50,220.00,2980,186,190,260)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (131,15)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (131,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (131,20)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (131,41)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (131,120)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (131,107)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (131,108)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(132,'Ditto','/sites/default/files/styles/pokemon_small/public/2016-07/132.png','/sites/default/files/styles/240w/public/2016-07/132.png','/pokemon/132',0.30,4.00,919,110,110,96)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (132,1)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (132,16)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (132,40)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(133,'Eevee','/sites/default/files/styles/pokemon_small/public/2016-07/133.png','/sites/default/files/styles/240w/public/2016-07/133.png','/pokemon/133',0.30,6.50,1077,114,128,110)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (133,1)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (133,33)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (133,22)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (133,84)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (133,110)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (133,62)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(134,'Vaporeon','/sites/default/files/styles/pokemon_small/public/2016-07/134.png','/sites/default/files/styles/240w/public/2016-07/134.png','/pokemon/134',1.00,29.00,2816,186,168,260)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (134,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (134,13)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (134,89)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (134,118)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (134,74)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(135,'Jolteon','/sites/default/files/styles/pokemon_small/public/2016-07/135.png','/sites/default/files/styles/240w/public/2016-07/135.png','/pokemon/135',0.80,24.50,2140,192,174,130)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (135,13)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (135,6)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (135,78)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (135,121)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (135,101)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(136,'Flareon','/sites/default/files/styles/pokemon_small/public/2016-07/136.png','/sites/default/files/styles/240w/public/2016-07/136.png','/pokemon/136',0.90,25.00,2643,238,178,130)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (136,10)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (136,23)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (136,119)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (136,100)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (136,114)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(137,'Porygon','/sites/default/files/styles/pokemon_small/public/2016-07/137.png','/sites/default/files/styles/240w/public/2016-07/137.png','/pokemon/137',0.80,36.50,1691,156,158,130)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (137,1)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (137,33)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (137,29)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (137,78)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (137,79)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (137,92)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(138,'Omanyte','/sites/default/files/styles/pokemon_small/public/2016-07/138.png','/sites/default/files/styles/240w/public/2016-07/138.png','/pokemon/138',0.40,7.50,1119,132,160,70)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (138,6)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (138,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (138,12)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (138,13)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (138,77)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (138,70)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (138,52)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(139,'Omastar','/sites/default/files/styles/pokemon_small/public/2016-07/139.png','/sites/default/files/styles/240w/public/2016-07/139.png','/pokemon/139',1.00,35.00,2233,180,202,140)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (139,6)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (139,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (139,12)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (139,13)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (139,77)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (139,118)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (139,94)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(140,'Kabuto','/sites/default/files/styles/pokemon_small/public/2016-07/140.png','/sites/default/files/styles/240w/public/2016-07/140.png','/pokemon/140',0.50,11.50,1104,148,142,60)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (140,6)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (140,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (140,12)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (140,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (140,77)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (140,43)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (140,70)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(141,'Kabutops','/sites/default/files/styles/pokemon_small/public/2016-07/141.png','/sites/default/files/styles/240w/public/2016-07/141.png','/pokemon/141',1.30,40.50,2130,190,190,120)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (141,6)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (141,11)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (141,2)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (141,12)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (141,77)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (141,116)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (141,74)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(142,'Aerodactyl','/sites/default/files/styles/pokemon_small/public/2016-07/142.png','/sites/default/files/styles/240w/public/2016-07/142.png','/pokemon/142',1.80,59.00,2165,182,162,160)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (142,3)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (142,6)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (142,8)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (142,36)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (142,77)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (142,124)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (142,69)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(143,'Snorlax','/sites/default/files/styles/pokemon_small/public/2016-07/143.png','/sites/default/files/styles/240w/public/2016-07/143.png','/pokemon/143',2.10,460.00,3112,180,180,320)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (143,1)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (143,5)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (143,29)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (143,84)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (143,122)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (143,124)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(144,'Articuno','/sites/default/files/styles/pokemon_small/public/2016-07/144.png','/sites/default/files/styles/240w/public/2016-07/144.png','/pokemon/144',1.70,55.40,2978,198,242,180)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (144,3)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (144,15)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (144,20)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (144,120)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (144,108)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (144,50)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(145,'Zapdos','/sites/default/files/styles/pokemon_small/public/2016-07/145.png','/sites/default/files/styles/240w/public/2016-07/145.png','/pokemon/145',1.60,52.60,3114,232,194,180)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (145,13)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (145,3)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (145,6)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (145,78)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (145,121)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (145,101)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(146,'Moltres','/sites/default/files/styles/pokemon_small/public/2016-07/146.png','/sites/default/files/styles/240w/public/2016-07/146.png','/pokemon/146',2.00,60.00,3240,242,194,180)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (146,10)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (146,3)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (146,23)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (146,119)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (146,100)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (146,114)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(147,'Dratini','/sites/default/files/styles/pokemon_small/public/2016-07/147.png','/sites/default/files/styles/240w/public/2016-07/147.png','/pokemon/147',1.80,3.30,983,128,110,82)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (147,16)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (147,7)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (147,89)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (147,42)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (147,49)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(148,'Dragonair','/sites/default/files/styles/pokemon_small/public/2016-07/148.png','/sites/default/files/styles/240w/public/2016-07/148.png','/pokemon/148',4.00,16.50,1747,170,152,122)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (148,16)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (148,7)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (148,89)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (148,107)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (148,49)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(149,'Dragonite','/sites/default/files/styles/pokemon_small/public/2016-07/149.png','/sites/default/files/styles/240w/public/2016-07/149.png','/pokemon/149',2.20,210.00,3500,250,212,182)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (149,16)
INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (149,3)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (149,7)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (149,36)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (149,72)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (149,107)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (149,124)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(150,'Mewtwo','/sites/default/files/styles/pokemon_small/public/2016-07/150.png','/sites/default/files/styles/240w/public/2016-07/150.png','/pokemon/150',2.00,122.00,4144,284,202,212)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (150,14)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (150,39)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (150,18)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (150,124)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (150,96)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (150,90)
;

INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES 
(151,'Mew','/sites/default/files/styles/pokemon_small/public/2016-07/151.png','/sites/default/files/styles/240w/public/2016-07/151.png','/pokemon/151',0.40,4.00,3299,220,220,200)
;

INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES (151,14)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (151,16)
;

INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (151,120)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (151,107)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (151,122)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (151,119)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (151,124)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (151,96)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (151,123)
INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES (151,121)
;
