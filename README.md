# Universidade Federal do ABC

**Bacharelado em Ciência da Computação – Banco de Dados (MC 3310)**

**PoGym -  ferramenta auxiliar para batalhas no jogo &quot;Pokemon Go&quot;**

Felipe Rigo Yoshimura,Lenin Cristi,Renato de Rezende Querino,Victor Fernandes



19/10/2016



## Objetivo

O objetivo principal do projeto é criar uma ferramenta de consulta para se utilizar no modo batalha do jogo &quot;Pokémon Go&quot;. Essa ferramenta utilizará uma estrutura de dados que permita explorar diferentes conceitos do curso de Banco de Dados.

O objetivo secundário é disponibilizar a ferramenta gerada como resultado do projeto na forma de código aberto em uma plataforma livre, para que ela tenha continuidade mesmo após o término do projeto de uma maneira colaborativa.



## Introdução e Justificativa

O jogo &quot;Pokémon Go&quot; é um aplicativo móvel gratuito (&quot;free-to-play&quot;), baseado em geolocalização e realidade aumentada, desenvolvido em parceria pelas empresas Niantic, Nintendo e a Pokémon Company para as plataformas iOS e Android.

Ele foi lançado em Julho de 2016, primeiramente implementado nos mercados Australiano, Neo Zelandês e Estado Unidense. Mesmo o lançamento sendo planejado de forma gradual, a forte resposta do público obrigou uma pausa do jogo na entrada em novos mercados para que fosse realizada uma reestruturação da plataforma de serviços, a qual foi sobrecarregada em poucos dias.

Do ponto de vista de mercado, o jogo nos primeiros dois dias de lançamento chegou às primeiras colocações de download em ambas as lojas de aplicativo &quot;App Store&quot; (iOS) e &quot;Play Store&quot; (Android) e já estava instalado em 5% dos dispositivos Android dos EUA. O aplicativo atingiu 21 milhões de usuários ativos nos EUA em 12 de Julho e 100 milhões de downloads no mundo no dia 31 do mesmo mês.

Através de compras de aplicativo (&quot;in-app-purchases&quot;) o game gerou mais de U$ 160 milhões no final de Julho de 2016, aproximadamente U$ 10 milhões por dia, e até setembro do mesmo ano ele já tinha gerado U$ 440 milhões de retorno.

O pico de engajamento do jogo foi atingido em Julho, com 1.1 bilhões de interações de 231 milhões de pessoas no Facebook e Instagram.

Sabe-se que ao se desenvolver uma nova ferramenta, o fator determinante de seu sucesso é sua adoção. Portanto, uma ferramenta destinada a uma base instalada já estabelecida e com uma ampla utilização é o ideal. Assim, a ferramenta proposta &quot;PoGym&quot; para auxiliar nas batalhas do jogo &quot;Pokémon GO&quot; possui um grande potencial em sua aplicação.



## Uma breve introdução ao jogo

O jogo basicamente coloca o usuário no papel de um treinador de Pokémons, em um mapa que utiliza o serviço de &quot;Maps&quot; do Google no qual você deve se desloca fisicamente para se movimentar no jogo. Neste mapa existem locais pré-determinados para coleta de itens que são denominados &quot;Pokestops&quot; e locais para batalhar que são denominados &quot;Ginásios&quot;. Como mostrado na figura 1, os cubos e argolas representam Pokéstops e as plataformas suspensas são os ginásios.

![](https://github.com/lnncrs/PoGym/blob/master/docs/images/screen1.jpg?raw=true)
Figura 1 - Captura de tela de um dos membros do grupo no parque do Ibirapuera, na região de SP.

 As criaturas chamadas de Pokémons aparecem de maneira aleatória em diferentes locais, com diferentes distribuições populacionais de acordo a região. Elas podem ser pegas arremessando os itens chamados &quot;pokébolas&quot;, arrastando-os através do &quot;touch screen&quot; do celular. Esse é o único momento do jogo no qual se tem a opção de se utilizar a realidade aumentada na câmera, como mostrado na figura 2.

![](https://github.com/lnncrs/PoGym/blob/master/docs/images/screen2.jpg?raw=true)
Figura 2 - Imagem de divulgação do momento de captura utilizando realidade aumentada. [1]

Os Pokémons podem ser capturados, sair de ovos ou ser evoluídos de outros pré-existentes, além de poderem ser utilizados em batalhas com o intuito de dominar ginásios. A mecânica de batalha é bem simples, pode-se escolher até seis Pokémons para batalhar contra Pokémons que pertencem aos treinadores do ginásio (cada treinador só pode colocar um único Pokémon por ginásio, o limite é de 10 Pokémons por ginásio), como mostrado na figura 3 e 4. Cada vitória dos desafiantes do ginásio implica na perda de pontos do mesmo, que são indicados por níveis, ao chegar no nível zero o ginásio fica vago e qualquer um pode tomá-lo, tornando-se um treinador de ginasio.

![](https://github.com/lnncrs/PoGym/blob/master/docs/images/Pokemon-Go-Gym-Battle-(5).jpg?raw=true)
Figura 3 - Imagem da tela de escolha dos 6 Pokémons para batalhar pelo estádio[2].

![](https://github.com/lnncrs/PoGym/blob/master/docs/images/pokemon-go-gym-fight.jpg?raw=true)
Figura 4 - Imagem de um ginásio ao lado de duas imagens de batalha, entre dois tipos distintos de Pokémon[3].

## Mecânica de batalha

Apesar de historicamente os jogos da série Pokémon terem seu nicho principal no público infantil ou infanto-juvenil, o que normalmente implica em jogos mais simplificados, existe na série Pokémon uma complexidade adicional, geralmente utilizada por jogadores mais avançados, que explora as vantagens e desvantagens a respeito de determinados tipos de Pokémon como mostrado na figura 5.

![](https://github.com/lnncrs/PoGym/blob/master/docs/images/type-chart-gamepress.png?raw=true)
Figura 5 - Tabela de multiplicadores de tipo, deve ser lida no sentido do atacante (lados) para defensores (alto e baixo) [4].

Existem 151 tipos de Pokémon diferentes na primeira geração do desenho animado, destes somente 145 são utilizáveis no &quot;Pokémon Go&quot;. Cada um deles pertence a um ou mais tipos, como &quot;Fogo&quot; ou &quot;Água&quot; e cada tipo tem vantagens ou desvantagens em relação a outros tipos específicos, que são combinadas quando o Pokémon tem mais de um tipo.

No caso do Pokémon número 62, por exemplo, de nome &quot;Poliwrath&quot; e que tem dois tipos &quot;Água&quot; e &quot;Lutador&quot; pode-se gerar a tabela de multiplicadores mostrada na figura 6.

![](https://github.com/lnncrs/PoGym/blob/master/docs/images/Poliwrath.jpg?raw=true)
Figura 6 - Imagem do Pokémon 62, &quot;Poliwrath&quot; e sua tabela de multiplicadores [5].

A jogabilidade durante a batalha é bem limitada, onde é necessário tocar repetidamente na tela para usar o ataque simples, segurar a tela para utilizar um ataque especial ou deslizar o dedo sobre a tela para realizar um movimento de esquiva. Os dois ataques de cada Pokémon também têm cada um seu tipo e não necessariamente são os mesmos do Pokémon em si. Sendo assim, o que determina a vitória são basicamente quatro fatores:

- Poder de combate ou CP;
- Multiplicadores internos de ataque, defesa e resistência;
- Vantagem de tipo entre os Pokémons na batalha;
- Vantagem de tipo dos ataques realizados pelo Pokémon atacante.

Sendo assim, o ideal é ordenar os Pokémons de modo que durante o ataque ao ginásio a ordem deles garanta vantagem de tipo na maioria das batalhas, onde mesmo com uma desvantagem de poder de combate total (CP), ainda é possível ganhar com uma vantagem de tipo. É importante ressaltar que se os dois tipos do Pokémon têm desvantagens ou resistência a um tipo, na sua tabela elas se combinam, gerando multiplicadores maiores que 1.25 ou menores que 0.8, como no caso de &quot;Dragão e Voador&quot; onde os dois tipos têm desvantagem para o tipo &quot;Gelo&quot; e por isso geram uma desvantagem para o tipo &quot;Gelo&quot; que faz com que cada golpe desse tipo recebido seja multiplicado por 1.56.

## Metodologia

Será criado uma estrutura de banco de dados com o intuito de quedados 6 Pokémon de sua coleção e até 10 Pokémon num ginásio, mostrar qual a ordem ótima, baseada em vantagens de tipo para atacar o determinado estádio. Os dados que alimentam o banco de dados são:

- Listagem de todos os Pokémons, seus respectivos tipos;
- Ataques possíveis para cada Pokémon e suas características como tempo de demora para realizá-lo, dano e tipo;
- Multiplicadores de tipo para tipo único (o cálculo da tabela final de tipos combinada é parte do projeto);

 Esses dados serão importados do site [6] na forma de dados colaborativos com scripts em Python. A ferramenta utilizará uma interface HTML5 para facilitar o uso e acesso do usuário aos dados, um protótipo é mostrado na figura 7.

![](https://github.com/lnncrs/PoGym/blob/master/docs/images/pogym3.jpg?raw=true)
Figura 7 - Imagem conceitual da ferramenta com os Pokémon selecionados.

![](https://github.com/lnncrs/PoGym/blob/master/docs/images/pogym4.jpg?raw=true)
Figura 8 - Imagem final da ferramenta atual em uso.

## Análise de Requisitos

De acordo com a mecânica do jogo, os requisitos que puderam ser extraídos para o bom funcionamento da ferramenta são mostrados a seguir:

- Cada Pokémon deve ter um ou dois tipos.
- Cada ataque só pode ser de um tipo.
- Cada Pokémon tem dois ataques, sendo que eles podem ser de tipos diferentes do tipo do Pokémon que os possui.
- Deve ser calculado as vantagens e desvantagens quando o Pokémons está atacando utilizando o seu tipo e o tipo do ataque utilizado de forma combinada. O Pokémon defensor apenas utiliza seu próprio tipo para os cálculos.
- O máximo de Pokémons que podem atacar um ginásio e defender são respectivamente seis e dez.
- Será ignorado movimento esquiva nos cálculos.
- É necessário se conhecer o tipo, altura, peso, Poder de combate(CP), ataque, defesa e resistência dos pokémons para realizar os cálculos de combate.
- É necessário se conhecer o tipo, dano, carga, tempo de recarga, duração, atraso, janela, chance de crítico do ataque de um pokémon para realizar os cálculos de combate.

## Diagrama Entidade Relacionamento

O Diagrama Entidade Relacionamento que preenche os requisitos do problema é mostrado na figura 8.

### Figura 8 – Diagrama Entidade Relacionamento.

O diagrama é dividido em três tipo-entidade: &quot;Pokémon&quot;, &quot;Tipo&quot; e &quot;Ataques&quot;, às quais se relacionam utilizando três tipo-relacionamento: &quot;Conhece&quot;, &quot;É de&quot; e &quot;Possui&quot;. Essa estrutura foi adotada com o intuito de evitar um tipo-relacionamento ternário.

Os tipos-entidade &quot;Pokémon&quot; e &quot;Ataque&quot; possuem um formato padrão apenas utilizando vários atributos, porém o tipo-entidade &quot;Tipo&quot; possui duas características interessantes, a primeira é o fato de elas serem referenciada pelos tipos-entidade &quot;Pokémon&quot; e &quot;Ataque&quot; com diferentes cardinalidades e a segunda é que cada instância do &quot;Tipo&quot; pode ser referenciada até uma vez por qualquer instância sua, inclusive ela própria, contendo a informação de &quot;Multiplicador&quot;. A solução adotada para esse caso foi o uso de um tipo-relacionamento recursivo (&quot;Tem vantagem/ desvantagem&quot;) que contém a informação do &quot;Tipo&quot; de origem, &quot;Tipo&quot; de destino e o atributo de relacionamento &quot;Multiplicador&quot;. Esse tipo-relacionamento recursivo permitirá durante a implementação das próximas etapas o acesso a informação de &quot;Multiplicador&quot; a partir de consultas nas duas outras instâncias relacionadas (&quot;Pokémon&quot; e &quot;Ataque&quot;).

## Conclusão

De modo geral, estruturas de controle de negócio fazem uso intensivo de relacionamentos mestre-detalhe, mas tem certa carência de determinadas estruturas e soluções pouco mais complexas que podem ser exploradas durante o curso. O vigente projeto foi planejado para que aborde uma temática interessante, e ao mesmo tempo seja possível a utilização de diferentes estruturas aprendidas durante a aula de Banco de Dados.

A realização do projeto foi possível devido à complexidade adicional presente do jogo &quot;Pokémon Go&quot; referente às vantagens e desvantagens de tipo dos Pokémons. Essa ferramenta apesar de parecer simples na fase lógica do projeto, tem a capacidade de ser expandida de diferentes formas durante sua fase de implementação e depois do término do projeto de maneira colaborativa, como por exemplo, a utilização de dados dos Pokémons do usuário como entrada ao invés da utilização de dados pré-definidos.

## Referências

- [1] Pokémon GO com realidade aumentada - [https://play.google.com/store/apps/details?id=com.nianticlabs.pokemongo&hl=pt_BR](https://play.google.com/store/apps/details?id=com.nianticlabs.pokemongo&hl=pt_BR). Acesso em: 19/10/2016.
- [2] Tela de escolha dos Pokémons em batalha - [http://says.com/ph/fun/15-tips-to-become-the-best-filipino-pokemon-master-in-no-time](http://says.com/ph/fun/15-tips-to-become-the-best-filipino-pokemon-master-in-no-time). Acesso em: 19/10/2016.
- [3] Imagens em um ginásio - [http://ayobuka.com/2016/07/12/ini-dia-cara-cepat-naik-level-di-pokemon-go/](http://ayobuka.com/2016/07/12/ini-dia-cara-cepat-naik-level-di-pokemon-go/). Acesso em: 19/10/2016].
- [4] Tabela de multiplicadores de tipo - [https://pokemongo.gamepress.gg/pokemon-type-chart-strengths-weakness](https://pokemongo.gamepress.gg/pokemon-type-chart-strengths-weakness). Acesso em: 19/10/2016.
- [5] Tabela de multiplicadores para o pokémon 62 - [https://pokemongo.gamepress.gg/pokemon/62](https://pokemongo.gamepress.gg/pokemon/62). Acesso em: 19/10/2016.
- [6] GamePress - [https://pokemongo.gamepress.gg/](https://pokemongo.gamepress.gg/). Acesso em: 19/10/2016.
