from bs4 import BeautifulSoup
from urllib.request import urlopen

# ====================
# generate pokemon list
# ====================

print('collecting pokemons...')

# base url
gg = 'https://pokemongo.gamepress.gg/'

# base types
types_b = ['Normal', 'Fighting', 'Flying', 'Poison', 'Ground', 'Rock', 'Bug', 'Ghost', 'Steel', 'Fire', 'Water', 'Grass', 'Electric', 'Psychic', 'Ice', 'Dragon', 'Dark', 'Fairy']

# landing page
polist = 'https://pokemongo.gamepress.gg/pokemon-list'

# poke list
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
    name = cols[2].text.strip()
    url = cols[2].a['href']

    icon = cols[1].img['src']
    if icon.find('?') != -1:
        icon = icon[:icon.find('?')]

    maxcp = cols[3].text.strip()
    pokes.append([number, name, url, icon, maxcp])

    # break

print('collected ' + str(len(pokes)) + ' pokemons')

# ====================
# output pokemon list
# ====================

# for poke in pokes:
    # print(poke)
