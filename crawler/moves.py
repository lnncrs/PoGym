from bs4 import BeautifulSoup
from urllib.request import urlopen

# ====================
# generate moves list
# ====================

print('collecting moves...')

# landing page
molist = 'https://pokemongo.gamepress.gg/pokemon-moves'

# list
moves = []

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
    charge = '0'

    # if is a charge move (and is not a Magikarp)
    if energy == '0.00' and damage != '0':
        bars = cols[0].findAll('img')
        if bars is not None:
            type_m = 'Charge Move'
            charge = bars[0]['alt'].replace('Energy','').strip()

    moves.append([name, type_m, type_t, damage, cool, energy, dps, charge])

    # break

print('collected ' + str(len(moves)) + ' moves')

# ====================
# output moves list
# ====================

# for move in moves:
    # print(move)
