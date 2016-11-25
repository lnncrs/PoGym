/****** Object:  Database pogym    Script Date: 16/11/2016 15:48:50 ******/
CREATE DATABASE pogym
;
USE pogym
;
/****** Object:  Table attacks    Script Date: 16/11/2016 15:48:50 ******/
CREATE TABLE attacks(
	attack_id int NOT NULL,
	attack_type_id int NOT NULL,
	name nvarchar(100) NOT NULL,
	type_id int NOT NULL,
	damage decimal(18, 2) NOT NULL,
	damage_stab decimal(18, 2) AS (damage*(1.25)),
	damageps decimal(18, 2) NOT NULL,
	damageps_stab decimal(18, 2) AS (damageps*(1.25)),
	move_cooldown decimal(18, 2) NOT NULL,
 CONSTRAINT PK_attacks PRIMARY KEY CLUSTERED 
(
	attack_id ASC
)
);
/****** Object:  Table attacks_charge    Script Date: 16/11/2016 15:48:50 ******/
CREATE TABLE attacks_charge(
	attack_id int NOT NULL,
	charge int NOT NULL,
	critical decimal(18, 2) NOT NULL,
	dodge decimal(18, 2) NOT NULL,
 CONSTRAINT PK_attacks_charge PRIMARY KEY CLUSTERED 
(
	attack_id ASC
)
);
/****** Object:  Table attacks_quick    Script Date: 16/11/2016 15:48:50 ******/
CREATE TABLE attacks_quick(
	attack_id int NOT NULL,
	energyps decimal(18, 2) NOT NULL,
	energypu decimal(18, 2) NOT NULL,
	defensive_damageps decimal(18, 2) NOT NULL,
 CONSTRAINT PK_attacks_quick PRIMARY KEY CLUSTERED 
(
	attack_id ASC
)
);
/****** Object:  Table attacks_types    Script Date: 16/11/2016 15:48:50 ******/
CREATE TABLE attacks_types(
	attack_type_id int NOT NULL,
	type nvarchar(100) NOT NULL,
 CONSTRAINT PK_attack_types PRIMARY KEY CLUSTERED 
(
	attack_type_id ASC
)
);
/****** Object:  Table pokemons    Script Date: 16/11/2016 15:48:50 ******/
CREATE TABLE pokemons(
	pokemon_id int NOT NULL,
	evolvefrom_pokemon_id int NULL,
	name nvarchar(100) NOT NULL,
	icon nvarchar(400) NULL,
	image nvarchar(400) NULL,
	url nvarchar(400) NOT NULL,
	height_avg decimal(18, 2) NOT NULL,
	weight_avg decimal(18, 2) NOT NULL,
	combatpower_max int NOT NULL,
	attack_base int NOT NULL,
	defense_base int NOT NULL,
	stamina_base int NOT NULL,
 CONSTRAINT PK_pokemon PRIMARY KEY CLUSTERED 
(
	pokemon_id ASC
)
);
/****** Object:  Table pokemons_attacks    Script Date: 16/11/2016 15:48:50 ******/
CREATE TABLE pokemons_attacks(
	pokemon_attack_id int AUTO_INCREMENT NOT NULL,
	pokemon_id int NOT NULL,
	attack_id int NOT NULL,
	true_damageps decimal(18, 2) NULL,
 CONSTRAINT PK_pokemons_attacks PRIMARY KEY CLUSTERED 
(
	pokemon_attack_id ASC
)
);
/****** Object:  Table pokemons_types    Script Date: 16/11/2016 15:48:50 ******/
CREATE TABLE pokemons_types(
	pokemon_type_id int AUTO_INCREMENT NOT NULL,
	pokemon_id int NOT NULL,
	type_id int NOT NULL,
 CONSTRAINT PK_pokemons_types PRIMARY KEY CLUSTERED 
(
	pokemon_type_id ASC
)
);
/****** Object:  Table types    Script Date: 16/11/2016 15:48:50 ******/
CREATE TABLE types(
	type_id int NOT NULL,
	type nvarchar(100) NOT NULL,
	icon nvarchar(400) NULL,
 CONSTRAINT PK_types PRIMARY KEY CLUSTERED 
(
	type_id ASC
)
);
/****** Object:  Table types_types    Script Date: 16/11/2016 15:48:50 ******/
CREATE TABLE types_types(
	type_type_id int AUTO_INCREMENT NOT NULL,
	attacker_type_id int NOT NULL,
	defender_type_id int NOT NULL,
	multiplier decimal(18, 4) NOT NULL,
 CONSTRAINT PK_types_types PRIMARY KEY CLUSTERED 
(
	type_type_id ASC
)
);
/****** Object:  Table TypesMultiplier    Script Date: 16/11/2016 15:48:50 ******/
CREATE TABLE TypesMultiplier(
	ID int AUTO_INCREMENT NOT NULL,
	TYPE nvarchar(255) NULL,
	NORMAL float NULL,
	FIGHTING float NULL,
	FLYING float NULL,
	POISON float NULL,
	GROUND float NULL,
	ROCK float NULL,
	BUG float NULL,
	GHOST float NULL,
	STEEL float NULL,
	FIRE float NULL,
	WATER float NULL,
	GRASS float NULL,
	ELECTRIC float NULL,
	PSYCHIC float NULL,
	ICE float NULL,
	DRAGON float NULL,
	DARK float NULL,
	FAIRY float NULL,
 CONSTRAINT PK_TypesMultiplier PRIMARY KEY CLUSTERED 
(
	ID ASC
)
);
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (1, 1, N'Splash', 11, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(1.23 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (2, 1, N'Fury Cutter', 7, CAST(3.00 AS Decimal(18, 2)), CAST(7.50 AS Decimal(18, 2)), CAST(0.40 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (3, 1, N'Low Kick', 2, CAST(5.00 AS Decimal(18, 2)), CAST(8.33 AS Decimal(18, 2)), CAST(0.60 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (4, 1, N'Bug Bite', 7, CAST(5.00 AS Decimal(18, 2)), CAST(11.11 AS Decimal(18, 2)), CAST(0.45 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (5, 1, N'Lick', 8, CAST(5.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(0.50 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (6, 1, N'Thunder Shock', 13, CAST(5.00 AS Decimal(18, 2)), CAST(8.33 AS Decimal(18, 2)), CAST(0.60 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (7, 1, N'Dragon Breath', 16, CAST(6.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), CAST(0.50 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (8, 1, N'Bite', 17, CAST(6.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), CAST(0.50 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (9, 1, N'Karate Chop', 2, CAST(6.00 AS Decimal(18, 2)), CAST(7.50 AS Decimal(18, 2)), CAST(0.80 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (10, 1, N'Poison Sting', 4, CAST(6.00 AS Decimal(18, 2)), CAST(10.43 AS Decimal(18, 2)), CAST(0.58 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (11, 1, N'Scratch', 1, CAST(6.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), CAST(0.50 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (12, 1, N'Mud Shot', 5, CAST(6.00 AS Decimal(18, 2)), CAST(10.91 AS Decimal(18, 2)), CAST(0.55 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (13, 1, N'Water Gun', 11, CAST(6.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), CAST(0.50 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (14, 1, N'Spark', 13, CAST(7.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(0.70 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (15, 1, N'Sucker Punch', 17, CAST(7.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(0.70 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (16, 1, N'Pound', 1, CAST(7.00 AS Decimal(18, 2)), CAST(12.96 AS Decimal(18, 2)), CAST(0.54 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (17, 1, N'Vine Whip', 12, CAST(7.00 AS Decimal(18, 2)), CAST(10.77 AS Decimal(18, 2)), CAST(0.65 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (18, 1, N'Psycho Cut', 14, CAST(7.00 AS Decimal(18, 2)), CAST(12.28 AS Decimal(18, 2)), CAST(0.57 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (19, 1, N'Metal Claw', 9, CAST(8.00 AS Decimal(18, 2)), CAST(12.70 AS Decimal(18, 2)), CAST(0.63 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (20, 1, N'Frost Breath', 15, CAST(9.00 AS Decimal(18, 2)), CAST(11.11 AS Decimal(18, 2)), CAST(0.81 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (21, 1, N'Wing Attack', 3, CAST(9.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), CAST(0.75 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (22, 1, N'Quick Attack', 1, CAST(10.00 AS Decimal(18, 2)), CAST(7.52 AS Decimal(18, 2)), CAST(1.33 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (23, 1, N'Ember', 10, CAST(10.00 AS Decimal(18, 2)), CAST(9.52 AS Decimal(18, 2)), CAST(1.05 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (24, 1, N'Peck', 3, CAST(10.00 AS Decimal(18, 2)), CAST(8.70 AS Decimal(18, 2)), CAST(1.15 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (25, 1, N'Fire Fang', 10, CAST(10.00 AS Decimal(18, 2)), CAST(11.90 AS Decimal(18, 2)), CAST(0.84 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (26, 1, N'Bullet Punch', 9, CAST(10.00 AS Decimal(18, 2)), CAST(8.33 AS Decimal(18, 2)), CAST(1.20 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (27, 1, N'Acid', 4, CAST(10.00 AS Decimal(18, 2)), CAST(9.52 AS Decimal(18, 2)), CAST(1.05 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (28, 1, N'Shadow Claw', 8, CAST(11.00 AS Decimal(18, 2)), CAST(11.58 AS Decimal(18, 2)), CAST(0.95 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (29, 1, N'Zen Headbutt', 14, CAST(12.00 AS Decimal(18, 2)), CAST(11.43 AS Decimal(18, 2)), CAST(1.05 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (30, 1, N'Feint Attack', 17, CAST(12.00 AS Decimal(18, 2)), CAST(11.54 AS Decimal(18, 2)), CAST(1.04 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (31, 1, N'Poison Jab', 4, CAST(12.00 AS Decimal(18, 2)), CAST(11.43 AS Decimal(18, 2)), CAST(1.05 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (32, 1, N'Rock Throw', 6, CAST(12.00 AS Decimal(18, 2)), CAST(8.82 AS Decimal(18, 2)), CAST(1.36 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (33, 1, N'Tackle', 1, CAST(12.00 AS Decimal(18, 2)), CAST(10.91 AS Decimal(18, 2)), CAST(1.10 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (34, 1, N'Cut', 1, CAST(12.00 AS Decimal(18, 2)), CAST(10.62 AS Decimal(18, 2)), CAST(1.13 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (35, 1, N'Mud Slap', 5, CAST(15.00 AS Decimal(18, 2)), CAST(11.11 AS Decimal(18, 2)), CAST(1.35 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (36, 1, N'Steel Wing', 9, CAST(15.00 AS Decimal(18, 2)), CAST(11.28 AS Decimal(18, 2)), CAST(1.33 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (37, 1, N'Razor Leaf', 12, CAST(15.00 AS Decimal(18, 2)), CAST(10.34 AS Decimal(18, 2)), CAST(1.45 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (38, 1, N'Rock Smash', 2, CAST(15.00 AS Decimal(18, 2)), CAST(10.64 AS Decimal(18, 2)), CAST(1.41 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (39, 1, N'Confusion', 14, CAST(15.00 AS Decimal(18, 2)), CAST(9.93 AS Decimal(18, 2)), CAST(1.51 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (40, 2, N'Struggle', 1, CAST(15.00 AS Decimal(18, 2)), CAST(8.85 AS Decimal(18, 2)), CAST(1.70 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (41, 1, N'Ice Shard', 15, CAST(15.00 AS Decimal(18, 2)), CAST(10.71 AS Decimal(18, 2)), CAST(1.40 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (42, 2, N'Twister', 16, CAST(25.00 AS Decimal(18, 2)), CAST(9.26 AS Decimal(18, 2)), CAST(2.70 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (43, 2, N'Aqua Jet', 11, CAST(25.00 AS Decimal(18, 2)), CAST(10.64 AS Decimal(18, 2)), CAST(2.35 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (44, 2, N'Vice Grip', 1, CAST(25.00 AS Decimal(18, 2)), CAST(11.90 AS Decimal(18, 2)), CAST(2.10 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (45, 1, N'Bubble', 11, CAST(25.00 AS Decimal(18, 2)), CAST(10.87 AS Decimal(18, 2)), CAST(2.30 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (46, 2, N'Draining Kiss', 18, CAST(25.00 AS Decimal(18, 2)), CAST(8.93 AS Decimal(18, 2)), CAST(2.80 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (47, 2, N'Horn Attack', 1, CAST(25.00 AS Decimal(18, 2)), CAST(11.36 AS Decimal(18, 2)), CAST(2.20 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (48, 2, N'Poison Fang', 4, CAST(25.00 AS Decimal(18, 2)), CAST(10.42 AS Decimal(18, 2)), CAST(2.40 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (49, 2, N'Wrap', 1, CAST(25.00 AS Decimal(18, 2)), CAST(6.25 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (50, 2, N'Icy Wind', 15, CAST(25.00 AS Decimal(18, 2)), CAST(6.58 AS Decimal(18, 2)), CAST(3.80 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (51, 2, N'Disarming Voice', 18, CAST(25.00 AS Decimal(18, 2)), CAST(6.41 AS Decimal(18, 2)), CAST(3.90 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (52, 2, N'Brine', 11, CAST(25.00 AS Decimal(18, 2)), CAST(10.42 AS Decimal(18, 2)), CAST(2.40 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (53, 2, N'Bone Club', 5, CAST(25.00 AS Decimal(18, 2)), CAST(15.63 AS Decimal(18, 2)), CAST(1.60 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (54, 2, N'Cross Poison', 4, CAST(25.00 AS Decimal(18, 2)), CAST(16.67 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (55, 2, N'Flame Charge', 10, CAST(25.00 AS Decimal(18, 2)), CAST(8.06 AS Decimal(18, 2)), CAST(3.10 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (56, 2, N'Brick Break', 2, CAST(30.00 AS Decimal(18, 2)), CAST(18.75 AS Decimal(18, 2)), CAST(1.60 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (57, 2, N'Low Sweep', 2, CAST(30.00 AS Decimal(18, 2)), CAST(13.33 AS Decimal(18, 2)), CAST(2.25 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (58, 2, N'Submission', 2, CAST(30.00 AS Decimal(18, 2)), CAST(14.29 AS Decimal(18, 2)), CAST(2.10 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (59, 2, N'Ominous Wind', 8, CAST(30.00 AS Decimal(18, 2)), CAST(9.68 AS Decimal(18, 2)), CAST(3.10 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (60, 2, N'Bubble Beam', 11, CAST(30.00 AS Decimal(18, 2)), CAST(10.34 AS Decimal(18, 2)), CAST(2.90 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (61, 2, N'Magnet Bomb', 9, CAST(30.00 AS Decimal(18, 2)), CAST(10.71 AS Decimal(18, 2)), CAST(2.80 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (62, 2, N'Swift', 1, CAST(30.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (63, 2, N'Flame Burst', 10, CAST(30.00 AS Decimal(18, 2)), CAST(14.29 AS Decimal(18, 2)), CAST(2.10 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (64, 2, N'Aerial Ace', 3, CAST(30.00 AS Decimal(18, 2)), CAST(10.34 AS Decimal(18, 2)), CAST(2.90 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (65, 2, N'Stomp', 1, CAST(30.00 AS Decimal(18, 2)), CAST(14.29 AS Decimal(18, 2)), CAST(2.10 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (66, 2, N'Air Cutter', 3, CAST(30.00 AS Decimal(18, 2)), CAST(9.09 AS Decimal(18, 2)), CAST(3.30 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (67, 2, N'Mud Bomb', 5, CAST(30.00 AS Decimal(18, 2)), CAST(11.54 AS Decimal(18, 2)), CAST(2.60 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (68, 2, N'Sludge', 4, CAST(30.00 AS Decimal(18, 2)), CAST(11.54 AS Decimal(18, 2)), CAST(2.60 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (69, 2, N'Iron Head', 9, CAST(30.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (70, 2, N'Rock Tomb', 6, CAST(30.00 AS Decimal(18, 2)), CAST(8.82 AS Decimal(18, 2)), CAST(3.40 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (71, 2, N'Night Slash', 17, CAST(30.00 AS Decimal(18, 2)), CAST(11.11 AS Decimal(18, 2)), CAST(2.70 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (72, 2, N'Dragon Claw', 16, CAST(35.00 AS Decimal(18, 2)), CAST(21.88 AS Decimal(18, 2)), CAST(1.60 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (73, 2, N'Hyper Fang', 1, CAST(35.00 AS Decimal(18, 2)), CAST(16.67 AS Decimal(18, 2)), CAST(2.10 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (74, 2, N'Water Pulse', 11, CAST(35.00 AS Decimal(18, 2)), CAST(10.61 AS Decimal(18, 2)), CAST(3.30 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (75, 2, N'Bulldoze', 5, CAST(35.00 AS Decimal(18, 2)), CAST(10.29 AS Decimal(18, 2)), CAST(3.40 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (76, 2, N'X-Scissor', 7, CAST(35.00 AS Decimal(18, 2)), CAST(16.67 AS Decimal(18, 2)), CAST(2.10 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (77, 2, N'Ancient Power', 6, CAST(35.00 AS Decimal(18, 2)), CAST(9.72 AS Decimal(18, 2)), CAST(3.60 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (78, 2, N'Discharge', 13, CAST(35.00 AS Decimal(18, 2)), CAST(14.00 AS Decimal(18, 2)), CAST(2.50 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (79, 2, N'Psybeam', 14, CAST(40.00 AS Decimal(18, 2)), CAST(10.53 AS Decimal(18, 2)), CAST(3.80 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (80, 2, N'Fire Punch', 10, CAST(40.00 AS Decimal(18, 2)), CAST(14.29 AS Decimal(18, 2)), CAST(2.80 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (81, 2, N'Seed Bomb', 12, CAST(40.00 AS Decimal(18, 2)), CAST(16.67 AS Decimal(18, 2)), CAST(2.40 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (82, 2, N'Psyshock', 14, CAST(40.00 AS Decimal(18, 2)), CAST(14.81 AS Decimal(18, 2)), CAST(2.70 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (83, 2, N'Flame Wheel', 10, CAST(40.00 AS Decimal(18, 2)), CAST(8.70 AS Decimal(18, 2)), CAST(4.60 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (84, 2, N'Body Slam', 1, CAST(40.00 AS Decimal(18, 2)), CAST(25.64 AS Decimal(18, 2)), CAST(1.56 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (85, 2, N'Drill Peck', 3, CAST(40.00 AS Decimal(18, 2)), CAST(14.81 AS Decimal(18, 2)), CAST(2.70 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (86, 2, N'Thunder Punch', 13, CAST(40.00 AS Decimal(18, 2)), CAST(16.67 AS Decimal(18, 2)), CAST(2.40 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (87, 2, N'Power Gem', 6, CAST(40.00 AS Decimal(18, 2)), CAST(13.79 AS Decimal(18, 2)), CAST(2.90 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (88, 2, N'Dark Pulse', 17, CAST(45.00 AS Decimal(18, 2)), CAST(12.86 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (89, 2, N'Aqua Tail', 11, CAST(45.00 AS Decimal(18, 2)), CAST(19.15 AS Decimal(18, 2)), CAST(2.35 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (90, 2, N'Shadow Ball', 8, CAST(45.00 AS Decimal(18, 2)), CAST(14.61 AS Decimal(18, 2)), CAST(3.08 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (91, 2, N'Ice Punch', 15, CAST(45.00 AS Decimal(18, 2)), CAST(12.86 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (92, 2, N'Signal Beam', 7, CAST(45.00 AS Decimal(18, 2)), CAST(14.52 AS Decimal(18, 2)), CAST(3.10 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (93, 2, N'Drill Run', 5, CAST(50.00 AS Decimal(18, 2)), CAST(14.71 AS Decimal(18, 2)), CAST(3.40 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (94, 2, N'Rock Slide', 6, CAST(50.00 AS Decimal(18, 2)), CAST(15.63 AS Decimal(18, 2)), CAST(3.20 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (95, 2, N'Scald', 11, CAST(55.00 AS Decimal(18, 2)), CAST(13.75 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (96, 2, N'Psychic', 14, CAST(55.00 AS Decimal(18, 2)), CAST(19.64 AS Decimal(18, 2)), CAST(2.80 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (97, 2, N'Dazzling Gleam', 18, CAST(55.00 AS Decimal(18, 2)), CAST(13.10 AS Decimal(18, 2)), CAST(4.20 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (98, 2, N'Play Rough', 18, CAST(55.00 AS Decimal(18, 2)), CAST(18.97 AS Decimal(18, 2)), CAST(2.90 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (99, 2, N'Leaf Blade', 12, CAST(55.00 AS Decimal(18, 2)), CAST(19.64 AS Decimal(18, 2)), CAST(2.80 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (100, 2, N'Flamethrower', 10, CAST(55.00 AS Decimal(18, 2)), CAST(18.97 AS Decimal(18, 2)), CAST(2.90 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (101, 2, N'Thunderbolt', 13, CAST(55.00 AS Decimal(18, 2)), CAST(20.37 AS Decimal(18, 2)), CAST(2.70 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (102, 2, N'Sludge Bomb', 4, CAST(55.00 AS Decimal(18, 2)), CAST(21.15 AS Decimal(18, 2)), CAST(2.60 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (103, 2, N'Cross Chop', 2, CAST(60.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (104, 2, N'Flash Cannon', 9, CAST(60.00 AS Decimal(18, 2)), CAST(15.38 AS Decimal(18, 2)), CAST(3.90 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (105, 2, N'Gunk Shot', 4, CAST(65.00 AS Decimal(18, 2)), CAST(21.67 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (106, 2, N'Petal Blizzard', 12, CAST(65.00 AS Decimal(18, 2)), CAST(20.31 AS Decimal(18, 2)), CAST(3.20 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (107, 2, N'Dragon Pulse', 16, CAST(65.00 AS Decimal(18, 2)), CAST(18.06 AS Decimal(18, 2)), CAST(3.60 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (108, 2, N'Ice Beam', 15, CAST(65.00 AS Decimal(18, 2)), CAST(17.81 AS Decimal(18, 2)), CAST(3.65 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (109, 2, N'Sludge Wave', 4, CAST(70.00 AS Decimal(18, 2)), CAST(20.59 AS Decimal(18, 2)), CAST(3.40 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (110, 2, N'Dig', 5, CAST(70.00 AS Decimal(18, 2)), CAST(12.07 AS Decimal(18, 2)), CAST(5.80 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (111, 2, N'Power Whip', 12, CAST(70.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(2.80 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (112, 2, N'Bug Buzz', 7, CAST(75.00 AS Decimal(18, 2)), CAST(17.65 AS Decimal(18, 2)), CAST(4.25 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (113, 2, N'Hurricane', 3, CAST(80.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(3.20 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (114, 2, N'Heat Wave', 10, CAST(80.00 AS Decimal(18, 2)), CAST(21.05 AS Decimal(18, 2)), CAST(3.80 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (115, 2, N'Megahorn', 7, CAST(80.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(3.20 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (116, 2, N'Stone Edge', 6, CAST(80.00 AS Decimal(18, 2)), CAST(25.81 AS Decimal(18, 2)), CAST(3.10 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (117, 2, N'Moonblast', 18, CAST(85.00 AS Decimal(18, 2)), CAST(20.73 AS Decimal(18, 2)), CAST(4.10 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (118, 2, N'Hydro Pump', 11, CAST(90.00 AS Decimal(18, 2)), CAST(23.68 AS Decimal(18, 2)), CAST(3.80 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (119, 2, N'Fire Blast', 10, CAST(100.00 AS Decimal(18, 2)), CAST(24.39 AS Decimal(18, 2)), CAST(4.10 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (120, 2, N'Blizzard', 15, CAST(100.00 AS Decimal(18, 2)), CAST(25.64 AS Decimal(18, 2)), CAST(3.90 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (121, 2, N'Thunder', 13, CAST(100.00 AS Decimal(18, 2)), CAST(23.26 AS Decimal(18, 2)), CAST(4.30 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (122, 2, N'Earthquake', 5, CAST(100.00 AS Decimal(18, 2)), CAST(23.81 AS Decimal(18, 2)), CAST(4.20 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (123, 2, N'Solar Beam', 12, CAST(120.00 AS Decimal(18, 2)), CAST(24.49 AS Decimal(18, 2)), CAST(4.90 AS Decimal(18, 2)))
;
INSERT attacks (attack_id, attack_type_id, name, type_id, damage, damageps, move_cooldown) VALUES (124, 2, N'Hyper Beam', 1, CAST(120.00 AS Decimal(18, 2)), CAST(24.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (40, 5, CAST(0.05 AS Decimal(18, 2)), CAST(1.40 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (42, 5, CAST(0.05 AS Decimal(18, 2)), CAST(2.45 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (43, 5, CAST(0.05 AS Decimal(18, 2)), CAST(1.10 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (44, 5, CAST(0.05 AS Decimal(18, 2)), CAST(0.95 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (46, 5, CAST(0.05 AS Decimal(18, 2)), CAST(0.80 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (47, 4, CAST(0.05 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (48, 5, CAST(0.05 AS Decimal(18, 2)), CAST(0.90 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (49, 5, CAST(0.05 AS Decimal(18, 2)), CAST(1.30 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (50, 5, CAST(0.05 AS Decimal(18, 2)), CAST(1.40 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (51, 5, CAST(0.05 AS Decimal(18, 2)), CAST(2.50 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (52, 4, CAST(0.05 AS Decimal(18, 2)), CAST(1.05 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (53, 4, CAST(0.05 AS Decimal(18, 2)), CAST(0.95 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (54, 4, CAST(0.25 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (55, 5, CAST(0.05 AS Decimal(18, 2)), CAST(0.90 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (56, 3, CAST(0.25 AS Decimal(18, 2)), CAST(1.10 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (57, 4, CAST(0.05 AS Decimal(18, 2)), CAST(0.85 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (58, 3, CAST(0.05 AS Decimal(18, 2)), CAST(0.85 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (59, 4, CAST(0.05 AS Decimal(18, 2)), CAST(0.95 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (60, 4, CAST(0.05 AS Decimal(18, 2)), CAST(0.90 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (61, 4, CAST(0.05 AS Decimal(18, 2)), CAST(1.25 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (62, 4, CAST(0.05 AS Decimal(18, 2)), CAST(1.20 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (63, 4, CAST(0.05 AS Decimal(18, 2)), CAST(2.40 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (64, 4, CAST(0.05 AS Decimal(18, 2)), CAST(1.30 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (65, 4, CAST(0.05 AS Decimal(18, 2)), CAST(1.40 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (66, 4, CAST(0.25 AS Decimal(18, 2)), CAST(1.60 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (67, 4, CAST(0.05 AS Decimal(18, 2)), CAST(1.15 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (68, 4, CAST(0.05 AS Decimal(18, 2)), CAST(1.20 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (69, 3, CAST(0.05 AS Decimal(18, 2)), CAST(0.95 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (70, 4, CAST(0.25 AS Decimal(18, 2)), CAST(1.60 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (71, 4, CAST(0.25 AS Decimal(18, 2)), CAST(0.90 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (72, 2, CAST(0.25 AS Decimal(18, 2)), CAST(0.90 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (73, 3, CAST(0.05 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (74, 4, CAST(0.05 AS Decimal(18, 2)), CAST(1.70 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (75, 4, CAST(0.05 AS Decimal(18, 2)), CAST(1.80 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (76, 3, CAST(0.05 AS Decimal(18, 2)), CAST(0.95 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (77, 4, CAST(0.05 AS Decimal(18, 2)), CAST(1.05 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (78, 3, CAST(0.05 AS Decimal(18, 2)), CAST(1.40 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (79, 4, CAST(0.05 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (80, 3, CAST(0.05 AS Decimal(18, 2)), CAST(1.21 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (81, 3, CAST(0.05 AS Decimal(18, 2)), CAST(1.20 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (82, 3, CAST(0.05 AS Decimal(18, 2)), CAST(1.20 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (83, 4, CAST(0.05 AS Decimal(18, 2)), CAST(1.20 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (84, 2, CAST(0.05 AS Decimal(18, 2)), CAST(0.90 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (85, 3, CAST(0.05 AS Decimal(18, 2)), CAST(1.60 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (86, 3, CAST(0.05 AS Decimal(18, 2)), CAST(0.95 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (87, 3, CAST(0.05 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (88, 3, CAST(0.05 AS Decimal(18, 2)), CAST(1.80 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (89, 2, CAST(0.05 AS Decimal(18, 2)), CAST(0.90 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (90, 3, CAST(0.05 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (91, 3, CAST(0.05 AS Decimal(18, 2)), CAST(1.80 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (92, 3, CAST(0.05 AS Decimal(18, 2)), CAST(1.70 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (93, 3, CAST(0.25 AS Decimal(18, 2)), CAST(1.40 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (94, 3, CAST(0.05 AS Decimal(18, 2)), CAST(2.10 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (95, 3, CAST(0.05 AS Decimal(18, 2)), CAST(2.80 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (96, 2, CAST(0.05 AS Decimal(18, 2)), CAST(1.90 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (97, 3, CAST(0.05 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (98, 2, CAST(0.05 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (99, 2, CAST(0.25 AS Decimal(18, 2)), CAST(1.70 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (100, 2, CAST(0.05 AS Decimal(18, 2)), CAST(1.60 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (101, 2, CAST(0.05 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (102, 2, CAST(0.05 AS Decimal(18, 2)), CAST(1.20 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (103, 1, CAST(0.25 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (104, 3, CAST(0.05 AS Decimal(18, 2)), CAST(1.80 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (105, 1, CAST(0.05 AS Decimal(18, 2)), CAST(1.10 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (106, 2, CAST(0.05 AS Decimal(18, 2)), CAST(1.70 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (107, 2, CAST(0.05 AS Decimal(18, 2)), CAST(1.90 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (108, 2, CAST(0.05 AS Decimal(18, 2)), CAST(2.05 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (109, 1, CAST(0.05 AS Decimal(18, 2)), CAST(1.60 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (110, 3, CAST(0.05 AS Decimal(18, 2)), CAST(1.10 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (111, 1, CAST(0.25 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (112, 2, CAST(0.05 AS Decimal(18, 2)), CAST(2.20 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (113, 1, CAST(0.05 AS Decimal(18, 2)), CAST(2.47 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (114, 1, CAST(0.05 AS Decimal(18, 2)), CAST(1.10 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (115, 1, CAST(0.05 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (116, 1, CAST(0.50 AS Decimal(18, 2)), CAST(1.10 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (117, 1, CAST(0.05 AS Decimal(18, 2)), CAST(1.30 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (118, 1, CAST(0.05 AS Decimal(18, 2)), CAST(2.80 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (119, 1, CAST(0.05 AS Decimal(18, 2)), CAST(1.10 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (120, 1, CAST(0.05 AS Decimal(18, 2)), CAST(0.70 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (121, 1, CAST(0.05 AS Decimal(18, 2)), CAST(2.25 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (122, 1, CAST(0.05 AS Decimal(18, 2)), CAST(2.65 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (123, 1, CAST(0.05 AS Decimal(18, 2)), CAST(2.40 AS Decimal(18, 2)))
;
INSERT attacks_charge (attack_id, charge, critical, dodge) VALUES (124, 1, CAST(0.05 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (1, CAST(0.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (2, CAST(15.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(1.25 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (3, CAST(11.67 AS Decimal(18, 2)), CAST(7.00 AS Decimal(18, 2)), CAST(1.92 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (4, CAST(15.56 AS Decimal(18, 2)), CAST(7.00 AS Decimal(18, 2)), CAST(2.04 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (5, CAST(12.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (6, CAST(13.33 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)), CAST(1.92 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (7, CAST(14.00 AS Decimal(18, 2)), CAST(7.00 AS Decimal(18, 2)), CAST(2.40 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (8, CAST(14.00 AS Decimal(18, 2)), CAST(7.00 AS Decimal(18, 2)), CAST(2.40 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (9, CAST(10.00 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)), CAST(2.14 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (10, CAST(13.91 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)), CAST(2.33 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (11, CAST(14.00 AS Decimal(18, 2)), CAST(7.00 AS Decimal(18, 2)), CAST(2.40 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (12, CAST(12.73 AS Decimal(18, 2)), CAST(7.00 AS Decimal(18, 2)), CAST(2.35 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (13, CAST(14.00 AS Decimal(18, 2)), CAST(7.00 AS Decimal(18, 2)), CAST(2.40 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (14, CAST(11.43 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)), CAST(2.59 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (15, CAST(12.86 AS Decimal(18, 2)), CAST(9.00 AS Decimal(18, 2)), CAST(2.59 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (16, CAST(12.96 AS Decimal(18, 2)), CAST(7.00 AS Decimal(18, 2)), CAST(2.76 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (17, CAST(10.77 AS Decimal(18, 2)), CAST(7.00 AS Decimal(18, 2)), CAST(2.64 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (18, CAST(12.28 AS Decimal(18, 2)), CAST(7.00 AS Decimal(18, 2)), CAST(2.72 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (19, CAST(11.11 AS Decimal(18, 2)), CAST(7.00 AS Decimal(18, 2)), CAST(3.04 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (20, CAST(8.64 AS Decimal(18, 2)), CAST(7.00 AS Decimal(18, 2)), CAST(3.20 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (21, CAST(9.33 AS Decimal(18, 2)), CAST(7.00 AS Decimal(18, 2)), CAST(3.27 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (22, CAST(9.02 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (23, CAST(9.52 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(3.28 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (24, CAST(8.70 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(3.17 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (25, CAST(9.52 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)), CAST(3.52 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (26, CAST(8.33 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(3.13 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (27, CAST(9.52 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(3.28 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (28, CAST(8.42 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)), CAST(3.73 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (29, CAST(8.57 AS Decimal(18, 2)), CAST(9.00 AS Decimal(18, 2)), CAST(3.93 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (30, CAST(9.62 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(3.95 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (31, CAST(9.52 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(3.93 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (32, CAST(11.03 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(3.57 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (33, CAST(9.09 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(3.87 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (34, CAST(8.85 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(3.83 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (35, CAST(8.89 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), CAST(4.48 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (36, CAST(9.02 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), CAST(4.50 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (37, CAST(8.28 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), CAST(4.35 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (38, CAST(8.51 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), CAST(4.40 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (39, CAST(9.27 AS Decimal(18, 2)), CAST(14.00 AS Decimal(18, 2)), CAST(4.27 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (41, CAST(8.57 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), CAST(4.41 AS Decimal(18, 2)))
;
INSERT attacks_quick (attack_id, energyps, energypu, defensive_damageps) VALUES (45, CAST(10.87 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(5.81 AS Decimal(18, 2)))
;
INSERT attacks_types (attack_type_id, type) VALUES (1, N'Quick Move')
;
INSERT attacks_types (attack_type_id, type) VALUES (2, N'Charge Move')
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (1, NULL, N'Bulbasaur', N'/sites/default/files/styles/pokemon_small/public/2016-08/1_0.png', N'/sites/default/files/styles/240w/public/2016-08/1_0.png', N'/pokemon/1', CAST(0.70 AS Decimal(18, 2)), CAST(6.90 AS Decimal(18, 2)), 1071, 126, 126, 90)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (2, NULL, N'Ivysaur', N'/sites/default/files/styles/pokemon_small/public/2016-08/2.png', N'/sites/default/files/styles/240w/public/2016-08/2.png', N'/pokemon/2', CAST(1.00 AS Decimal(18, 2)), CAST(13.00 AS Decimal(18, 2)), 1632, 156, 158, 120)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (3, NULL, N'Venusaur', N'/sites/default/files/styles/pokemon_small/public/2016-07/3.png', N'/sites/default/files/styles/240w/public/2016-07/3.png', N'/pokemon/3', CAST(2.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 2580, 198, 200, 160)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (4, NULL, N'Charmander', N'/sites/default/files/styles/pokemon_small/public/2016-07/4.png', N'/sites/default/files/styles/240w/public/2016-07/4.png', N'/pokemon/4', CAST(0.60 AS Decimal(18, 2)), CAST(8.50 AS Decimal(18, 2)), 955, 128, 108, 78)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (5, NULL, N'Charmeleon', N'/sites/default/files/styles/pokemon_small/public/2016-07/5.png', N'/sites/default/files/styles/240w/public/2016-07/5.png', N'/pokemon/5', CAST(1.10 AS Decimal(18, 2)), CAST(19.00 AS Decimal(18, 2)), 1557, 160, 140, 116)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (6, NULL, N'Charizard', N'/sites/default/files/styles/pokemon_small/public/2016-07/6.png', N'/sites/default/files/styles/240w/public/2016-07/6.png', N'/pokemon/6', CAST(1.70 AS Decimal(18, 2)), CAST(90.50 AS Decimal(18, 2)), 2602, 212, 182, 156)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (7, NULL, N'Squirtle', N'/sites/default/files/styles/pokemon_small/public/2016-07/7.png', N'/sites/default/files/styles/240w/public/2016-07/7.png', N'/pokemon/7', CAST(0.50 AS Decimal(18, 2)), CAST(9.00 AS Decimal(18, 2)), 1008, 112, 142, 88)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (8, NULL, N'Wartortle', N'/sites/default/files/styles/pokemon_small/public/2016-07/8.png', N'/sites/default/files/styles/240w/public/2016-07/8.png', N'/pokemon/8', CAST(1.00 AS Decimal(18, 2)), CAST(22.50 AS Decimal(18, 2)), 1582, 144, 176, 118)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (9, NULL, N'Blastoise', N'/sites/default/files/styles/pokemon_small/public/2016-07/9.png', N'/sites/default/files/styles/240w/public/2016-07/9.png', N'/pokemon/9', CAST(1.60 AS Decimal(18, 2)), CAST(85.50 AS Decimal(18, 2)), 2542, 186, 222, 158)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (10, NULL, N'Caterpie', N'/sites/default/files/styles/pokemon_small/public/2016-07/10.png', N'/sites/default/files/styles/240w/public/2016-07/10.png', N'/pokemon/10', CAST(0.30 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), 443, 62, 66, 90)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (11, NULL, N'Metapod', N'/sites/default/files/styles/pokemon_small/public/2016-07/11.png', N'/sites/default/files/styles/240w/public/2016-07/11.png', N'/pokemon/11', CAST(0.70 AS Decimal(18, 2)), CAST(9.90 AS Decimal(18, 2)), 477, 56, 86, 100)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (12, NULL, N'Butterfree', N'/sites/default/files/styles/pokemon_small/public/2016-07/12.png', N'/sites/default/files/styles/240w/public/2016-07/12.png', N'/pokemon/12', CAST(1.10 AS Decimal(18, 2)), CAST(32.00 AS Decimal(18, 2)), 1454, 144, 144, 120)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (13, NULL, N'Weedle', N'/sites/default/files/styles/pokemon_small/public/2016-07/13.png', N'/sites/default/files/styles/240w/public/2016-07/13.png', N'/pokemon/13', CAST(0.30 AS Decimal(18, 2)), CAST(3.20 AS Decimal(18, 2)), 449, 68, 64, 80)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (14, NULL, N'Kakuna', N'/sites/default/files/styles/pokemon_small/public/2016-07/14.png', N'/sites/default/files/styles/240w/public/2016-07/14.png', N'/pokemon/14', CAST(0.60 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 485, 62, 82, 90)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (15, NULL, N'Beedrill', N'/sites/default/files/styles/pokemon_small/public/2016-07/15.png', N'/sites/default/files/styles/240w/public/2016-07/15.png', N'/pokemon/15', CAST(1.00 AS Decimal(18, 2)), CAST(29.50 AS Decimal(18, 2)), 1439, 144, 130, 130)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (16, NULL, N'Pidgey', N'/sites/default/files/styles/pokemon_small/public/2016-07/16.png', N'/sites/default/files/styles/240w/public/2016-07/16.png', N'/pokemon/16', CAST(0.30 AS Decimal(18, 2)), CAST(1.80 AS Decimal(18, 2)), 679, 94, 90, 80)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (17, NULL, N'Pidgeotto', N'/sites/default/files/styles/pokemon_small/public/2016-07/17.png', N'/sites/default/files/styles/240w/public/2016-07/17.png', N'/pokemon/17', CAST(1.10 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 1223, 126, 122, 126)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (18, NULL, N'Pidgeot', N'/sites/default/files/styles/pokemon_small/public/2016-07/18.png', N'/sites/default/files/styles/240w/public/2016-07/18.png', N'/pokemon/18', CAST(1.50 AS Decimal(18, 2)), CAST(39.50 AS Decimal(18, 2)), 2091, 170, 166, 166)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (19, NULL, N'Rattata', N'/sites/default/files/styles/pokemon_small/public/2016-07/19.png', N'/sites/default/files/styles/240w/public/2016-07/19.png', N'/pokemon/19', CAST(0.30 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)), 581, 92, 86, 60)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (20, NULL, N'Raticate', N'/sites/default/files/styles/pokemon_small/public/2016-07/20.png', N'/sites/default/files/styles/240w/public/2016-07/20.png', N'/pokemon/20', CAST(0.70 AS Decimal(18, 2)), CAST(18.50 AS Decimal(18, 2)), 1444, 146, 150, 110)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (21, NULL, N'Spearow', N'/sites/default/files/styles/pokemon_small/public/2016-07/21.png', N'/sites/default/files/styles/240w/public/2016-07/21.png', N'/pokemon/21', CAST(0.30 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), 686, 102, 78, 80)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (22, NULL, N'Fearow', N'/sites/default/files/styles/pokemon_small/public/2016-07/22.png', N'/sites/default/files/styles/240w/public/2016-07/22.png', N'/pokemon/22', CAST(1.20 AS Decimal(18, 2)), CAST(38.00 AS Decimal(18, 2)), 1746, 168, 146, 130)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (23, NULL, N'Ekans', N'/sites/default/files/styles/pokemon_small/public/2016-07/23.png', N'/sites/default/files/styles/240w/public/2016-07/23.png', N'/pokemon/23', CAST(2.00 AS Decimal(18, 2)), CAST(6.90 AS Decimal(18, 2)), 824, 112, 112, 70)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (24, NULL, N'Arbok', N'/sites/default/files/styles/pokemon_small/public/2016-07/24.png', N'/sites/default/files/styles/240w/public/2016-07/24.png', N'/pokemon/24', CAST(3.50 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), 1767, 166, 166, 120)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (25, NULL, N'Pikachu', N'/sites/default/files/styles/pokemon_small/public/2016-07/25.png', N'/sites/default/files/styles/240w/public/2016-07/25.png', N'/pokemon/25', CAST(0.40 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), 887, 124, 108, 70)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (26, NULL, N'Raichu', N'/sites/default/files/styles/pokemon_small/public/2016-07/26.png', N'/sites/default/files/styles/240w/public/2016-07/26.png', N'/pokemon/26', CAST(0.80 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 2028, 200, 154, 120)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (27, NULL, N'Sandshrew', N'/sites/default/files/styles/pokemon_small/public/2016-07/27.png', N'/sites/default/files/styles/240w/public/2016-07/27.png', N'/pokemon/27', CAST(0.60 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), 798, 90, 114, 100)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (28, NULL, N'Sandslash', N'/sites/default/files/styles/pokemon_small/public/2016-07/28.png', N'/sites/default/files/styles/240w/public/2016-07/28.png', N'/pokemon/28', CAST(1.00 AS Decimal(18, 2)), CAST(29.50 AS Decimal(18, 2)), 1810, 150, 172, 150)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (29, NULL, N'Nidoran?', N'/sites/default/files/styles/pokemon_small/public/2016-07/29.png', N'/sites/default/files/styles/240w/public/2016-07/29.png', N'/pokemon/29', CAST(0.40 AS Decimal(18, 2)), CAST(7.00 AS Decimal(18, 2)), 876, 100, 104, 110)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (30, NULL, N'Nidorina', N'/sites/default/files/styles/pokemon_small/public/2016-07/30.png', N'/sites/default/files/styles/240w/public/2016-07/30.png', N'/pokemon/30', CAST(0.80 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 1404, 132, 136, 140)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (31, NULL, N'Nidoqueen', N'/sites/default/files/styles/pokemon_small/public/2016-07/31.png', N'/sites/default/files/styles/240w/public/2016-07/31.png', N'/pokemon/31', CAST(1.30 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), 2485, 184, 190, 180)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (32, NULL, N'Nidoran?', N'/sites/default/files/styles/pokemon_small/public/2016-07/32.png', N'/sites/default/files/styles/240w/public/2016-07/32.png', N'/pokemon/32', CAST(0.50 AS Decimal(18, 2)), CAST(9.00 AS Decimal(18, 2)), 843, 110, 94, 92)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (33, NULL, N'Nidorino', N'/sites/default/files/styles/pokemon_small/public/2016-07/33.png', N'/sites/default/files/styles/240w/public/2016-07/33.png', N'/pokemon/33', CAST(0.90 AS Decimal(18, 2)), CAST(19.50 AS Decimal(18, 2)), 1372, 142, 128, 122)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (34, NULL, N'Nidoking', N'/sites/default/files/styles/pokemon_small/public/2016-07/34.png', N'/sites/default/files/styles/240w/public/2016-07/34.png', N'/pokemon/34', CAST(1.40 AS Decimal(18, 2)), CAST(62.00 AS Decimal(18, 2)), 2475, 204, 170, 162)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (35, NULL, N'Clefairy', N'/sites/default/files/styles/pokemon_small/public/2016-07/35.png', N'/sites/default/files/styles/240w/public/2016-07/35.png', N'/pokemon/35', CAST(0.60 AS Decimal(18, 2)), CAST(7.50 AS Decimal(18, 2)), 1200, 116, 124, 140)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (36, NULL, N'Clefable', N'/sites/default/files/styles/pokemon_small/public/2016-07/36.png', N'/sites/default/files/styles/240w/public/2016-07/36.png', N'/pokemon/36', CAST(1.30 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), 2397, 178, 178, 190)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (37, NULL, N'Vulpix', N'/sites/default/files/styles/pokemon_small/public/2016-07/37.png', N'/sites/default/files/styles/240w/public/2016-07/37.png', N'/pokemon/37', CAST(0.60 AS Decimal(18, 2)), CAST(9.90 AS Decimal(18, 2)), 831, 106, 118, 76)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (38, NULL, N'Ninetales', N'/sites/default/files/styles/pokemon_small/public/2016-07/38.png', N'/sites/default/files/styles/240w/public/2016-07/38.png', N'/pokemon/38', CAST(1.10 AS Decimal(18, 2)), CAST(19.90 AS Decimal(18, 2)), 2188, 176, 194, 146)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (39, NULL, N'Jigglypuff', N'/sites/default/files/styles/pokemon_small/public/2016-07/39.png', N'/sites/default/files/styles/240w/public/2016-07/39.png', N'/pokemon/39', CAST(0.50 AS Decimal(18, 2)), CAST(5.50 AS Decimal(18, 2)), 917, 98, 54, 230)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (40, NULL, N'Wigglytuff', N'/sites/default/files/styles/pokemon_small/public/2016-07/40.png', N'/sites/default/files/styles/240w/public/2016-07/40.png', N'/pokemon/40', CAST(1.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), 2177, 168, 108, 280)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (41, NULL, N'Zubat', N'/sites/default/files/styles/pokemon_small/public/2016-07/41.png', N'/sites/default/files/styles/240w/public/2016-07/41.png', N'/pokemon/41', CAST(0.80 AS Decimal(18, 2)), CAST(7.50 AS Decimal(18, 2)), 642, 88, 90, 80)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (42, NULL, N';lbat', N'/sites/default/files/styles/pokemon_small/public/2016-07/42.png', N'/sites/default/files/styles/240w/public/2016-07/42.png', N'/pokemon/42', CAST(1.60 AS Decimal(18, 2)), CAST(55.00 AS Decimal(18, 2)), 1921, 164, 164, 150)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (43, NULL, N'Oddish', N'/sites/default/files/styles/pokemon_small/public/2016-07/43.png', N'/sites/default/files/styles/240w/public/2016-07/43.png', N'/pokemon/43', CAST(0.50 AS Decimal(18, 2)), CAST(5.40 AS Decimal(18, 2)), 1148, 134, 130, 90)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (44, NULL, N'Gloom', N'/sites/default/files/styles/pokemon_small/public/2016-07/44.png', N'/sites/default/files/styles/240w/public/2016-07/44.png', N'/pokemon/44', CAST(0.80 AS Decimal(18, 2)), CAST(8.60 AS Decimal(18, 2)), 1689, 162, 158, 120)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (45, NULL, N'Vileplume', N'/sites/default/files/styles/pokemon_small/public/2016-07/45.png', N'/sites/default/files/styles/240w/public/2016-07/45.png', N'/pokemon/45', CAST(1.20 AS Decimal(18, 2)), CAST(18.60 AS Decimal(18, 2)), 2492, 202, 190, 150)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (46, NULL, N'Paras', N'/sites/default/files/styles/pokemon_small/public/2016-07/46.png', N'/sites/default/files/styles/240w/public/2016-07/46.png', N'/pokemon/46', CAST(0.30 AS Decimal(18, 2)), CAST(5.40 AS Decimal(18, 2)), 916, 122, 120, 70)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (47, NULL, N'Parasect', N'/sites/default/files/styles/pokemon_small/public/2016-07/47.png', N'/sites/default/files/styles/240w/public/2016-07/47.png', N'/pokemon/47', CAST(1.00 AS Decimal(18, 2)), CAST(29.50 AS Decimal(18, 2)), 1747, 162, 170, 120)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (48, NULL, N'Venonat', N'/sites/default/files/styles/pokemon_small/public/2016-07/48.png', N'/sites/default/files/styles/240w/public/2016-07/48.png', N'/pokemon/48', CAST(1.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 1029, 108, 118, 120)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (49, NULL, N'Venomoth', N'/sites/default/files/styles/pokemon_small/public/2016-07/49.png', N'/sites/default/files/styles/240w/public/2016-07/49.png', N'/pokemon/49', CAST(1.50 AS Decimal(18, 2)), CAST(12.50 AS Decimal(18, 2)), 1890, 172, 154, 140)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (50, NULL, N'Diglett', N'/sites/default/files/styles/pokemon_small/public/2016-07/50.png', N'/sites/default/files/styles/240w/public/2016-07/50.png', N'/pokemon/50', CAST(0.20 AS Decimal(18, 2)), CAST(0.80 AS Decimal(18, 2)), 456, 108, 86, 20)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (51, NULL, N'Dugtrio', N'/sites/default/files/styles/pokemon_small/public/2016-07/51.png', N'/sites/default/files/styles/240w/public/2016-07/51.png', N'/pokemon/51', CAST(0.70 AS Decimal(18, 2)), CAST(33.30 AS Decimal(18, 2)), 1168, 148, 140, 70)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (52, NULL, N'Meowth', N'/sites/default/files/styles/pokemon_small/public/2016-07/52.png', N'/sites/default/files/styles/240w/public/2016-07/52.png', N'/pokemon/52', CAST(0.40 AS Decimal(18, 2)), CAST(4.20 AS Decimal(18, 2)), 756, 104, 94, 80)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (53, NULL, N'Persian', N'/sites/default/files/styles/pokemon_small/public/2016-07/53.png', N'/sites/default/files/styles/240w/public/2016-07/53.png', N'/pokemon/53', CAST(1.00 AS Decimal(18, 2)), CAST(32.00 AS Decimal(18, 2)), 1631, 156, 146, 130)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (54, NULL, N'Psyduck', N'/sites/default/files/styles/pokemon_small/public/2016-07/54.png', N'/sites/default/files/styles/240w/public/2016-07/54.png', N'/pokemon/54', CAST(0.80 AS Decimal(18, 2)), CAST(19.60 AS Decimal(18, 2)), 1109, 132, 112, 100)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (55, NULL, N';lduck', N'/sites/default/files/styles/pokemon_small/public/2016-07/55.png', N'/sites/default/files/styles/240w/public/2016-07/55.png', N'/pokemon/55', CAST(1.70 AS Decimal(18, 2)), CAST(76.60 AS Decimal(18, 2)), 2386, 194, 176, 160)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (56, NULL, N'Mankey', N'/sites/default/files/styles/pokemon_small/public/2016-07/56.png', N'/sites/default/files/styles/240w/public/2016-07/56.png', N'/pokemon/56', CAST(0.50 AS Decimal(18, 2)), CAST(28.00 AS Decimal(18, 2)), 878, 122, 96, 80)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (57, NULL, N'Primeape', N'/sites/default/files/styles/pokemon_small/public/2016-07/57.png', N'/sites/default/files/styles/240w/public/2016-07/57.png', N'/pokemon/57', CAST(1.00 AS Decimal(18, 2)), CAST(32.00 AS Decimal(18, 2)), 1864, 178, 150, 130)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (58, NULL, N'Growlithe', N'/sites/default/files/styles/pokemon_small/public/2016-07/58.png', N'/sites/default/files/styles/240w/public/2016-07/58.png', N'/pokemon/58', CAST(0.70 AS Decimal(18, 2)), CAST(19.00 AS Decimal(18, 2)), 1335, 156, 110, 110)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (59, NULL, N'Arcanine', N'/sites/default/files/styles/pokemon_small/public/2016-07/59.png', N'/sites/default/files/styles/240w/public/2016-07/59.png', N'/pokemon/59', CAST(1.90 AS Decimal(18, 2)), CAST(155.00 AS Decimal(18, 2)), 2983, 230, 180, 180)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (60, NULL, N'Poliwag', N'/sites/default/files/styles/pokemon_small/public/2016-07/60.png', N'/sites/default/files/styles/240w/public/2016-07/60.png', N'/pokemon/60', CAST(0.60 AS Decimal(18, 2)), CAST(12.40 AS Decimal(18, 2)), 795, 108, 98, 80)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (61, NULL, N'Poliwhirl', N'/sites/default/files/styles/pokemon_small/public/2016-07/61.png', N'/sites/default/files/styles/240w/public/2016-07/61.png', N'/pokemon/61', CAST(1.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 1340, 132, 132, 130)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (62, NULL, N'Poliwrath', N'/sites/default/files/styles/pokemon_small/public/2016-07/62.png', N'/sites/default/files/styles/240w/public/2016-07/62.png', N'/pokemon/62', CAST(1.30 AS Decimal(18, 2)), CAST(54.00 AS Decimal(18, 2)), 2505, 180, 202, 180)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (63, NULL, N'Abra', N'/sites/default/files/styles/pokemon_small/public/2016-07/63.png', N'/sites/default/files/styles/240w/public/2016-07/63.png', N'/pokemon/63', CAST(0.90 AS Decimal(18, 2)), CAST(19.50 AS Decimal(18, 2)), 600, 110, 76, 50)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (64, NULL, N'Kadabra', N'/sites/default/files/styles/pokemon_small/public/2016-07/64.png', N'/sites/default/files/styles/240w/public/2016-07/64.png', N'/pokemon/64', CAST(1.30 AS Decimal(18, 2)), CAST(56.50 AS Decimal(18, 2)), 1131, 150, 112, 80)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (65, NULL, N'Alakazam', N'/sites/default/files/styles/pokemon_small/public/2016-07/65.png', N'/sites/default/files/styles/240w/public/2016-07/65.png', N'/pokemon/65', CAST(1.50 AS Decimal(18, 2)), CAST(48.00 AS Decimal(18, 2)), 1813, 186, 152, 110)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (66, NULL, N'Machop', N'/sites/default/files/styles/pokemon_small/public/2016-07/66.png', N'/sites/default/files/styles/240w/public/2016-07/66.png', N'/pokemon/66', CAST(0.80 AS Decimal(18, 2)), CAST(19.50 AS Decimal(18, 2)), 1089, 118, 96, 140)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (67, NULL, N'Machoke', N'/sites/default/files/styles/pokemon_small/public/2016-07/67.png', N'/sites/default/files/styles/240w/public/2016-07/67.png', N'/pokemon/67', CAST(1.50 AS Decimal(18, 2)), CAST(70.50 AS Decimal(18, 2)), 1760, 154, 144, 160)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (68, NULL, N'Machamp', N'/sites/default/files/styles/pokemon_small/public/2016-07/68.png', N'/sites/default/files/styles/240w/public/2016-07/68.png', N'/pokemon/68', CAST(1.60 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 2594, 198, 180, 180)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (69, NULL, N'Bellsprout', N'/sites/default/files/styles/pokemon_small/public/2016-07/69.png', N'/sites/default/files/styles/240w/public/2016-07/69.png', N'/pokemon/69', CAST(0.70 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), 1117, 158, 78, 100)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (70, NULL, N'Weepinbell', N'/sites/default/files/styles/pokemon_small/public/2016-07/70_0.png', N'/sites/default/files/styles/240w/public/2016-07/70_0.png', N'/pokemon/70', CAST(1.00 AS Decimal(18, 2)), CAST(6.40 AS Decimal(18, 2)), 1723, 190, 110, 130)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (71, NULL, N'Victreebel', N'/sites/default/files/styles/pokemon_small/public/2016-07/71.png', N'/sites/default/files/styles/240w/public/2016-07/71.png', N'/pokemon/71', CAST(1.70 AS Decimal(18, 2)), CAST(15.50 AS Decimal(18, 2)), 2530, 222, 152, 160)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (72, NULL, N'Tentacool', N'/sites/default/files/styles/pokemon_small/public/2016-07/72.png', N'/sites/default/files/styles/240w/public/2016-07/72.png', N'/pokemon/72', CAST(0.90 AS Decimal(18, 2)), CAST(45.50 AS Decimal(18, 2)), 905, 106, 136, 80)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (73, NULL, N'Tentacruel', N'/sites/default/files/styles/pokemon_small/public/2016-07/73.png', N'/sites/default/files/styles/240w/public/2016-07/73.png', N'/pokemon/73', CAST(1.60 AS Decimal(18, 2)), CAST(55.00 AS Decimal(18, 2)), 2220, 170, 196, 160)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (74, NULL, N'Geodude', N'/sites/default/files/styles/pokemon_small/public/2016-07/74.png', N'/sites/default/files/styles/240w/public/2016-07/74.png', N'/pokemon/74', CAST(0.40 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 849, 106, 118, 80)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (75, NULL, N'Graveler', N'/sites/default/files/styles/pokemon_small/public/2016-07/75.png', N'/sites/default/files/styles/240w/public/2016-07/75.png', N'/pokemon/75', CAST(1.00 AS Decimal(18, 2)), CAST(105.00 AS Decimal(18, 2)), 1433, 142, 156, 110)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (76, NULL, N';lem', N'/sites/default/files/styles/pokemon_small/public/2016-07/76.png', N'/sites/default/files/styles/240w/public/2016-07/76.png', N'/pokemon/76', CAST(1.40 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), 2303, 176, 198, 160)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (77, NULL, N'Ponyta', N'/sites/default/files/styles/pokemon_small/public/2016-07/77.png', N'/sites/default/files/styles/240w/public/2016-07/77.png', N'/pokemon/77', CAST(1.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 1516, 168, 138, 100)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (78, NULL, N'Rapidash', N'/sites/default/files/styles/pokemon_small/public/2016-07/78.png', N'/sites/default/files/styles/240w/public/2016-07/78.png', N'/pokemon/78', CAST(1.70 AS Decimal(18, 2)), CAST(95.00 AS Decimal(18, 2)), 2199, 200, 170, 130)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (79, NULL, N'Slowpoke', N'/sites/default/files/styles/pokemon_small/public/2016-07/79.png', N'/sites/default/files/styles/240w/public/2016-07/79.png', N'/pokemon/79', CAST(1.20 AS Decimal(18, 2)), CAST(36.00 AS Decimal(18, 2)), 1218, 110, 110, 180)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (80, NULL, N'Slowbro', N'/sites/default/files/styles/pokemon_small/public/2016-07/80_0.png', N'/sites/default/files/styles/240w/public/2016-07/80_0.png', N'/pokemon/80', CAST(1.60 AS Decimal(18, 2)), CAST(78.50 AS Decimal(18, 2)), 2597, 184, 198, 190)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (81, NULL, N'Magnemite', N'/sites/default/files/styles/pokemon_small/public/2016-07/81.png', N'/sites/default/files/styles/240w/public/2016-07/81.png', N'/pokemon/81', CAST(0.30 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), 890, 128, 138, 50)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (82, NULL, N'Magneton', N'/sites/default/files/styles/pokemon_small/public/2016-07/82.png', N'/sites/default/files/styles/240w/public/2016-07/82.png', N'/pokemon/82', CAST(1.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), 1879, 186, 180, 100)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (83, NULL, N'Farfetch''d', N'/sites/default/files/styles/pokemon_small/public/2016-07/83.png', N'/sites/default/files/styles/240w/public/2016-07/83.png', N'/pokemon/83', CAST(0.80 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), 1263, 138, 132, 104)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (84, NULL, N'Doduo', N'/sites/default/files/styles/pokemon_small/public/2016-07/84.png', N'/sites/default/files/styles/240w/public/2016-07/84.png', N'/pokemon/84', CAST(1.40 AS Decimal(18, 2)), CAST(39.20 AS Decimal(18, 2)), 855, 126, 96, 70)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (85, NULL, N'Dodrio', N'/sites/default/files/styles/pokemon_small/public/2016-07/85.png', N'/sites/default/files/styles/240w/public/2016-07/85.png', N'/pokemon/85', CAST(1.80 AS Decimal(18, 2)), CAST(85.20 AS Decimal(18, 2)), 1836, 182, 150, 120)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (86, NULL, N'Seel', N'/sites/default/files/styles/pokemon_small/public/2016-07/86.png', N'/sites/default/files/styles/240w/public/2016-07/86.png', N'/pokemon/86', CAST(1.10 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), 1107, 104, 138, 130)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (87, NULL, N'Dew;ng', N'/sites/default/files/styles/pokemon_small/public/2016-07/87.png', N'/sites/default/files/styles/240w/public/2016-07/87.png', N'/pokemon/87', CAST(1.70 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 2145, 156, 192, 180)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (88, NULL, N'Grimer', N'/sites/default/files/styles/pokemon_small/public/2016-07/88.png', N'/sites/default/files/styles/240w/public/2016-07/88.png', N'/pokemon/88', CAST(0.90 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 1284, 124, 110, 160)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (89, NULL, N'Muk', N'/sites/default/files/styles/pokemon_small/public/2016-07/89.png', N'/sites/default/files/styles/240w/public/2016-07/89.png', N'/pokemon/89', CAST(1.20 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 2602, 180, 188, 210)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (90, NULL, N'Shellder', N'/sites/default/files/styles/pokemon_small/public/2016-07/90.png', N'/sites/default/files/styles/240w/public/2016-07/90.png', N'/pokemon/90', CAST(0.30 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), 822, 120, 112, 60)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (91, NULL, N'Cloyster', N'/sites/default/files/styles/pokemon_small/public/2016-07/91.png', N'/sites/default/files/styles/240w/public/2016-07/91.png', N'/pokemon/91', CAST(1.50 AS Decimal(18, 2)), CAST(132.50 AS Decimal(18, 2)), 2052, 196, 196, 100)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (92, NULL, N'Gastly', N'/sites/default/files/styles/pokemon_small/public/2016-07/92.png', N'/sites/default/files/styles/240w/public/2016-07/92.png', N'/pokemon/92', CAST(1.30 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), 804, 136, 82, 60)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (93, NULL, N'Haunter', N'/sites/default/files/styles/pokemon_small/public/2016-07/93.png', N'/sites/default/files/styles/240w/public/2016-07/93.png', N'/pokemon/93', CAST(1.60 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), 1380, 172, 118, 90)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (94, NULL, N'Gengar', N'/sites/default/files/styles/pokemon_small/public/2016-07/94.png', N'/sites/default/files/styles/240w/public/2016-07/94.png', N'/pokemon/94', CAST(1.50 AS Decimal(18, 2)), CAST(40.50 AS Decimal(18, 2)), 2078, 204, 156, 120)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (95, NULL, N'Onix', N'/sites/default/files/styles/pokemon_small/public/2016-07/95.png', N'/sites/default/files/styles/240w/public/2016-07/95.png', N'/pokemon/95', CAST(8.80 AS Decimal(18, 2)), CAST(210.00 AS Decimal(18, 2)), 857, 90, 186, 70)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (96, NULL, N'Drowzee', N'/sites/default/files/styles/pokemon_small/public/2016-07/96.png', N'/sites/default/files/styles/240w/public/2016-07/96.png', N'/pokemon/96', CAST(1.00 AS Decimal(18, 2)), CAST(32.40 AS Decimal(18, 2)), 1075, 104, 140, 120)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (97, NULL, N'Hypno', N'/sites/default/files/styles/pokemon_small/public/2016-07/97.png', N'/sites/default/files/styles/240w/public/2016-07/97.png', N'/pokemon/97', CAST(1.60 AS Decimal(18, 2)), CAST(75.60 AS Decimal(18, 2)), 2184, 162, 196, 170)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (98, NULL, N'Krabby', N'/sites/default/files/styles/pokemon_small/public/2016-07/98.png', N'/sites/default/files/styles/240w/public/2016-07/98.png', N'/pokemon/98', CAST(0.40 AS Decimal(18, 2)), CAST(6.50 AS Decimal(18, 2)), 792, 116, 110, 60)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (99, NULL, N'Kingler', N'/sites/default/files/styles/pokemon_small/public/2016-07/99.png', N'/sites/default/files/styles/240w/public/2016-07/99.png', N'/pokemon/99', CAST(1.30 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), 1823, 178, 168, 110)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (100, NULL, N'Voltorb', N'/sites/default/files/styles/pokemon_small/public/2016-07/100.png', N'/sites/default/files/styles/240w/public/2016-07/100.png', N'/pokemon/100', CAST(0.50 AS Decimal(18, 2)), CAST(10.40 AS Decimal(18, 2)), 839, 102, 124, 80)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (101, NULL, N'Electrode', N'/sites/default/files/styles/pokemon_small/public/2016-07/101.png', N'/sites/default/files/styles/240w/public/2016-07/101.png', N'/pokemon/101', CAST(1.20 AS Decimal(18, 2)), CAST(66.60 AS Decimal(18, 2)), 1646, 150, 174, 120)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (102, NULL, N'Exeggcute', N'/sites/default/files/styles/pokemon_small/public/2016-07/102.png', N'/sites/default/files/styles/240w/public/2016-07/102.png', N'/pokemon/102', CAST(0.40 AS Decimal(18, 2)), CAST(2.50 AS Decimal(18, 2)), 1099, 110, 132, 120)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (103, NULL, N'Exeggutor', N'/sites/default/files/styles/pokemon_small/public/2016-07/103.png', N'/sites/default/files/styles/240w/public/2016-07/103.png', N'/pokemon/103', CAST(2.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 2955, 232, 164, 190)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (104, NULL, N'Cubone', N'/sites/default/files/styles/pokemon_small/public/2016-07/104.png', N'/sites/default/files/styles/240w/public/2016-07/104.png', N'/pokemon/104', CAST(0.40 AS Decimal(18, 2)), CAST(6.50 AS Decimal(18, 2)), 1006, 102, 150, 100)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (105, NULL, N'Marowak', N'/sites/default/files/styles/pokemon_small/public/2016-07/105.png', N'/sites/default/files/styles/240w/public/2016-07/105.png', N'/pokemon/105', CAST(1.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), 1656, 140, 202, 120)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (106, NULL, N'Hitmonlee', N'/sites/default/files/styles/pokemon_small/public/2016-07/106.png', N'/sites/default/files/styles/240w/public/2016-07/106.png', N'/pokemon/106', CAST(1.50 AS Decimal(18, 2)), CAST(49.80 AS Decimal(18, 2)), 1492, 148, 172, 100)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (107, NULL, N'Hitmonchan', N'/sites/default/files/styles/pokemon_small/public/2016-07/107.png', N'/sites/default/files/styles/240w/public/2016-07/107.png', N'/pokemon/107', CAST(1.40 AS Decimal(18, 2)), CAST(50.20 AS Decimal(18, 2)), 1516, 138, 204, 100)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (108, NULL, N'Lickitung', N'/sites/default/files/styles/pokemon_small/public/2016-07/108.png', N'/sites/default/files/styles/240w/public/2016-07/108.png', N'/pokemon/108', CAST(1.20 AS Decimal(18, 2)), CAST(65.50 AS Decimal(18, 2)), 1626, 126, 160, 180)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (109, NULL, N'Koffing', N'/sites/default/files/styles/pokemon_small/public/2016-07/109.png', N'/sites/default/files/styles/240w/public/2016-07/109.png', N'/pokemon/109', CAST(0.60 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 1151, 136, 142, 80)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (110, NULL, N'Weezing', N'/sites/default/files/styles/pokemon_small/public/2016-07/110.png', N'/sites/default/files/styles/240w/public/2016-07/110.png', N'/pokemon/110', CAST(1.20 AS Decimal(18, 2)), CAST(9.50 AS Decimal(18, 2)), 2250, 190, 198, 130)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (111, NULL, N'Rhyhorn', N'/sites/default/files/styles/pokemon_small/public/2016-07/111.png', N'/sites/default/files/styles/240w/public/2016-07/111.png', N'/pokemon/111', CAST(1.00 AS Decimal(18, 2)), CAST(115.00 AS Decimal(18, 2)), 1182, 110, 116, 160)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (112, NULL, N'Rhydon', N'/sites/default/files/styles/pokemon_small/public/2016-07/112.png', N'/sites/default/files/styles/240w/public/2016-07/112.png', N'/pokemon/112', CAST(1.90 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 2243, 166, 160, 210)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (113, NULL, N'Chansey', N'/sites/default/files/styles/pokemon_small/public/2016-07/113.png', N'/sites/default/files/styles/240w/public/2016-07/113.png', N'/pokemon/113', CAST(1.10 AS Decimal(18, 2)), CAST(34.60 AS Decimal(18, 2)), 675, 40, 60, 500)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (114, NULL, N'Tangela', N'/sites/default/files/styles/pokemon_small/public/2016-07/114.png', N'/sites/default/files/styles/240w/public/2016-07/114.png', N'/pokemon/114', CAST(1.00 AS Decimal(18, 2)), CAST(35.00 AS Decimal(18, 2)), 1739, 164, 152, 130)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (115, NULL, N'Kangaskhan', N'/sites/default/files/styles/pokemon_small/public/2016-07/115.png', N'/sites/default/files/styles/240w/public/2016-07/115.png', N'/pokemon/115', CAST(2.20 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 2043, 142, 178, 210)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (116, NULL, N'Horsea', N'/sites/default/files/styles/pokemon_small/public/2016-07/116.png', N'/sites/default/files/styles/240w/public/2016-07/116.png', N'/pokemon/116', CAST(0.40 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)), 794, 122, 100, 60)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (117, NULL, N'Seadra', N'/sites/default/files/styles/pokemon_small/public/2016-07/117.png', N'/sites/default/files/styles/240w/public/2016-07/117.png', N'/pokemon/117', CAST(1.20 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 1713, 176, 150, 110)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (118, NULL, N';ldeen', N'/sites/default/files/styles/pokemon_small/public/2016-07/118.png', N'/sites/default/files/styles/240w/public/2016-07/118.png', N'/pokemon/118', CAST(0.60 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), 965, 112, 126, 90)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (119, NULL, N'Seaking', N'/sites/default/files/styles/pokemon_small/public/2016-07/119.png', N'/sites/default/files/styles/240w/public/2016-07/119.png', N'/pokemon/119', CAST(1.30 AS Decimal(18, 2)), CAST(39.00 AS Decimal(18, 2)), 2043, 172, 160, 160)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (120, NULL, N'Staryu', N'/sites/default/files/styles/pokemon_small/public/2016-07/120.png', N'/sites/default/files/styles/240w/public/2016-07/120.png', N'/pokemon/120', CAST(1.10 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 937, 130, 128, 60)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (121, NULL, N'Starmie', N'/sites/default/files/styles/pokemon_small/public/2016-07/121.png', N'/sites/default/files/styles/240w/public/2016-07/121.png', N'/pokemon/121', CAST(1.10 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 2182, 194, 192, 120)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (122, NULL, N'Mr. Mime', N'/sites/default/files/styles/pokemon_small/public/2016-07/122.png', N'/sites/default/files/styles/240w/public/2016-07/122.png', N'/pokemon/122', CAST(1.30 AS Decimal(18, 2)), CAST(54.50 AS Decimal(18, 2)), 1494, 154, 196, 80)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (123, NULL, N'Scyther', N'/sites/default/files/styles/pokemon_small/public/2016-07/123.png', N'/sites/default/files/styles/240w/public/2016-07/123.png', N'/pokemon/123', CAST(1.50 AS Decimal(18, 2)), CAST(56.00 AS Decimal(18, 2)), 2073, 176, 180, 140)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (124, NULL, N'Jynx', N'/sites/default/files/styles/pokemon_small/public/2016-07/124.png', N'/sites/default/files/styles/240w/public/2016-07/124.png', N'/pokemon/124', CAST(1.40 AS Decimal(18, 2)), CAST(40.60 AS Decimal(18, 2)), 1716, 172, 134, 130)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (125, NULL, N'Electabuzz', N'/sites/default/files/styles/pokemon_small/public/2016-07/125.png', N'/sites/default/files/styles/240w/public/2016-07/125.png', N'/pokemon/125', CAST(1.10 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 2119, 198, 160, 130)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (126, NULL, N'Magmar', N'/sites/default/files/styles/pokemon_small/public/2016-07/126.png', N'/sites/default/files/styles/240w/public/2016-07/126.png', N'/pokemon/126', CAST(1.30 AS Decimal(18, 2)), CAST(44.50 AS Decimal(18, 2)), 2265, 214, 158, 130)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (127, NULL, N'Pinsir', N'/sites/default/files/styles/pokemon_small/public/2016-07/127.png', N'/sites/default/files/styles/240w/public/2016-07/127.png', N'/pokemon/127', CAST(1.50 AS Decimal(18, 2)), CAST(55.00 AS Decimal(18, 2)), 2121, 184, 186, 130)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (128, NULL, N'Tauros', N'/sites/default/files/styles/pokemon_small/public/2016-07/128.png', N'/sites/default/files/styles/240w/public/2016-07/128.png', N'/pokemon/128', CAST(1.40 AS Decimal(18, 2)), CAST(88.40 AS Decimal(18, 2)), 1844, 148, 184, 150)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (129, NULL, N'Magikarp', N'/sites/default/files/styles/pokemon_small/public/2016-07/129.png', N'/sites/default/files/styles/240w/public/2016-07/129.png', N'/pokemon/129', CAST(0.90 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 262, 42, 84, 40)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (130, NULL, N'Gyarados', N'/sites/default/files/styles/pokemon_small/public/2016-07/130.png', N'/sites/default/files/styles/240w/public/2016-07/130.png', N'/pokemon/130', CAST(6.50 AS Decimal(18, 2)), CAST(235.00 AS Decimal(18, 2)), 2688, 192, 196, 190)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (131, NULL, N'Lapras', N'/sites/default/files/styles/pokemon_small/public/2016-07/131.png', N'/sites/default/files/styles/240w/public/2016-07/131.png', N'/pokemon/131', CAST(2.50 AS Decimal(18, 2)), CAST(220.00 AS Decimal(18, 2)), 2980, 186, 190, 260)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (132, NULL, N'Ditto', N'/sites/default/files/styles/pokemon_small/public/2016-07/132.png', N'/sites/default/files/styles/240w/public/2016-07/132.png', N'/pokemon/132', CAST(0.30 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), 919, 110, 110, 96)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (133, NULL, N'Eevee', N'/sites/default/files/styles/pokemon_small/public/2016-07/133.png', N'/sites/default/files/styles/240w/public/2016-07/133.png', N'/pokemon/133', CAST(0.30 AS Decimal(18, 2)), CAST(6.50 AS Decimal(18, 2)), 1077, 114, 128, 110)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (134, NULL, N'Vaporeon', N'/sites/default/files/styles/pokemon_small/public/2016-07/134.png', N'/sites/default/files/styles/240w/public/2016-07/134.png', N'/pokemon/134', CAST(1.00 AS Decimal(18, 2)), CAST(29.00 AS Decimal(18, 2)), 2816, 186, 168, 260)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (135, NULL, N'Jolteon', N'/sites/default/files/styles/pokemon_small/public/2016-07/135.png', N'/sites/default/files/styles/240w/public/2016-07/135.png', N'/pokemon/135', CAST(0.80 AS Decimal(18, 2)), CAST(24.50 AS Decimal(18, 2)), 2140, 192, 174, 130)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (136, NULL, N'Flareon', N'/sites/default/files/styles/pokemon_small/public/2016-07/136.png', N'/sites/default/files/styles/240w/public/2016-07/136.png', N'/pokemon/136', CAST(0.90 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 2643, 238, 178, 130)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (137, NULL, N'Pory;n', N'/sites/default/files/styles/pokemon_small/public/2016-07/137.png', N'/sites/default/files/styles/240w/public/2016-07/137.png', N'/pokemon/137', CAST(0.80 AS Decimal(18, 2)), CAST(36.50 AS Decimal(18, 2)), 1691, 156, 158, 130)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (138, NULL, N'Omanyte', N'/sites/default/files/styles/pokemon_small/public/2016-07/138.png', N'/sites/default/files/styles/240w/public/2016-07/138.png', N'/pokemon/138', CAST(0.40 AS Decimal(18, 2)), CAST(7.50 AS Decimal(18, 2)), 1119, 132, 160, 70)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (139, NULL, N'Omastar', N'/sites/default/files/styles/pokemon_small/public/2016-07/139.png', N'/sites/default/files/styles/240w/public/2016-07/139.png', N'/pokemon/139', CAST(1.00 AS Decimal(18, 2)), CAST(35.00 AS Decimal(18, 2)), 2233, 180, 202, 140)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (140, NULL, N'Kabuto', N'/sites/default/files/styles/pokemon_small/public/2016-07/140.png', N'/sites/default/files/styles/240w/public/2016-07/140.png', N'/pokemon/140', CAST(0.50 AS Decimal(18, 2)), CAST(11.50 AS Decimal(18, 2)), 1104, 148, 142, 60)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (141, NULL, N'Kabutops', N'/sites/default/files/styles/pokemon_small/public/2016-07/141.png', N'/sites/default/files/styles/240w/public/2016-07/141.png', N'/pokemon/141', CAST(1.30 AS Decimal(18, 2)), CAST(40.50 AS Decimal(18, 2)), 2130, 190, 190, 120)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (142, NULL, N'Aerodactyl', N'/sites/default/files/styles/pokemon_small/public/2016-07/142.png', N'/sites/default/files/styles/240w/public/2016-07/142.png', N'/pokemon/142', CAST(1.80 AS Decimal(18, 2)), CAST(59.00 AS Decimal(18, 2)), 2165, 182, 162, 160)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (143, NULL, N'Snorlax', N'/sites/default/files/styles/pokemon_small/public/2016-07/143.png', N'/sites/default/files/styles/240w/public/2016-07/143.png', N'/pokemon/143', CAST(2.10 AS Decimal(18, 2)), CAST(460.00 AS Decimal(18, 2)), 3112, 180, 180, 320)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (144, NULL, N'Articuno', N'/sites/default/files/styles/pokemon_small/public/2016-07/144.png', N'/sites/default/files/styles/240w/public/2016-07/144.png', N'/pokemon/144', CAST(1.70 AS Decimal(18, 2)), CAST(55.40 AS Decimal(18, 2)), 2978, 198, 242, 180)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (145, NULL, N'Zapdos', N'/sites/default/files/styles/pokemon_small/public/2016-07/145.png', N'/sites/default/files/styles/240w/public/2016-07/145.png', N'/pokemon/145', CAST(1.60 AS Decimal(18, 2)), CAST(52.60 AS Decimal(18, 2)), 3114, 232, 194, 180)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (146, NULL, N'Moltres', N'/sites/default/files/styles/pokemon_small/public/2016-07/146.png', N'/sites/default/files/styles/240w/public/2016-07/146.png', N'/pokemon/146', CAST(2.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), 3240, 242, 194, 180)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (147, NULL, N'Dratini', N'/sites/default/files/styles/pokemon_small/public/2016-07/147.png', N'/sites/default/files/styles/240w/public/2016-07/147.png', N'/pokemon/147', CAST(1.80 AS Decimal(18, 2)), CAST(3.30 AS Decimal(18, 2)), 983, 128, 110, 82)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (148, NULL, N'Dragonair', N'/sites/default/files/styles/pokemon_small/public/2016-07/148.png', N'/sites/default/files/styles/240w/public/2016-07/148.png', N'/pokemon/148', CAST(4.00 AS Decimal(18, 2)), CAST(16.50 AS Decimal(18, 2)), 1747, 170, 152, 122)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (149, NULL, N'Dragonite', N'/sites/default/files/styles/pokemon_small/public/2016-07/149.png', N'/sites/default/files/styles/240w/public/2016-07/149.png', N'/pokemon/149', CAST(2.20 AS Decimal(18, 2)), CAST(210.00 AS Decimal(18, 2)), 3500, 250, 212, 182)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (150, NULL, N'Mewtwo', N'/sites/default/files/styles/pokemon_small/public/2016-07/150.png', N'/sites/default/files/styles/240w/public/2016-07/150.png', N'/pokemon/150', CAST(2.00 AS Decimal(18, 2)), CAST(122.00 AS Decimal(18, 2)), 4144, 284, 202, 212)
;
INSERT pokemons (pokemon_id, evolvefrom_pokemon_id, name, icon, image, url, height_avg, weight_avg, combatpower_max, attack_base, defense_base, stamina_base) VALUES (151, NULL, N'Mew', N'/sites/default/files/styles/pokemon_small/public/2016-07/151.png', N'/sites/default/files/styles/240w/public/2016-07/151.png', N'/pokemon/151', CAST(0.40 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), 3299, 220, 220, 200)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (16, 1, 33, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (17, 1, 17, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (18, 1, 111, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (19, 1, 81, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (20, 1, 102, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (21, 2, 37, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (22, 2, 17, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (23, 2, 111, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (24, 2, 102, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (25, 2, 123, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (26, 3, 37, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (27, 3, 17, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (28, 3, 106, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (29, 3, 102, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (30, 3, 123, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (31, 4, 23, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (32, 4, 11, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (33, 4, 63, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (34, 4, 100, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (35, 4, 55, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (36, 5, 23, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (37, 5, 11, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (38, 5, 80, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (39, 5, 63, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (40, 5, 100, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (41, 6, 23, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (42, 6, 21, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (43, 6, 72, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (44, 6, 119, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (45, 6, 100, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (46, 7, 33, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (47, 7, 45, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (48, 7, 43, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (49, 7, 89, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (50, 7, 74, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (51, 8, 8, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (52, 8, 13, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (53, 8, 43, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (54, 8, 118, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (55, 8, 108, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (56, 9, 8, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (57, 9, 13, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (58, 9, 104, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (59, 9, 118, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (60, 9, 108, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (61, 10, 33, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (62, 10, 4, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (63, 10, 40, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (64, 11, 33, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (65, 11, 4, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (66, 11, 40, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (67, 12, 4, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (68, 12, 39, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (69, 12, 112, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (70, 12, 96, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (71, 12, 92, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (72, 13, 4, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (73, 13, 10, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (74, 13, 40, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (75, 14, 4, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (76, 14, 10, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (77, 14, 40, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (78, 15, 4, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (79, 15, 31, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (80, 15, 64, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (81, 15, 102, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (82, 15, 76, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (83, 16, 33, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (84, 16, 22, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (85, 16, 64, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (86, 16, 66, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (87, 16, 42, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (88, 17, 36, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (89, 17, 21, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (90, 17, 64, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (91, 17, 66, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (92, 17, 42, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (93, 18, 36, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (94, 18, 21, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (95, 18, 64, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (96, 18, 66, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (97, 18, 113, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (98, 19, 33, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (99, 19, 22, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (100, 19, 84, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (101, 19, 110, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (102, 19, 73, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (103, 20, 8, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (104, 20, 22, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (105, 20, 110, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (106, 20, 124, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (107, 20, 73, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (108, 21, 24, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (109, 21, 22, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (110, 21, 64, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (111, 21, 85, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (112, 21, 42, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (113, 22, 24, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (114, 22, 36, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (115, 22, 64, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (116, 22, 42, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (117, 22, 93, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (118, 23, 27, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (119, 23, 10, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (120, 23, 105, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (121, 23, 102, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (122, 23, 49, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (123, 24, 27, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (124, 24, 8, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (125, 24, 88, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (126, 24, 105, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (127, 24, 109, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (128, 25, 22, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (129, 25, 6, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (130, 25, 78, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (131, 25, 121, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (132, 25, 101, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (133, 26, 14, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (134, 26, 6, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (135, 26, 56, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (136, 26, 121, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (137, 26, 86, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (138, 27, 12, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (139, 27, 11, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (140, 27, 110, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (141, 27, 94, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (142, 27, 70, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (143, 28, 19, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (144, 28, 12, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (145, 28, 75, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (146, 28, 122, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (147, 28, 70, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (148, 29, 8, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (149, 29, 10, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (150, 29, 84, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (151, 29, 48, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (152, 29, 102, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (153, 30, 8, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (154, 30, 10, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (155, 30, 110, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (156, 30, 48, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (157, 30, 102, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (158, 31, 8, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (159, 31, 31, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (160, 31, 122, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (161, 31, 109, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (162, 31, 116, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (163, 32, 24, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (164, 32, 10, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (165, 32, 84, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (166, 32, 47, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (167, 32, 102, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (168, 33, 10, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (169, 33, 31, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (170, 33, 110, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (171, 33, 47, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (172, 33, 102, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (173, 34, 2, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (174, 34, 31, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (175, 34, 122, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (176, 34, 115, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (177, 34, 109, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (178, 35, 16, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (179, 35, 29, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (180, 35, 84, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (181, 35, 51, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (182, 35, 117, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (183, 36, 16, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (184, 36, 29, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (185, 36, 97, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (186, 36, 117, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (187, 36, 96, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (188, 37, 23, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (189, 37, 22, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (190, 37, 84, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (191, 37, 100, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (192, 37, 55, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (193, 38, 23, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (194, 38, 30, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (195, 38, 119, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (196, 38, 100, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (197, 38, 114, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (198, 39, 30, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (199, 39, 16, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (200, 39, 84, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (201, 39, 97, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (202, 39, 51, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (203, 40, 30, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (204, 40, 16, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (205, 40, 97, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (206, 40, 124, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (207, 40, 98, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (208, 41, 8, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (209, 41, 22, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (210, 41, 66, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (211, 41, 48, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (212, 41, 102, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (213, 42, 8, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (214, 42, 21, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (215, 42, 66, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (216, 42, 48, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (217, 42, 59, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (218, 43, 27, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (219, 43, 37, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (220, 43, 117, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (221, 43, 81, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (222, 43, 102, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (223, 44, 27, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (224, 44, 37, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (225, 44, 117, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (226, 44, 106, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (227, 44, 102, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (228, 45, 27, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (229, 45, 37, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (230, 45, 117, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (231, 45, 106, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (232, 45, 123, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (233, 46, 4, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (234, 46, 11, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (235, 46, 54, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (236, 46, 81, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (237, 46, 76, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (238, 47, 4, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (239, 47, 2, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (240, 47, 54, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (241, 47, 123, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (242, 47, 76, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (243, 48, 4, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (244, 48, 39, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (245, 48, 48, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (246, 48, 79, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (247, 48, 92, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (248, 49, 4, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (249, 49, 39, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (250, 49, 112, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (251, 49, 48, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (252, 49, 96, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (253, 50, 35, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (254, 50, 11, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (255, 50, 110, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (256, 50, 67, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (257, 50, 70, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (258, 51, 35, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (259, 51, 15, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (260, 51, 122, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (261, 51, 67, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (262, 51, 116, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (263, 52, 8, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (264, 52, 11, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (265, 52, 84, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (266, 52, 88, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (267, 52, 71, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (268, 53, 30, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (269, 53, 11, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (270, 53, 71, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (271, 53, 98, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (272, 53, 87, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (273, 54, 13, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (274, 54, 29, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (275, 54, 89, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (276, 54, 103, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (277, 54, 79, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (278, 55, 39, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (279, 55, 13, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (280, 55, 118, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (281, 55, 108, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (282, 55, 96, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (283, 56, 9, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (284, 56, 11, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (285, 56, 56, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (286, 56, 103, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (287, 56, 57, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (288, 57, 9, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (289, 57, 3, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (290, 57, 103, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (291, 57, 57, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (292, 57, 71, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (293, 58, 8, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (294, 58, 23, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (295, 58, 84, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (296, 58, 83, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (297, 58, 100, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (298, 59, 8, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (299, 59, 25, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (300, 59, 75, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (301, 59, 119, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (302, 59, 100, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (303, 60, 45, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (304, 60, 12, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (305, 60, 84, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (306, 60, 60, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (307, 60, 67, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (308, 61, 45, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (309, 61, 12, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (310, 61, 60, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (311, 61, 67, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (312, 61, 95, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (313, 62, 45, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (314, 62, 12, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (315, 62, 118, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (316, 62, 91, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (317, 62, 58, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (318, 63, 29, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (319, 63, 82, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (320, 63, 90, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (321, 63, 92, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (322, 64, 39, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (323, 64, 18, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (324, 64, 97, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (325, 64, 79, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (326, 64, 90, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (327, 65, 39, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (328, 65, 18, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (329, 65, 97, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (330, 65, 96, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (331, 65, 90, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (332, 66, 9, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (333, 66, 3, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (334, 66, 56, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (335, 66, 103, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (336, 66, 57, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (337, 67, 9, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (338, 67, 3, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (339, 67, 56, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (340, 67, 103, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (341, 67, 58, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (342, 68, 26, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (343, 68, 9, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (344, 68, 103, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (345, 68, 116, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (346, 68, 58, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (347, 69, 27, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (348, 69, 17, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (349, 69, 111, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (350, 69, 102, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (351, 69, 49, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (352, 70, 27, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (353, 70, 37, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (354, 70, 111, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (355, 70, 81, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (356, 70, 102, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (357, 71, 27, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (358, 71, 37, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (359, 71, 102, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (360, 71, 123, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (361, 71, 99, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (362, 72, 45, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (363, 72, 10, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (364, 72, 60, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (365, 72, 74, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (366, 72, 49, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (367, 73, 27, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (368, 73, 31, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (369, 73, 120, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (370, 73, 118, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (371, 73, 109, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (372, 74, 33, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (373, 74, 32, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (374, 74, 110, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (375, 74, 94, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (376, 74, 70, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (377, 75, 35, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (378, 75, 32, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (379, 75, 110, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (380, 75, 94, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (381, 75, 116, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (382, 76, 35, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (383, 76, 32, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (384, 76, 77, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (385, 76, 122, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (386, 76, 116, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (387, 77, 33, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (388, 77, 23, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (389, 77, 119, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (390, 77, 83, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (391, 77, 55, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (392, 78, 23, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (393, 78, 3, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (394, 78, 119, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (395, 78, 114, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (396, 78, 93, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (397, 79, 39, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (398, 79, 13, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (399, 79, 96, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (400, 79, 82, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (401, 79, 74, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (402, 80, 39, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (403, 80, 13, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (404, 80, 108, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (405, 80, 96, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (406, 80, 74, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (407, 81, 14, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (408, 81, 6, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (409, 81, 78, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (410, 81, 61, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (411, 81, 101, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (412, 82, 14, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (413, 82, 6, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (414, 82, 78, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (415, 82, 104, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (416, 82, 61, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (417, 83, 2, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (418, 83, 34, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (419, 83, 64, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (420, 83, 66, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (421, 83, 99, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (422, 84, 24, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (423, 84, 22, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (424, 84, 64, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (425, 84, 85, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (426, 84, 62, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (427, 85, 30, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (428, 85, 36, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (429, 85, 64, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (430, 85, 66, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (431, 85, 85, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (432, 86, 5, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (433, 86, 41, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (434, 86, 43, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (435, 86, 89, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (436, 86, 50, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (437, 87, 20, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (438, 87, 41, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (439, 87, 43, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (440, 87, 120, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (441, 87, 50, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (442, 88, 35, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (443, 88, 31, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (444, 88, 67, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (445, 88, 68, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (446, 88, 102, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (447, 89, 5, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (448, 89, 31, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (449, 89, 88, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (450, 89, 105, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (451, 89, 109, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (452, 90, 33, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (453, 90, 41, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (454, 90, 60, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (455, 90, 50, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (456, 90, 74, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (457, 91, 20, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (458, 91, 41, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (459, 91, 120, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (460, 91, 118, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (461, 91, 50, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (462, 92, 5, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (463, 92, 15, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (464, 92, 88, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (465, 92, 102, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (466, 92, 59, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (467, 93, 5, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (468, 93, 28, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (469, 93, 88, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (470, 93, 90, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (471, 93, 102, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (472, 94, 15, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (473, 94, 28, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (474, 94, 88, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (475, 94, 90, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (476, 94, 102, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (477, 95, 33, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (478, 95, 32, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (479, 95, 69, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (480, 95, 94, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (481, 95, 116, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (482, 96, 39, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (483, 96, 16, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (484, 96, 79, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (485, 96, 96, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (486, 96, 82, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (487, 97, 39, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (488, 97, 29, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (489, 97, 96, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (490, 97, 82, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (491, 97, 90, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (492, 98, 45, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (493, 98, 12, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (494, 98, 60, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (495, 98, 44, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (496, 98, 74, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (497, 99, 19, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (498, 99, 12, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (499, 99, 44, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (500, 99, 74, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (501, 99, 76, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (502, 100, 33, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (503, 100, 14, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (504, 100, 78, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (505, 100, 92, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (506, 100, 101, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (507, 101, 33, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (508, 101, 14, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (509, 101, 78, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (510, 101, 124, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (511, 101, 101, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (512, 102, 39, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (513, 102, 77, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (514, 102, 96, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (515, 102, 81, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (516, 103, 39, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (517, 103, 29, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (518, 103, 96, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (519, 103, 81, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (520, 103, 123, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (521, 104, 35, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (522, 104, 38, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (523, 104, 53, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (524, 104, 75, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (525, 104, 110, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (526, 105, 35, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (527, 105, 38, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (528, 105, 53, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (529, 105, 110, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (530, 105, 122, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (531, 106, 3, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (532, 106, 38, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (533, 106, 56, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (534, 106, 57, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (535, 106, 116, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (536, 107, 26, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (537, 107, 38, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (538, 107, 56, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (539, 107, 80, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (540, 107, 91, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (541, 107, 86, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (542, 108, 5, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (543, 108, 29, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (544, 108, 124, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (545, 108, 111, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (546, 108, 65, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (547, 109, 33, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (548, 109, 88, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (549, 109, 68, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (550, 109, 102, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (551, 110, 33, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (552, 110, 88, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (553, 110, 90, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (554, 110, 102, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (555, 111, 35, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (556, 111, 38, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (557, 111, 75, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (558, 111, 47, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (559, 111, 65, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (560, 112, 35, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (561, 112, 38, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (562, 112, 122, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (563, 112, 115, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (564, 112, 116, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (565, 113, 16, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (566, 113, 29, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (567, 113, 97, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (568, 113, 124, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (569, 113, 96, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (570, 114, 17, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (571, 114, 111, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (572, 114, 102, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (573, 114, 123, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (574, 115, 3, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (575, 115, 35, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (576, 115, 56, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (577, 115, 122, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (578, 115, 65, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (579, 116, 45, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (580, 116, 13, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (581, 116, 60, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (582, 116, 107, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (583, 116, 104, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (584, 117, 7, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (585, 117, 13, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (586, 117, 120, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (587, 117, 107, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (588, 117, 118, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (589, 118, 12, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (590, 118, 24, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (591, 118, 89, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (592, 118, 47, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (593, 118, 74, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (594, 119, 24, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (595, 119, 31, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (596, 119, 50, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (597, 119, 115, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (598, 119, 93, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (599, 120, 33, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (600, 120, 13, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (601, 120, 60, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (602, 120, 87, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (603, 120, 62, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (604, 121, 33, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (605, 121, 13, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (606, 121, 118, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (607, 121, 87, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (608, 121, 96, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (609, 122, 39, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (610, 122, 29, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (611, 122, 79, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (612, 122, 96, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (613, 122, 90, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (614, 123, 2, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (615, 123, 36, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (616, 123, 112, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (617, 123, 71, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (618, 123, 76, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (619, 124, 20, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (620, 124, 16, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (621, 124, 46, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (622, 124, 91, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (623, 124, 82, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (624, 125, 3, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (625, 125, 6, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (626, 125, 121, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (627, 125, 86, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (628, 125, 101, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (629, 126, 23, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (630, 126, 9, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (631, 126, 119, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (632, 126, 80, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (633, 126, 100, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (634, 127, 2, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (635, 127, 38, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (636, 127, 58, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (637, 127, 44, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (638, 127, 76, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (639, 128, 33, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (640, 128, 29, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (641, 128, 122, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (642, 128, 47, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (643, 128, 69, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (644, 129, 1, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (645, 129, 40, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (646, 130, 8, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (647, 130, 107, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (648, 130, 118, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (649, 130, 42, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (650, 131, 20, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (651, 131, 41, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (652, 131, 120, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (653, 131, 107, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (654, 131, 108, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (655, 132, 16, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (656, 132, 40, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (657, 133, 33, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (658, 133, 22, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (659, 133, 84, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (660, 133, 110, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (661, 133, 62, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (662, 134, 13, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (663, 134, 89, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (664, 134, 118, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (665, 134, 74, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (666, 135, 6, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (667, 135, 78, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (668, 135, 121, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (669, 135, 101, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (670, 136, 23, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (671, 136, 119, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (672, 136, 100, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (673, 136, 114, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (674, 137, 33, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (675, 137, 29, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (676, 137, 78, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (677, 137, 79, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (678, 137, 92, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (679, 138, 12, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (680, 138, 13, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (681, 138, 77, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (682, 138, 70, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (683, 138, 52, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (684, 139, 12, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (685, 139, 13, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (686, 139, 77, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (687, 139, 118, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (688, 139, 94, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (689, 140, 12, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (690, 140, 11, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (691, 140, 77, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (692, 140, 43, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (693, 140, 70, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (694, 141, 2, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (695, 141, 12, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (696, 141, 77, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (697, 141, 116, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (698, 141, 74, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (699, 142, 8, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (700, 142, 36, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (701, 142, 77, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (702, 142, 124, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (703, 142, 69, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (704, 143, 5, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (705, 143, 29, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (706, 143, 84, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (707, 143, 122, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (708, 143, 124, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (709, 144, 20, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (710, 144, 120, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (711, 144, 108, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (712, 144, 50, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (713, 145, 6, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (714, 145, 78, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (715, 145, 121, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (716, 145, 101, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (717, 146, 23, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (718, 146, 119, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (719, 146, 100, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (720, 146, 114, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (721, 147, 7, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (722, 147, 89, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (723, 147, 42, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (724, 147, 49, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (725, 148, 7, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (726, 148, 89, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (727, 148, 107, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (728, 148, 49, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (729, 149, 7, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (730, 149, 36, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (731, 149, 72, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (732, 149, 107, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (733, 149, 124, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (734, 150, 39, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (735, 150, 18, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (736, 150, 124, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (737, 150, 96, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (738, 150, 90, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (739, 151, 16, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (740, 151, 120, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (741, 151, 107, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (742, 151, 122, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (743, 151, 119, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (744, 151, 124, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (745, 151, 96, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (746, 151, 123, NULL)
;
INSERT pokemons_attacks (pokemon_attack_id, pokemon_id, attack_id, true_damageps) VALUES (747, 151, 121, NULL)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (7, 1, 12)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (8, 1, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (9, 2, 12)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (10, 2, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (11, 3, 12)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (12, 3, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (13, 4, 10)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (14, 5, 10)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (15, 6, 10)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (16, 6, 3)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (17, 7, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (18, 8, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (19, 9, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (20, 10, 7)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (21, 11, 7)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (22, 12, 7)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (23, 12, 3)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (24, 13, 7)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (25, 13, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (26, 14, 7)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (27, 14, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (28, 15, 7)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (29, 15, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (30, 16, 3)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (31, 16, 1)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (32, 17, 3)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (33, 17, 1)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (34, 18, 3)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (35, 18, 1)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (36, 19, 1)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (37, 20, 1)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (38, 21, 3)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (39, 21, 1)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (40, 22, 3)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (41, 22, 1)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (42, 23, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (43, 24, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (44, 25, 13)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (45, 26, 13)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (46, 27, 5)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (47, 28, 5)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (48, 29, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (49, 30, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (50, 31, 5)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (51, 31, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (52, 32, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (53, 33, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (54, 34, 5)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (55, 34, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (56, 35, 18)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (57, 36, 18)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (58, 37, 10)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (59, 38, 10)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (60, 39, 18)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (61, 39, 1)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (62, 40, 18)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (63, 40, 1)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (64, 41, 3)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (65, 41, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (66, 42, 3)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (67, 42, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (68, 43, 12)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (69, 43, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (70, 44, 12)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (71, 44, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (72, 45, 12)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (73, 45, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (74, 46, 7)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (75, 46, 12)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (76, 47, 7)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (77, 47, 12)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (78, 48, 7)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (79, 48, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (80, 49, 7)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (81, 49, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (82, 50, 5)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (83, 51, 5)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (84, 52, 1)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (85, 53, 1)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (86, 54, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (87, 55, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (88, 56, 2)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (89, 57, 2)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (90, 58, 10)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (91, 59, 10)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (92, 60, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (93, 61, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (94, 62, 2)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (95, 62, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (96, 63, 14)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (97, 64, 14)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (98, 65, 14)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (99, 66, 2)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (100, 67, 2)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (101, 68, 2)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (102, 69, 12)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (103, 69, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (104, 70, 12)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (105, 70, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (106, 71, 12)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (107, 71, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (108, 72, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (109, 72, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (110, 73, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (111, 73, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (112, 74, 5)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (113, 74, 6)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (114, 75, 5)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (115, 75, 6)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (116, 76, 5)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (117, 76, 6)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (118, 77, 10)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (119, 78, 10)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (120, 79, 14)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (121, 79, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (122, 80, 14)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (123, 80, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (124, 81, 13)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (125, 81, 9)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (126, 82, 13)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (127, 82, 9)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (128, 83, 3)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (129, 83, 1)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (130, 84, 3)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (131, 84, 1)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (132, 85, 3)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (133, 85, 1)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (134, 86, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (135, 87, 15)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (136, 87, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (137, 88, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (138, 89, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (139, 90, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (140, 91, 15)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (141, 91, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (142, 92, 8)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (143, 92, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (144, 93, 8)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (145, 93, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (146, 94, 8)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (147, 94, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (148, 95, 5)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (149, 95, 6)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (150, 96, 14)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (151, 97, 14)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (152, 98, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (153, 99, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (154, 100, 13)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (155, 101, 13)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (156, 102, 12)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (157, 102, 14)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (158, 103, 12)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (159, 103, 14)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (160, 104, 5)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (161, 105, 5)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (162, 106, 2)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (163, 107, 2)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (164, 108, 1)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (165, 109, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (166, 110, 4)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (167, 111, 5)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (168, 111, 6)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (169, 112, 5)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (170, 112, 6)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (171, 113, 1)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (172, 114, 12)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (173, 115, 1)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (174, 116, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (175, 117, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (176, 118, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (177, 119, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (178, 120, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (179, 121, 14)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (180, 121, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (181, 122, 18)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (182, 122, 14)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (183, 123, 7)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (184, 123, 3)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (185, 124, 15)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (186, 124, 14)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (187, 125, 13)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (188, 126, 10)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (189, 127, 7)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (190, 128, 1)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (191, 129, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (192, 130, 3)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (193, 130, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (194, 131, 15)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (195, 131, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (196, 132, 1)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (197, 133, 1)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (198, 134, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (199, 135, 13)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (200, 136, 10)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (201, 137, 1)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (202, 138, 6)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (203, 138, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (204, 139, 6)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (205, 139, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (206, 140, 6)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (207, 140, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (208, 141, 6)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (209, 141, 11)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (210, 142, 3)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (211, 142, 6)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (212, 143, 1)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (213, 144, 3)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (214, 144, 15)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (215, 145, 13)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (216, 145, 3)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (217, 146, 10)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (218, 146, 3)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (219, 147, 16)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (220, 148, 16)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (221, 149, 16)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (222, 149, 3)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (223, 150, 14)
;
INSERT pokemons_types (pokemon_type_id, pokemon_id, type_id) VALUES (224, 151, 14)
;
INSERT types (type_id, type, icon) VALUES (1, N'Normal', N'/sites/default/files/2016-07/normal.gif')
;
INSERT types (type_id, type, icon) VALUES (2, N'Fighting', N'/sites/default/files/2016-07/fighting.gif')
;
INSERT types (type_id, type, icon) VALUES (3, N'Flying', N'/sites/default/files/2016-07/flying.gif')
;
INSERT types (type_id, type, icon) VALUES (4, N'Poison', N'/sites/default/files/2016-07/poison.gif')
;
INSERT types (type_id, type, icon) VALUES (5, N'Ground', N'/sites/default/files/2016-07/ground.gif')
;
INSERT types (type_id, type, icon) VALUES (6, N'Rock', N'/sites/default/files/2016-07/rock.gif')
;
INSERT types (type_id, type, icon) VALUES (7, N'Bug', N'/sites/default/files/2016-07/bug.gif')
;
INSERT types (type_id, type, icon) VALUES (8, N'Ghost', N'/sites/default/files/2016-07/ghost.gif')
;
INSERT types (type_id, type, icon) VALUES (9, N'Steel', N'/sites/default/files/2016-07/steel.gif')
;
INSERT types (type_id, type, icon) VALUES (10, N'Fire', N'/sites/default/files/2016-07/fire.gif')
;
INSERT types (type_id, type, icon) VALUES (11, N'Water', N'/sites/default/files/2016-07/water.gif')
;
INSERT types (type_id, type, icon) VALUES (12, N'Grass', N'/sites/default/files/2016-07/grass.gif')
;
INSERT types (type_id, type, icon) VALUES (13, N'Electric', N'/sites/default/files/2016-07/electric.gif')
;
INSERT types (type_id, type, icon) VALUES (14, N'Psychic', N'/sites/default/files/2016-07/psychic.gif')
;
INSERT types (type_id, type, icon) VALUES (15, N'Ice', N'/sites/default/files/2016-07/ice.gif')
;
INSERT types (type_id, type, icon) VALUES (16, N'Dragon', N'/sites/default/files/2016-07/dra;n.gif')
;
INSERT types (type_id, type, icon) VALUES (17, N'Dark', N'/sites/default/files/2016-07/dark.gif')
;
INSERT types (type_id, type, icon) VALUES (18, N'Fairy', N'/sites/default/files/2016-07/fairy.gif')
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (1, 1, 1, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (2, 1, 10, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (3, 1, 11, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (4, 1, 12, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (5, 1, 13, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (6, 1, 14, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (7, 1, 15, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (8, 1, 16, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (9, 1, 17, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (10, 1, 18, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (11, 1, 2, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (12, 1, 3, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (13, 1, 4, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (14, 1, 5, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (15, 1, 6, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (16, 1, 7, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (17, 1, 8, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (18, 1, 9, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (19, 10, 1, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (20, 10, 10, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (21, 10, 11, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (22, 10, 12, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (23, 10, 13, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (24, 10, 14, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (25, 10, 15, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (26, 10, 16, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (27, 10, 17, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (28, 10, 18, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (29, 10, 2, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (30, 10, 3, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (31, 10, 4, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (32, 10, 5, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (33, 10, 6, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (34, 10, 7, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (35, 10, 8, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (36, 10, 9, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (37, 11, 1, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (38, 11, 10, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (39, 11, 11, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (40, 11, 12, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (41, 11, 13, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (42, 11, 14, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (43, 11, 15, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (44, 11, 16, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (45, 11, 17, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (46, 11, 18, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (47, 11, 2, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (48, 11, 3, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (49, 11, 4, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (50, 11, 5, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (51, 11, 6, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (52, 11, 7, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (53, 11, 8, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (54, 11, 9, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (55, 12, 1, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (56, 12, 10, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (57, 12, 11, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (58, 12, 12, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (59, 12, 13, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (60, 12, 14, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (61, 12, 15, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (62, 12, 16, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (63, 12, 17, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (64, 12, 18, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (65, 12, 2, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (66, 12, 3, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (67, 12, 4, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (68, 12, 5, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (69, 12, 6, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (70, 12, 7, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (71, 12, 8, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (72, 12, 9, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (73, 13, 1, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (74, 13, 10, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (75, 13, 11, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (76, 13, 12, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (77, 13, 13, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (78, 13, 14, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (79, 13, 15, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (80, 13, 16, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (81, 13, 17, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (82, 13, 18, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (83, 13, 2, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (84, 13, 3, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (85, 13, 4, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (86, 13, 5, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (87, 13, 6, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (88, 13, 7, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (89, 13, 8, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (90, 13, 9, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (91, 14, 1, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (92, 14, 10, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (93, 14, 11, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (94, 14, 12, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (95, 14, 13, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (96, 14, 14, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (97, 14, 15, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (98, 14, 16, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (99, 14, 17, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (100, 14, 18, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (101, 14, 2, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (102, 14, 3, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (103, 14, 4, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (104, 14, 5, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (105, 14, 6, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (106, 14, 7, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (107, 14, 8, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (108, 14, 9, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (109, 15, 1, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (110, 15, 10, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (111, 15, 11, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (112, 15, 12, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (113, 15, 13, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (114, 15, 14, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (115, 15, 15, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (116, 15, 16, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (117, 15, 17, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (118, 15, 18, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (119, 15, 2, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (120, 15, 3, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (121, 15, 4, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (122, 15, 5, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (123, 15, 6, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (124, 15, 7, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (125, 15, 8, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (126, 15, 9, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (127, 16, 1, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (128, 16, 10, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (129, 16, 11, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (130, 16, 12, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (131, 16, 13, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (132, 16, 14, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (133, 16, 15, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (134, 16, 16, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (135, 16, 17, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (136, 16, 18, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (137, 16, 2, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (138, 16, 3, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (139, 16, 4, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (140, 16, 5, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (141, 16, 6, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (142, 16, 7, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (143, 16, 8, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (144, 16, 9, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (145, 17, 1, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (146, 17, 10, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (147, 17, 11, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (148, 17, 12, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (149, 17, 13, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (150, 17, 14, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (151, 17, 15, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (152, 17, 16, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (153, 17, 17, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (154, 17, 18, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (155, 17, 2, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (156, 17, 3, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (157, 17, 4, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (158, 17, 5, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (159, 17, 6, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (160, 17, 7, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (161, 17, 8, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (162, 17, 9, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (163, 18, 1, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (164, 18, 10, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (165, 18, 11, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (166, 18, 12, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (167, 18, 13, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (168, 18, 14, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (169, 18, 15, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (170, 18, 16, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (171, 18, 17, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (172, 18, 18, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (173, 18, 2, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (174, 18, 3, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (175, 18, 4, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (176, 18, 5, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (177, 18, 6, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (178, 18, 7, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (179, 18, 8, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (180, 18, 9, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (181, 2, 1, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (182, 2, 10, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (183, 2, 11, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (184, 2, 12, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (185, 2, 13, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (186, 2, 14, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (187, 2, 15, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (188, 2, 16, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (189, 2, 17, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (190, 2, 18, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (191, 2, 2, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (192, 2, 3, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (193, 2, 4, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (194, 2, 5, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (195, 2, 6, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (196, 2, 7, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (197, 2, 8, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (198, 2, 9, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (199, 3, 1, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (200, 3, 10, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (201, 3, 11, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (202, 3, 12, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (203, 3, 13, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (204, 3, 14, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (205, 3, 15, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (206, 3, 16, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (207, 3, 17, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (208, 3, 18, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (209, 3, 2, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (210, 3, 3, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (211, 3, 4, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (212, 3, 5, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (213, 3, 6, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (214, 3, 7, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (215, 3, 8, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (216, 3, 9, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (217, 4, 1, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (218, 4, 10, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (219, 4, 11, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (220, 4, 12, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (221, 4, 13, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (222, 4, 14, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (223, 4, 15, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (224, 4, 16, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (225, 4, 17, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (226, 4, 18, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (227, 4, 2, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (228, 4, 3, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (229, 4, 4, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (230, 4, 5, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (231, 4, 6, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (232, 4, 7, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (233, 4, 8, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (234, 4, 9, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (235, 5, 1, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (236, 5, 10, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (237, 5, 11, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (238, 5, 12, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (239, 5, 13, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (240, 5, 14, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (241, 5, 15, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (242, 5, 16, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (243, 5, 17, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (244, 5, 18, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (245, 5, 2, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (246, 5, 3, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (247, 5, 4, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (248, 5, 5, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (249, 5, 6, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (250, 5, 7, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (251, 5, 8, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (252, 5, 9, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (253, 6, 1, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (254, 6, 10, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (255, 6, 11, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (256, 6, 12, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (257, 6, 13, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (258, 6, 14, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (259, 6, 15, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (260, 6, 16, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (261, 6, 17, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (262, 6, 18, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (263, 6, 2, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (264, 6, 3, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (265, 6, 4, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (266, 6, 5, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (267, 6, 6, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (268, 6, 7, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (269, 6, 8, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (270, 6, 9, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (271, 7, 1, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (272, 7, 10, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (273, 7, 11, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (274, 7, 12, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (275, 7, 13, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (276, 7, 14, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (277, 7, 15, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (278, 7, 16, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (279, 7, 17, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (280, 7, 18, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (281, 7, 2, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (282, 7, 3, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (283, 7, 4, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (284, 7, 5, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (285, 7, 6, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (286, 7, 7, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (287, 7, 8, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (288, 7, 9, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (289, 8, 1, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (290, 8, 10, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (291, 8, 11, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (292, 8, 12, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (293, 8, 13, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (294, 8, 14, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (295, 8, 15, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (296, 8, 16, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (297, 8, 17, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (298, 8, 18, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (299, 8, 2, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (300, 8, 3, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (301, 8, 4, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (302, 8, 5, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (303, 8, 6, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (304, 8, 7, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (305, 8, 8, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (306, 8, 9, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (307, 9, 1, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (308, 9, 10, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (309, 9, 11, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (310, 9, 12, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (311, 9, 13, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (312, 9, 14, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (313, 9, 15, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (314, 9, 16, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (315, 9, 17, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (316, 9, 18, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (317, 9, 2, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (318, 9, 3, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (319, 9, 4, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (320, 9, 5, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (321, 9, 6, CAST(1.2500 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (322, 9, 7, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (323, 9, 8, CAST(1.0000 AS Decimal(18, 4)))
;
INSERT types_types (type_type_id, attacker_type_id, defender_type_id, multiplier) VALUES (324, 9, 9, CAST(0.8000 AS Decimal(18, 4)))
;
INSERT TypesMultiplier (ID, TYPE, NORMAL, FIGHTING, FLYING, POISON, GROUND, ROCK, BUG, GHOST, STEEL, FIRE, WATER, GRASS, ELECTRIC, PSYCHIC, ICE, DRAGON, DARK, FAIRY) VALUES (1, N'NORMAL', 1, 1, 1, 1, 1, 0.8, 1, 0.8, 0.8, 1, 1, 1, 1, 1, 1, 1, 1, 1)
;
INSERT TypesMultiplier (ID, TYPE, NORMAL, FIGHTING, FLYING, POISON, GROUND, ROCK, BUG, GHOST, STEEL, FIRE, WATER, GRASS, ELECTRIC, PSYCHIC, ICE, DRAGON, DARK, FAIRY) VALUES (2, N'FIGHTING', 1.25, 1, 0.8, 0.8, 1, 1.25, 0.8, 0.8, 1.25, 1, 1, 1, 1, 0.8, 1.25, 1, 1.25, 0.8)
;
INSERT TypesMultiplier (ID, TYPE, NORMAL, FIGHTING, FLYING, POISON, GROUND, ROCK, BUG, GHOST, STEEL, FIRE, WATER, GRASS, ELECTRIC, PSYCHIC, ICE, DRAGON, DARK, FAIRY) VALUES (3, N'FLYING', 1, 1.25, 1, 1, 1, 0.8, 1.25, 1, 0.8, 1, 1, 1.25, 0.8, 1, 1, 1, 1, 1)
;
INSERT TypesMultiplier (ID, TYPE, NORMAL, FIGHTING, FLYING, POISON, GROUND, ROCK, BUG, GHOST, STEEL, FIRE, WATER, GRASS, ELECTRIC, PSYCHIC, ICE, DRAGON, DARK, FAIRY) VALUES (4, N'POISON', 1, 1, 1, 0.8, 0.8, 0.8, 1, 0.8, 0.8, 1, 1, 1.25, 1, 1, 1, 1, 1, 1.25)
;
INSERT TypesMultiplier (ID, TYPE, NORMAL, FIGHTING, FLYING, POISON, GROUND, ROCK, BUG, GHOST, STEEL, FIRE, WATER, GRASS, ELECTRIC, PSYCHIC, ICE, DRAGON, DARK, FAIRY) VALUES (5, N'GROUND', 1, 1, 0.8, 1.25, 1, 1.25, 0.8, 1, 1.25, 1.25, 1, 0.8, 1.25, 1, 1, 1, 1, 1)
;
INSERT TypesMultiplier (ID, TYPE, NORMAL, FIGHTING, FLYING, POISON, GROUND, ROCK, BUG, GHOST, STEEL, FIRE, WATER, GRASS, ELECTRIC, PSYCHIC, ICE, DRAGON, DARK, FAIRY) VALUES (6, N'ROCK', 1, 0.8, 1.25, 1, 0.8, 1, 1.25, 1, 0.8, 1.25, 1, 1, 1, 1, 1.25, 1, 1, 1)
;
INSERT TypesMultiplier (ID, TYPE, NORMAL, FIGHTING, FLYING, POISON, GROUND, ROCK, BUG, GHOST, STEEL, FIRE, WATER, GRASS, ELECTRIC, PSYCHIC, ICE, DRAGON, DARK, FAIRY) VALUES (7, N'BUG', 1, 0.8, 0.8, 0.8, 1, 1, 1, 0.8, 0.8, 0.8, 1, 1.25, 1, 1.25, 1, 1, 1.25, 0.8)
;
INSERT TypesMultiplier (ID, TYPE, NORMAL, FIGHTING, FLYING, POISON, GROUND, ROCK, BUG, GHOST, STEEL, FIRE, WATER, GRASS, ELECTRIC, PSYCHIC, ICE, DRAGON, DARK, FAIRY) VALUES (8, N'GHOST', 0.8, 1, 1, 1, 1, 1, 1, 1.25, 1, 1, 1, 1, 1, 1.25, 1, 1, 0.8, 1)
;
INSERT TypesMultiplier (ID, TYPE, NORMAL, FIGHTING, FLYING, POISON, GROUND, ROCK, BUG, GHOST, STEEL, FIRE, WATER, GRASS, ELECTRIC, PSYCHIC, ICE, DRAGON, DARK, FAIRY) VALUES (9, N'STEEL', 1, 1, 1, 1, 1, 1.25, 1, 1, 0.8, 0.8, 0.8, 1, 0.8, 1, 1.25, 1, 1, 1.25)
;
INSERT TypesMultiplier (ID, TYPE, NORMAL, FIGHTING, FLYING, POISON, GROUND, ROCK, BUG, GHOST, STEEL, FIRE, WATER, GRASS, ELECTRIC, PSYCHIC, ICE, DRAGON, DARK, FAIRY) VALUES (10, N'FIRE', 1, 1, 1, 1, 1, 0.8, 1.25, 1, 1.25, 0.8, 0.8, 1.25, 1, 1, 1.25, 0.8, 1, 1)
;
INSERT TypesMultiplier (ID, TYPE, NORMAL, FIGHTING, FLYING, POISON, GROUND, ROCK, BUG, GHOST, STEEL, FIRE, WATER, GRASS, ELECTRIC, PSYCHIC, ICE, DRAGON, DARK, FAIRY) VALUES (11, N'WATER', 1, 1, 1, 1, 1.25, 1.25, 1, 1, 1, 1.25, 0.8, 0.8, 1, 1, 1, 0.8, 1, 1)
;
INSERT TypesMultiplier (ID, TYPE, NORMAL, FIGHTING, FLYING, POISON, GROUND, ROCK, BUG, GHOST, STEEL, FIRE, WATER, GRASS, ELECTRIC, PSYCHIC, ICE, DRAGON, DARK, FAIRY) VALUES (12, N'GRASS', 1, 1, 0.8, 0.8, 1.25, 1.25, 0.8, 1, 0.8, 0.8, 1.25, 0.8, 1, 1, 1, 0.8, 1, 1)
;
INSERT TypesMultiplier (ID, TYPE, NORMAL, FIGHTING, FLYING, POISON, GROUND, ROCK, BUG, GHOST, STEEL, FIRE, WATER, GRASS, ELECTRIC, PSYCHIC, ICE, DRAGON, DARK, FAIRY) VALUES (13, N'ELECTRIC', 1, 1, 1.25, 1, 0.8, 1, 1, 1, 1, 1, 1.25, 0.8, 0.8, 1, 1, 0.8, 1, 1)
;
INSERT TypesMultiplier (ID, TYPE, NORMAL, FIGHTING, FLYING, POISON, GROUND, ROCK, BUG, GHOST, STEEL, FIRE, WATER, GRASS, ELECTRIC, PSYCHIC, ICE, DRAGON, DARK, FAIRY) VALUES (14, N'PSYCHIC', 1, 1.25, 1, 1.25, 1, 1, 1, 1, 0.8, 1, 1, 1, 1, 0.8, 1, 1, 0.8, 1)
;
INSERT TypesMultiplier (ID, TYPE, NORMAL, FIGHTING, FLYING, POISON, GROUND, ROCK, BUG, GHOST, STEEL, FIRE, WATER, GRASS, ELECTRIC, PSYCHIC, ICE, DRAGON, DARK, FAIRY) VALUES (15, N'ICE', 1, 1, 1.25, 1, 1.25, 1, 1, 1, 0.8, 0.8, 0.8, 1.25, 1, 1, 0.8, 1.25, 1, 1)
;
INSERT TypesMultiplier (ID, TYPE, NORMAL, FIGHTING, FLYING, POISON, GROUND, ROCK, BUG, GHOST, STEEL, FIRE, WATER, GRASS, ELECTRIC, PSYCHIC, ICE, DRAGON, DARK, FAIRY) VALUES (16, N'DRAGON', 1, 1, 1, 1, 1, 1, 1, 1, 0.8, 1, 1, 1, 1, 1, 1, 1.25, 1, 0.8)
;
INSERT TypesMultiplier (ID, TYPE, NORMAL, FIGHTING, FLYING, POISON, GROUND, ROCK, BUG, GHOST, STEEL, FIRE, WATER, GRASS, ELECTRIC, PSYCHIC, ICE, DRAGON, DARK, FAIRY) VALUES (17, N'DARK', 1, 0.8, 1, 1, 1, 1, 1, 1.25, 1, 1, 1, 1, 1, 1.25, 1, 1, 0.8, 0.8)
;
INSERT TypesMultiplier (ID, TYPE, NORMAL, FIGHTING, FLYING, POISON, GROUND, ROCK, BUG, GHOST, STEEL, FIRE, WATER, GRASS, ELECTRIC, PSYCHIC, ICE, DRAGON, DARK, FAIRY) VALUES (18, N'FAIRY', 1, 1.25, 1, 0.8, 1, 1, 1, 1, 0.8, 0.8, 1, 1, 1, 1, 1, 1.25, 1.25, 1)
;
ALTER TABLE attacks ADD  CONSTRAINT FK_attacks_attacks_types FOREIGN KEY(attack_type_id)
REFERENCES attacks_types (attack_type_id)
;
ALTER TABLE attacks ADD  CONSTRAINT FK_attacks_types FOREIGN KEY(type_id)
REFERENCES types (type_id)
;
ALTER TABLE attacks_charge ADD  CONSTRAINT FK_attacks_charge_attacks FOREIGN KEY(attack_id)
REFERENCES attacks (attack_id)
ON DELETE CASCADE
;
ALTER TABLE attacks_quick ADD  CONSTRAINT FK_attacks_quick_attacks FOREIGN KEY(attack_id)
REFERENCES attacks (attack_id)
ON DELETE CASCADE
;
ALTER TABLE pokemons ADD  CONSTRAINT FK_pokemons_pokemons FOREIGN KEY(evolvefrom_pokemon_id)
REFERENCES pokemons (pokemon_id)
;
ALTER TABLE pokemons_attacks ADD  CONSTRAINT FK_pokemons_attacks_attacks FOREIGN KEY(attack_id)
REFERENCES attacks (attack_id)
;
ALTER TABLE pokemons_attacks ADD  CONSTRAINT FK_pokemons_attacks_pokemons FOREIGN KEY(pokemon_id)
REFERENCES pokemons (pokemon_id)
ON DELETE CASCADE
;
ALTER TABLE pokemons_types ADD  CONSTRAINT FK_pokemons_types_pokemons FOREIGN KEY(pokemon_id)
REFERENCES pokemons (pokemon_id)
ON DELETE CASCADE
;
ALTER TABLE pokemons_types ADD  CONSTRAINT FK_pokemons_types_types FOREIGN KEY(type_id)
REFERENCES types (type_id)
;
ALTER TABLE types_types ADD  CONSTRAINT FK_types_types_types FOREIGN KEY(attacker_type_id)
REFERENCES types (type_id)
;
ALTER TABLE types_types ADD  CONSTRAINT FK_types_types_types1 FOREIGN KEY(defender_type_id)
REFERENCES types (type_id)
;