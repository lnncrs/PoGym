from bs4 import BeautifulSoup
from urllib.request import urlopen

# ====================
# gather pokemon individual data
# ====================

# base url
gg = 'https://pokemongo.gamepress.gg/'

# base types
types_b = ['Normal', 'Fighting', 'Flying', 'Poison', 'Ground', 'Rock', 'Bug', 'Ghost', 'Steel', 'Fire', 'Water', 'Grass', 'Electric', 'Psychic', 'Ice', 'Dragon', 'Dark', 'Fairy']

# poke test list
pokes = list()
pokes.append(['1', 'Bulbasaur', '/pokemon/1', '/sites/default/files/styles/pokemon_small/public/2016-08/1_0.png', '1071'])

# exclusive code

# create pokes list
pokecards = list()

# iterate the poke list
for poke in pokes:

    # poke page
    po = gg + poke[2]
    # po = 'https://pokemongo.gamepress.gg/pokemon/4'
    # po = 'https://pokemongo.gamepress.gg/pokemon/25'

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
    types = []
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
    quick_moves = []  # = [['tackle',12.3], ['tackle',12.3]]
    moves_q = data_p.find('div', {'class': 'primary-move'}).div.findAll('article')
    for move_q in moves_q:
        move = move_q.find('div', {'class': 'primary-move-title'}).a.span.text
        dps = 0  # move_q.find('div', {'class': 'true-dps-container'}).find('span', {'class': 'true-damage'})
        print(move_q.find('div', {'class': 'true-dps-container'}))
        quick_moves.append([move, dps])
    # print(quick_moves)

    # get charge moves
    charge_moves = []  # = [['tackle',12.3], ['tackle',12.3]]
    moves_c = data_p.find('div', {'class': 'secondary-move'}).div.findAll('article')
    for move_c in moves_c:
        move = move_c.find('div', {'class': 'primary-move-title'}).a.span.text
        dps = 0  # move_q.find('div', {'class': 'true-dps-container'}).find('span', {'class': 'true-damage'})
        charge_moves.append([move, dps])
    # print(charge_moves)

    pokecards.append([poke[0],poke[1],poke[3],image,poke[2],height,weight,poke[4],attack,defense,stamina,types,quick_moves,charge_moves])

    # break

# ====================
# output pokemon cards
# ====================

for poke in pokecards:
    print(poke)
