# PoGym - Ferramenta auxiliar para batalhas no jogo "Pokemon Go"

**Web based data tool for Pokemon Go battles. UFABC 3Q/2016 - Database Class.**

Universidade Federal do ABC - Bacharelado em Ciência da Computação  
Banco de Dados (MC 3310) 2016/Q3  
Felipe Rigo Yoshimura,Lenin Cristi,Victor Fernandes

![](./docs/images/p2/p2-50.png)  
Ferramenta em execução

# Parte 1 - Objetivos

## Objetivo

O objetivo principal do projeto é criar uma ferramenta de consulta para se utilizar no modo batalha do jogo “Pokémon Go”. Essa ferramenta utilizará uma estrutura de dados que permita explorar diferentes conceitos do curso de Banco de Dados.
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

Figura 8 - Imagem da ferramenta atualmente em uso.

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

![](https://github.com/lnncrs/PoGym/blob/master/docs/images/diag1.jpg?raw=true)

Figura 9 – Diagrama Entidade Relacionamento inicialmente apresentado.

![](https://github.com/lnncrs/PoGym/blob/master/docs/images/diag2.jpg?raw=true)

Figura 10 – Diagrama Entidade Relacionamento atual.

O diagrama é dividido em três tipo-entidade: &quot;Pokémon&quot;, &quot;Tipo&quot; e &quot;Ataques&quot;, às quais se relacionam utilizando três tipo-relacionamento: &quot;Conhece&quot;, &quot;É de&quot; e &quot;Possui&quot;. Essa estrutura foi adotada com o intuito de evitar um tipo-relacionamento ternário.

Os tipos-entidade &quot;Pokémon&quot; e &quot;Ataque&quot; possuem um formato padrão apenas utilizando vários atributos, porém o tipo-entidade &quot;Tipo&quot; possui duas características interessantes, a primeira é o fato de elas serem referenciada pelos tipos-entidade &quot;Pokémon&quot; e &quot;Ataque&quot; com diferentes cardinalidades e a segunda é que cada instância do &quot;Tipo&quot; pode ser referenciada até uma vez por qualquer instância sua, inclusive ela própria, contendo a informação de &quot;Multiplicador&quot;. A solução adotada para esse caso foi o uso de um tipo-relacionamento recursivo (&quot;Tem vantagem/ desvantagem&quot;) que contém a informação do &quot;Tipo&quot; de origem, &quot;Tipo&quot; de destino e o atributo de relacionamento &quot;Multiplicador&quot;. Esse tipo-relacionamento recursivo permitirá durante a implementação das próximas etapas o acesso a informação de &quot;Multiplicador&quot; a partir de consultas nas duas outras instâncias relacionadas (&quot;Pokémon&quot; e &quot;Ataque&quot;).

## Conclusão

De modo geral, estruturas de controle de negócio fazem uso intensivo de relacionamentos mestre-detalhe, mas tem certa carência de determinadas estruturas e soluções pouco mais complexas que podem ser exploradas durante o curso. O vigente projeto foi planejado para que aborde uma temática interessante, e ao mesmo tempo seja possível a utilização de diferentes estruturas aprendidas durante a aula de Banco de Dados.

A realização do projeto foi possível devido à complexidade adicional presente do jogo &quot;Pokémon Go&quot; referente às vantagens e desvantagens de tipo dos Pokémons. Essa ferramenta apesar de parecer simples na fase lógica do projeto, tem a capacidade de ser expandida de diferentes formas durante sua fase de implementação e depois do término do projeto de maneira colaborativa, como por exemplo, a utilização de dados dos Pokémons do usuário como entrada ao invés da utilização de dados pré-definidos.

### Referências

- [1] Pokémon GO com realidade aumentada - [https://play.google.com/store/apps/details?id=com.nianticlabs.pokemongo&hl=pt_BR](https://play.google.com/store/apps/details?id=com.nianticlabs.pokemongo&hl=pt_BR). Acesso em: 19/10/2016.
- [2] Tela de escolha dos Pokémons em batalha - [http://says.com/ph/fun/15-tips-to-become-the-best-filipino-pokemon-master-in-no-time](http://says.com/ph/fun/15-tips-to-become-the-best-filipino-pokemon-master-in-no-time). Acesso em: 19/10/2016.
- [3] Imagens em um ginásio - [http://ayobuka.com/2016/07/12/ini-dia-cara-cepat-naik-level-di-pokemon-go/](http://ayobuka.com/2016/07/12/ini-dia-cara-cepat-naik-level-di-pokemon-go/). Acesso em: 19/10/2016].
- [4] Tabela de multiplicadores de tipo - [https://pokemongo.gamepress.gg/pokemon-type-chart-strengths-weakness](https://pokemongo.gamepress.gg/pokemon-type-chart-strengths-weakness). Acesso em: 19/10/2016.
- [5] Tabela de multiplicadores para o pokémon 62 - [https://pokemongo.gamepress.gg/pokemon/62](https://pokemongo.gamepress.gg/pokemon/62). Acesso em: 19/10/2016.
- [6] GamePress - [https://pokemongo.gamepress.gg/](https://pokemongo.gamepress.gg/). Acesso em: 19/10/2016.

# Parte 2 - Execução

## Objetivo
O vigente projeto tem como objetivo a criação de um banco de dados que contenha informações sobre o jogo “Pokémon GO” onde será possível fazer variadas consultas desde estatísticas dos personagens e seus movimentos até cálculos de multiplicadores de vantagem baseada nos tipos dos personagens. Esse projeto também conta com uma aplicação web simples para facilitar seu consumo e as principais consultas do projeto serão:

- Permitir consultar a listagem de pokémons e seus possíveis ataques para inserção nas listas da ferramenta;
- Dado um pokemon e seus dois respectivos ataques, retornar dados sobre o mesmo;
- Permitir gerar as tabelas de multiplicadores de vantagem/desvantagem por tipo dados quaisquer dois tipos de um defensor e o tipo do atacante;

## Carga de dados

As consultas do banco notadamente a consulta que agrega multiplicadores, talvez a mais importante delas, necessitam dos dados do jogo já inseridos para terem resultado satisfatório, seriam necessários os dados da tabela de pokemons, movimentos (ou ataques), tipos, e de uma tabela que relacione o tipo atacando, o tipo defendendo e o multiplicador entre eles.
Como fonte dos dados utilizamos dois sites, o GamePress e o TheSilphRoad, o primeiro conta com uma comunidade ativa que gera dados de varias fontes, desde o código do jogo até distribuições que os usuários coletam e geram modelos estatísticos, o segundo é mantido por um usuário do Reddit de mesmo nome que faz também esse mesmo trabalho, os dois foram escolhidos pelo critério com que tratam estes dados. O que foi extraído de cada fonte:

- Gamepress http://pokemongo.gamepress.gg/
    - Foi usado como fonte primária. Um script python de extração de dados foi construído para recuperar seus dados, ele basicamente lê o código HTML das páginas, procura nas tags HTML os dados e gera uma saída em texto puro que na verdade é uma série de inserts em linguagem SQL92 para serem executadas no banco
    - Script python de extração de dados  
    ![](./docs/images/p2/p2-01.png)
        - Saída do script em execução  
        ![](./docs/images/p2/p2-02.png)
        - Fim da saída com comandos SQL de inserção  
        (trecho 1)  
        ![](./docs/images/p2/p2-03.png)  
        (trecho 2)  
        ![](./docs/images/p2/p2-04.png)

- The SilphRoad https://thesilphroad.com/research
    - Checagem da precisão dos dados como movimentos, dano crítico, janela, etc.
    - Fonte da planilha usada para gerar a tabela de multiplicadores de tipos, e a relação entre eles (tabelas “types” e “types_types”) https://docs.google.com/spreadsheets/d/1xZ1daunztOgvOZxO7ABfJPF41-2mqMDzY1Qs_0OWwq8/edit#gid=1151218844
        - A carga destes dados foi feita utilizando a importação de dados do SQL Server, no assistente apontamos a planilha baixada e com somente a aba de multiplicadores e pedimos para descarregar numa nova tabela criada automaticamente  
        ![](./docs/images/p2/p2-05.png)

        - Em seguida estes dados foram tratados e migrados para a tabela “types_types” com os scripts “createmultipliersdata.sql” e “importmultipliersdata.sql” presentes na pasta “database” do repositório;

Este processo de carga teve de ser feito já com a modelagem do banco adiantada, no que foram úteis os diagramas da primeira versão.

## Modelo Conceitual Ajustado / DER ajustado

O diagrama DER do banco a primeira vista parece ter sofrido alterações profundas, mas uma análise mais detalhada mostra que sua estrutura principal foi mantida, principais alterações:

- Os nomes de atributos foram utilizados no seu original em inglês para facilitar o trabalho de mapeamento dos atributos da tabela com o script que lê os dados diretamente da página da gamepress, esta alteração facilitou também o trabalho de checagem dos dados no pós importação;
- Os nomes de tabelas servem como prefixos das relacionadas, para facilitar a compreensão. Por exemplo “Pokemons (pokemons)” e a relacionada “Tipos dos Pokemons (pokemons_types)”;
- Foi adotada uma nova formatação de nome de atributo:
    - Todo em minúsculas;
    - Com nomes sem abreviatura divididos por “_” para fins de tornar mais claro seu uso;
    - Chaves estrangeiras mantém o nome de atributo original da chave primária de origem para facilitar a localização;
- Foi feita a especialização da tabela de ataques em uma superclasse “ataque” (attack) e duas subclasses uma para “ataques rápidos” (attacks_quick) e outra para “ataques especiais” (attacks_charge);
- Atributos adicionais incluídos no site posteriormente foram adicionados com base em sua utilidade, por exemplo:
    - Atributos “charge” e “energypu” nas sub-classes de “attack”;
    - Atributos que guardam informação de ícone, imagem e url em entidades como “pokemons” e “types”;

Seguem os dois modelos antes e depois das alterações realizadas:

![](./docs/images/p2/p2-06.jpg)  
Figura 1: Diagrama original.

![](./docs/images/p2/p2-07.jpg)  
Figura 2: Diagrama alterado.

## Modelo Relacional

A partir do DER pôde-se construir o modelo relacional do banco, que é o que segue:

**attacks** (attack_id,attacks_types.attack_type_id,name,types.type_id,damage,damage_stab,damageps,damageps_stab,move_cooldown);

**attacks_charge** (attacks.attack_id,charge,critical,dodge)

**attacks_quick** (attacks.attack_id,energyps,energypu,defensive_damageps)

**attacks_types** (attack_type_id,type)

**pokemons** (pokemon_id,pokemons.evolvefrom_pokemon_id,name,icon,image,url,height_avg,weight_avg,combatpower_max,attack_base,defense_base,stamina_base)

**pokemons_attacks** (pokemon_attack_id,pokemons.pokemon_id,attacks.attack_id,true_damageps)

**pokemons_types** (pokemon_type_id,pokemons.pokemon_id,types.type_id)

**types** (type_id,type,icon)

**types_types** (type_type_id,types.attacker_type_id,types.defender_type_id,multiplier)

## Normalização

A revisão do modelo DER, e seu processo de amadurecimento a nosso ver permitiram eliminar boa parte do trabalho posterior de normalização.
Ao analisar as entidades com relação a dependência funcional por exemplo, entendemos que os atributos nas tabelas não só eram funcionalmente dependentes da sua chave como no nosso entendimento não estavam presentes atributos funcionalmente dependentes de outros atributos não presentes nas chaves. Mesmo redundâncias e campos multivalorados presentes no primeiro DER foram eliminados no segundo.
Podemos fazer duas observações como exemplos de destaque na normalização:

- A tabela “Ataque (attack)” possuía um atributo chamado “Tipo de ataque” que poderia assumir dois valores: “Ataque rápido” ou “Ataque carregado” no primeiro diagrama. No segundo, essa redundância foi resolvida com uma nova entidade separada “Tipo de ataque (attacks_types)” e o atributo se tornou a chave estrangeira “attack_type_id”;
- A tabela “Ataque (attack)” possuía atributos utilizados somente em ataques rápidos, atributos utilizados somente em ataques carregados e atributos utilizados nos dois casos, um caso típico na nossa avaliação no qual poderíamos empregar a especialização, geramos assim duas subclasses da entidade “Ataque (attack)”: “Ataque rápido (attack_quick)” e “Ataque carregado (attack_charge)”;

## Modelo Físico

Para a implementação do modelo físico utilizou-se o SGBD SQL Server, mas também foram gerados na pasta do projeto scripts adaptados para a criação das relações e carga de dados do banco em MySQL, com exceção para as duas procedures (sp_battle e sp_stab), a função (fn_stab) e os dois triggers (attacks_charge_disjoint e attacks_quick_disjoint) utilizadas no projeto.

![](./docs/images/p2/p2-08.png)  
Figura 3: Diagrama do banco no SQL Server

Considerações importantes nos scripts SQL Server e MySQL:

- O MySQL chama o banco de “schema”, no SQL Server essa nomenclatura é um objeto utilizado para organizar objetos dentro do banco. Isso fez necessário remover os nomes de “schema” do script para utilização no MySQL;
- O MySQL pela questão do “schema” não utiliza chaves “[,]” para delimitar objetos;
- Os campos calculados têm criação pouco diferente:
    - SQL Server  
    ![](./docs/images/p2/p2-09.png)
    - MySQL (Essa construção para o MySQL só funciona a partir da versão de banco 5.7)  
    ![](./docs/images/p2/p2-10.png)
- Os tipos de campos não mostraram problemas e foram reconhecidos nas duas plataformas;
- As diferenças na criação de chaves e relações também foram mínimas:
    - Relação “Ataques” no MySQL  
    ![](./docs/images/p2/p2-11.png)
        - Sua Chave estrangeira com a relação “Ataques tipos”  
        ![](./docs/images/p2/p2-12.png)
    - Relação “Ataques” no SQL Server  
    ![](./docs/images/p2/p2-13.png)
        - Sua Chave estrangeira com a relação “Ataques tipos”
        ![](./docs/images/p2/p2-14.png)
- Foi implementado no SQL Server o “disjoint” entre as tabelas “Ataques rápidos (attacks_quick)” e “Ataques carregados (attacks_charge)” com triggers. Existia a possibilidade de utilizar o campo chave de “Ataques (attacks)” junto ao campo chave de “Ataques tipos (attacks_types)” como chave composta na relação e adicionar uma restrição no segundo, mas optamos por economizar um atributo nas subclasses e implementar via trigger que checa a existência da chave de “Ataques (attacks)” na outra relação do disjoint:
    - Modelo do disjoint  
    ![](./docs/images/p2/p2-15.png)
    - Trigger na tabela “Ataque rápido (attacks_quick)”  
    ![](./docs/images/p2/p2-16.png)
    - O trigger na tabela “Ataque carregado (attacks_charge)” é idêntico, mas invertem-se as tabelas na lógica do trigger;
- A consulta de batalha agrega os multiplicadores, mas como não tínhamos esta função para uso na linguagem SQL implementada nos bancos, tivemos de utilizar uma construção (EXP+SUM+LOG) para agregar os multiplicadores “multiplicando-os”:  
![](./docs/images/p2/p2-17.png)
    - OBS: Esta construção funciona em ambas as plataformas;

## Consultas

As consultas mais importantes no banco e para consumo no aplicativo web s

- Select simples para listagem de tipos por sua ordem natural no jogo  
![](./docs/images/p2/p2-18.png)
    - Resultado    
    ![](./docs/images/p2/p2-19.png)
    - Álgebra Relacional desta consulta  
    t←types
    R(id,tipo)←𝚷type_id,type(t)
    𝝉 id asc (R)
- Selects que listam o(s) tipo(s) e ficha de um dado pokemon  
![](./docs/images/p2/p2-20.png)
    - Resultado    
    ![](./docs/images/p2/p2-21.png)
    - Álgebra Relacional:
    @id←1
    pa ←pokemons_types
    t←types
    tipo←𝚷type(t)
    σpokemon_id=@id(pa ⋈ pa.type_id = t.type_id t)
    p←pokemons
    R(pokedex, nome, peso, altura, atk, def, sta)←𝚷pokemon_id, name, weight_avg, height_avg, attack_base, defense_base, stamina_base(p)
    σp.pokemon_id=@id(R)
- Select que mostra a relação da tabela tipos  para ela própria com o atributo de relação denominado “multiplicador”  
![](./docs/images/p2/p2-22.png)
    - Resultado    
    ![](./docs/images/p2/p2-23.png)
- Selects que listam o(s) tipo(s) e ataques possíveis de um dado pokemon  
![](./docs/images/p2/p2-24.jpg)
    - Resultado    
    ![](./docs/images/p2/p2-25.png)
- Select que combina os dois tipos de um pokémon SE DEFENDENDO e gera a tabela de multiplicadores (tabela do site gamepress)  
![](./docs/images/p2/p2-26.png)
    - Resultado    
    ![](./docs/images/p2/p2-27.png)
- Select que combina os dois tipos de um pokémon ATACANDO e gera a tabela de multiplicadores  
![](./docs/images/p2/p2-28.png)
    - Resultado    
    ![](./docs/images/p2/p2-29.png)
- Selects que listam a tabela de ataques e UMA de suas disjuntas com registros ordenados do maior ao menor dano  
    - Select 1
    ![](./docs/images/p2/p2-30.png)
    - Resultados  
    ![](./docs/images/p2/p2-31.png)
    - Select 2
    ![](./docs/images/p2/p2-32.png)
    - Resultados  
    ![](./docs/images/p2/p2-33.png)
- Select que lista a tabela de ataques JUNTO a suas disjuntas com registros ordenados por nome  
![](./docs/images/p2/p2-34.png)
    - Resultados  
    ![](./docs/images/p2/p2-35.png)
- Inserção de registro de ataque nas tabelas “attacks_quick” e “attacks_charge” para demonstrar o “disjoint” entre elas  
![](./docs/images/p2/p2-36.png)
    - Resultado trigger tabela “attacks_quick”  
    ![](./docs/images/p2/p2-37.png)
    - Resultado trigger tabela “attacks_charge”  
    ![](./docs/images/p2/p2-38.png)
- Execução da procedure de batalha para gerar a tabela de multiplicadores  
![](./docs/images/p2/p2-39.png)
    - Resultados  
    ![](./docs/images/p2/p2-40.png)
- Execução da procedure de verificação de bônus “STAB  
![](./docs/images/p2/p2-41.png)
    - Resultados  
    ![](./docs/images/p2/p2-42.png)
- Execução de select que lista todos os pokémons presentes no jogo, junto a sua url, alguns dados e a quantidade de ataques “rápidos” e “especiais” disponíveis para ele  
![](./docs/images/p2/p2-43.png)
    - Resultados 1-25  
    ![](./docs/images/p2/p2-44.png)
    - Resultados 26-50  
    ![](./docs/images/p2/p2-45.png)
    - Resultados 51-75  
    ![](./docs/images/p2/p2-46.png)    
    - Resultados 76-100  
    ![](./docs/images/p2/p2-47.png)
    - Resultados 101-125  
    ![](./docs/images/p2/p2-48.png)    
    - Resultados 126-151  
    ![](./docs/images/p2/p2-49.png)

## Conclusão

A ferramenta de consumo e apresentação dos dados foi feita utilizando a tecnologia ASP.NET MVC 5.2.3 da plataforma .NET 4.6.1 da microsoft, a linguagem utilizada foi C# , o acesso a dados utiliza tecnologia Entity Framework 6.1.3, um serializador/deserializador JSON Newtonsoft.JSON 9.0.1 e finalmente a apresentação utiliza saída HTML5/CSS3 pura com os frameworks Bootstrap 3.3.7 e jQuery 3.1.1. O Bootstrap a partir da versão 3 é “mobile-first”.

![](./docs/images/p2/p2-50.png)  
Figura 4: Ferramenta em execução
