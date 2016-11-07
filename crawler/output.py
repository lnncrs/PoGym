
# base types
types_b = ['Normal', 'Fighting', 'Flying', 'Poison', 'Ground', 'Rock', 'Bug', 'Ghost', 'Steel', 'Fire', 'Water', 'Grass', 'Electric', 'Psychic', 'Ice', 'Dragon', 'Dark', 'Fairy']

# base move types
types_a = ['Quick Move', 'Charge Move']

# moves
moves = [['Splash', 'Quick Move', 'Water', '0', '1.23', '0.00', '0.00', '0'],['Fury Cutter', 'Quick Move', 'Bug', '3', '0.40', '15.00', '7.50', '0'],['Low Kick', 'Quick Move', 'Fighting', '5', '0.60', '11.67', '8.33', '0'],['Bug Bite', 'Quick Move', 'Bug', '5', '0.45', '15.56', '11.11', '0'],['Lick', 'Quick Move', 'Ghost', '5', '0.50', '12.00', '10.00', '0']]

# pokecards
pokecards = [['1', 'Bulbasaur', '/sites/default/files/styles/pokemon_small/public/2016-08/1_0.png', '/sites/default/files/styles/240w/public/2016-08/1_0.png', '/pokemon/1', '0.70', '6.90', '1071', '126', '126', '90', ['Grass', 'Poison'], [['Tackle', 0], ['Vine Whip', 0]], [['Power Whip', 0], ['Seed Bomb', 0], ['Sludge Bomb', 0]]],['2', 'Ivysaur', '/sites/default/files/styles/pokemon_small/public/2016-08/2.png', '/sites/default/files/styles/240w/public/2016-08/2.png', '/pokemon/2', '1.00', '13.00', '1632', '156', '158', '120', ['Grass', 'Poison'], [['Razor Leaf', 0], ['Vine Whip', 0]], [['Power Whip', 0], ['Sludge Bomb', 0], ['Solar Beam', 0]]],['3', 'Venusaur', '/sites/default/files/styles/pokemon_small/public/2016-07/3.png', '/sites/default/files/styles/240w/public/2016-07/3.png', '/pokemon/3', '2.00', '100.00', '2580', '198', '200', '160', ['Grass', 'Poison'], [['Razor Leaf', 0], ['Vine Whip', 0]], [['Petal Blizzard', 0], ['Sludge Bomb', 0], ['Solar Beam', 0]]]]

def v(x):
    if x == 1:
        return ''
    else:
        return ','

i = j = 0

print('use pogym\n')

i = 1
print('INSERT INTO [types] ([type_id],[type]) VALUES ')
for type_b in types_b:
    print('{2}({0}, \'{1}\')'.format(i, type_b, v(i)))
    i += 1
print(';\n')

i = 1
print('INSERT INTO [attacks_types] ([attack_type_id],[type]) VALUES ')
for type_a in types_a:
    print('{2}({0},\'{1}\')'.format(i, type_a, v(i)))
    i += 1
print(';\n')

i = 1
print('INSERT INTO [attacks] ([attack_id],[name],[attack_type_id],[type_id],[damage],[damageps],[move_cooldown],[energyps],[charge]) VALUES ')
for move in moves:
    print('{0}({1},\'{2}\',{3},{4},{5},{6},{7},{8},{9})'.format(v(i), i, move[0], types_a.index(move[1])+1, types_b.index(move[2])+1, move[3], move[6], move[4], move[5], move[7]))
    i += 1
print(';\n')

i = 1

for poke in pokecards:
    print('INSERT INTO [dbo].[pokemons] ([pokemon_id],[name],[icon],[image],[url],[height_avg],[weight_avg],[combatpower_max],[attack_base],[defense_base],[stamina_base]) VALUES ')
    print('({1},\'{2}\',\'{3}\',\'{4}\',\'{5}\',{6},{7},{8},{9},{10},{11})'.format(v(i), poke[0], poke[1], poke[2], poke[3], poke[4], poke[5], poke[6], poke[7], poke[8], poke[9], poke[10]))
    print(';\n')

    # 11 types
    for type_b in poke[11]:
        print('INSERT INTO [dbo].[pokemons_types] ([pokemon_id],[type_id]) VALUES ({0},{1})'.format(poke[0], types_b.index(type_b)+1))
    print(';\n')

    # 12 quick
    for move in poke[12]:
        i = 1
        j = 0
        for move_s in moves:
            if move_s[0] == move[0]:
                j = i
                break
            i += 1
        print('INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES ({0},{1})'.format(poke[0], j))
    print(';\n')

    # 13 charge
    for move in poke[13]:
        i = 1
        j = 0
        for move_s in moves:
            if move_s[0] == move[0]:
                j = i
                break
            i += 1
        print('INSERT INTO [dbo].[pokemons_attacks] ([pokemon_id],[attack_id]) VALUES ({0},{1})'.format(poke[0], j))
    print(';\n')
