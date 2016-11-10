from bs4 import BeautifulSoup
from urllib.request import urlopen

# base url
gg = 'https://pokemongo.gamepress.gg/'

# base types
types_b = ['Normal', 'Fighting', 'Flying', 'Poison', 'Ground', 'Rock', 'Bug', 'Ghost', 'Steel', 'Fire', 'Water', 'Grass', 'Electric', 'Psychic', 'Ice', 'Dragon', 'Dark', 'Fairy']

# base move types
types_a = ['Quick Move', 'Charge Move']

# test limit (limit step #3)
limit = 9

# ====================
# step #1 generate moves list
# ====================

print('step #1 collecting moves...')

# landing page
molist = 'https://pokemongo.gamepress.gg/pokemon-moves'

# moves list
moves = list()
moves_n = list()

# make the soup
html_l = urlopen(molist)
soup_l = BeautifulSoup(html_l, 'html.parser')

# find the entry point
table = soup_l.find('table', {'id': 'sort-table'})
table_body = table.find('tbody')

# iterate the table
for row in table_body.findAll('tr'):

    cols = row.findAll('td')
    name = cols[0].a.text.strip()
    type_m = 'Quick Move'
    type_t = cols[0].find('div', {'class': 'taxonomy-term'}).h2.a.div.text.strip()
    damage = cols[1].text.strip()
    cool = cols[2].text.strip()
    energy = cols[3].text.strip()
    dps = cols[4].text.strip()
    # charge = '0'

    # if is a charge move (and is not a Magikarp)
    if energy == '0.00' and damage != '0':
        bars = cols[0].findAll('img')
        if bars is not None:
            type_m = 'Charge Move'
            charge = bars[0]['alt'].replace('Energy', '').strip()

    moves.append([name, type_m, type_t, damage, cool, dps])
    moves_n.append(name)

    # break

print('collected ' + str(len(moves)) + ' moves')
# print(moves)
# print(moves_n)

# ====================
# step #1.1 generate quick moves details
# ====================

print('\nstep #1.1 collecting quick moves details...')

# landing page
molist = 'https://pokemongo.gamepress.gg/quick-moves'

# moves list
moves_q = list()

# make the soup
html_l = urlopen(molist)
soup_l = BeautifulSoup(html_l, 'html.parser')

# find the entry point
table = soup_l.find('table', {'id': 'sort-table'})
table_body = table.find('tbody')

# iterate the table
for row in table_body.findAll('tr'):

    cols = row.findAll('td')
    name = cols[0].a.text.strip()
    type_m = 'Quick Move'
    energyps = cols[3].text.strip()
    energypu = cols[4].text.strip()
    defensive = cols[5].text.strip()

    moves_q.append([name, type_m, energyps, energypu, defensive])

    # break

print('collected ' + str(len(moves_q)) + ' moves')
# print(moves_q)

# ====================
# step #1.2 generate charge moves details
# ====================

print('\nstep #1.2 collecting charge moves details...')

# landing page
molist = 'https://pokemongo.gamepress.gg/charge-moves'

# moves list
moves_c = list()

# make the soup
html_l = urlopen(molist)
soup_l = BeautifulSoup(html_l, 'html.parser')

# find the entry point
table = soup_l.find('table', {'id': 'sort-table'})
table_body = table.find('tbody')

# iterate the table
for row in table_body.findAll('tr'):

    cols = row.findAll('td')
    name = cols[0].a.text.strip()
    type_m = 'Charge Move'
    dodge = cols[2].text.strip()
    critical = cols[3].text.strip()
    charge = '0'

    # if is a charge move (and is not a Magikarp)
    # if energy == '0.00' and damage != '0':
    bars = cols[0].findAll('img')
    if bars is not None:
        charge = bars[0]['alt'].replace('Energy','').strip()

    moves_c.append([name, type_m, dodge, critical, charge])

    # break

print('collected ' + str(len(moves_c)) + ' moves')
# print(moves_c)

# exit()

# ====================
# step #2 generate pokemon list
# ====================

print('\nstep #2 collecting pokemons...')

# landing page
polist = 'https://pokemongo.gamepress.gg/pokemon-list'

# pokes list
pokes = list()

# make the soup
html_l = urlopen(polist)
soup_l = BeautifulSoup(html_l, 'html.parser')

# find the entry point
table = soup_l.find('table', {'id': 'sort-table'})
table_body = table.find('tbody')

# iterate the table
for row in table_body.findAll('tr'):

    cols = row.findAll('td')
    number = cols[0].text.strip()
    name = cols[2].text.replace('\'', '\'\'').strip()  # Farfetch'd
    url = cols[2].a['href']

    icon = cols[1].img['src']
    if icon is not None:
        if icon.find('?') != -1:
            icon = icon[:icon.find('?')]

    maxcp = cols[3].text.strip()
    pokes.append([number, name, url, icon, maxcp])

    # break

print('collected ' + str(len(pokes)) + ' pokemons')

# ====================
# step #3 gather pokemon individual data
# ====================

print('\nstep #3 processing individual data')

# create pokecards list
pokecards = list()
i = 1

# iterate the poke list
for poke in pokes:

    # poke page
    po = gg + poke[2]

    print('processing #' + str(poke[0]) + ' ' + poke[1] + ' (' + po + ')')

    # make the soup
    html_p = urlopen(po)
    soup_p = BeautifulSoup(html_p, 'html.parser')

    # find the entry point
    data_p = soup_p.find('div', {'id': 'block-gamepressbase-content'})

    # get image
    image = data_p.find('div', {'class': 'pokemon-image'}).img['src']
    if image.find('?') != -1:
        image = image[:image.find('?')]
    # print(image)

    # get types
    types = list()
    types_p = data_p.find('div', {'class': 'pokemon-type'}).findAll('div', {'class': 'taxonomy-term'})
    for type_p in types_p:
        types.append(type_p.h2.a.div.text)
    # print(types)

    # get dimensions
    weight = data_p.find('div', {'class': 'pokemon-weight'}).text.replace('kg', '').replace('Weight', '').strip()
    height = data_p.find('div', {'class': 'pokemon-height'}).text.replace('m', '').replace('Height', '').strip()
    # print(weight + ',' + height)

    # get stats
    stats = data_p.find('div', {'class': 'pokemon-stats'}).findAll('div')
    attack = stats[0].span.text.replace('ATK', '').strip()
    defense = stats[1].span.text.replace('DEF', '').strip()
    stamina = stats[2].span.text.replace('STA', '').strip()
    # print(attack + ',' + defense + ',' + stamina)

    # get quick moves
    quick_moves = list()  # = [['tackle',12.3], ['tackle',12.3]]
    moves_q = data_p.find('div', {'class': 'primary-move'}).div.findAll('article')
    for move_q in moves_q:
        move = move_q.find('div', {'class': 'primary-move-title'}).a.span.text
        dps = 0  # move_q.find('div', {'class': 'true-dps-container'}).find('span', {'class': 'true-damage'})
        quick_moves.append([move, dps])
    # print(quick_moves)

    # get charge moves
    charge_moves = list()  # = [['tackle',12.3], ['tackle',12.3]]
    moves_c = data_p.find('div', {'class': 'secondary-move'}).div.findAll('article')
    for move_c in moves_c:
        move = move_c.find('div', {'class': 'primary-move-title'}).a.span.text
        dps = 0  # move_q.find('div', {'class': 'true-dps-container'}).find('span', {'class': 'true-damage'})
        charge_moves.append([move, dps])
    # print(charge_moves)

    pokecards.append([poke[0],poke[1],poke[3],image,poke[2],height,weight,poke[4],attack,defense,stamina,types,quick_moves,charge_moves])

    i += 1
    if limit != 0:
        if i > limit:
            break

    # break

# ====================
# output "snorlax" sql script
# ====================

print('\nstep #4 output (copy everything below this line on your fancy sgdb)')
print('==================== are you seeing this line? ====================')


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
print('INSERT INTO [attacks] ([attack_id],[name],[attack_type_id],[type_id],[damage],[move_cooldown],[damageps]) VALUES ')
for move in moves:
    print('{0}({1},\'{2}\',{3},{4},{5},{6},{7})'.format(v(i), i, move[0], types_a.index(move[1])+1, types_b.index(move[2])+1, move[3], move[4], move[5]))
    i += 1
print(';\n')

i = 1
print('INSERT INTO [attacks_quick] ([attack_id],[energyps],[energypu],[defensive_damageps]) VALUES')
for move in moves_q:
    print('{0}({1},{2},{3},{4})'.format(v(i), moves_n.index(moves_q[0])+1, move[2], move[3], move[4]))
    i += 1
print(';\n')

i = 1
print('INSERT INTO [dbo].[attacks_charge] ([attack_id],[dodge],[critical],[charge]) VALUES')
for move in moves_c:
    print('{0}({1},{2},{3},{4})'.format(v(i), moves_n.index(moves_c[0])+1, move[2], move[3], move[4]))
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
