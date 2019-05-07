[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)


 
[Motivação](#motivação) | [Instalação](#installing--getting-started)| 
[Ferramentas](#ferramentas-de-terceiros) | [Links](#links) | [Entregas](/docs/iterations.md) | [Mockups](/docs/mockups.md)

![Logo da plataforma](docs/idv/logotmp200x200.png "Logo do Projeto")

# MedMapper

O medmapper é uma plataforma online que reúne as informações sobre as
unidades de saúde da cidade do Recife em um só lugar, facilitando a busca
por unidades e tratamentos específicos.

## Motivação

Em 2015 o Brasil, principalmente nos estados do Nordeste, sofreu com um surto
de microcefalia associado ao vírus Zika. O surto teve início em Setembro, no
estado de Pernambuco, [sendo este o estado com maior número de afetados
pelo vírus](https://pt.wikipedia.org/wiki/Surto_de_microcefalia_no_Brasil).
Hoje, mais de três anos depois, os portadores de microcefalia sofrem com o
[desamparo do estado](
https://noticias.r7.com/saude/zika-diminui-mas-so-13-das-criancas-tem-assistencia-completa-17082018)
e a [pobreza](https://exame.abril.com.br/brasil/maioria-dos-bebes-com-microcefalia-sao-de-familias-pobres/),
sofrendo com a falta de estrutura para o atendimento adequado e a falta de
informação sobre esse atendimento. Atualmente, não há atendimentos para
todas as condições em todas as unidades de saúde, sendo determinadas unidades
especializadas em determinados problemas. Em muitos dos casos, as mães de
crianças portadoras precisam se deslocar grandes distâncias para receber
atendimento adequado e, não raramente, acabam sendo direcionadas a outras
unidades de saúde, pois as unidades principais procuradas não são
responsáveis pelo atendimento em questão.
A proposta de amenização é a criação de uma plataforma que reúna as informações
sobre postos de atendimento, classificando os postos de atendimento a partir do
tipo de atendimento que fazem, permitindo assim que a criança seja atendida no
posto adequado logo a partir do primeiro momento, evitando encaminhamentos
desnecessários e desinformação.
Inicialmente a plataforma deve conter as informações sobre os postos de atendimento
da cidade do Recife, sendo futuramente ampliada para incluir os postos de
atendimento de todo o estado e, eventualmente, outras áreas da medicina.


## Installing / Getting started

```shell
$ git clone https://github.com/aplneto/projeto_ES
```

Para iniciar a edição do código da plataforma basta clonar o repositório na
sua máquina. É necessário que você possua o Ruby e o Rails instalados.

Em caso de dúvidas siga o passo a passo da instalação do Ruby e do Rails
na página do [gorails](https://gorails.com/).
Recomendamos o uso de [Ubuntu](https://gorails.com/setup/ubuntu/16.04) ou
outros sistemas operacionais Linux.

## Ferramentas de Terceiros
<!--- Nessa sessão os ícones devem ser de tamanho 48px -->

Ferramentas usadas no desenvolvimento da aplicação:

[![Scrum](https://github.com/aplneto/medmapper/blob/master/docs/idv/scrum.png)](
https://www.scrumalliance.org/ "Scrum")
[![Ruby](https://img.icons8.com/color/48/000000/ruby-programming-language.png)](
https://www.ruby-lang.org/pt/ "Ruby")
[![Rails](https://github.com/aplneto/medmapper/blob/master/docs/idv/rails.png)](
https://rubyonrails.org/ "Ruby on Rails")
[![JavaScript](https://img.icons8.com/color/48/000000/javascript.png)](
https://www.javascript.com/ "JavaScript")
[![GitHub](https://img.icons8.com/metro/48/000000/github.png)](
https://github.com/ "GitHub")
[![Icons8](https://img.icons8.com/color/48/000000/icons8-logo.png)](
https://icons8.com.br/icons "icons8")

Outras ferramentas:
- [TermsFeed](https://www.termsfeed.com/)


## Links

- Wiki do Projeto: https://github.com/aplneto/medmapper/wiki
- Repositório: https://github.com/aplneto/medmapper/edit/master/README.md
- Issue tracker: https://github.com/aplneto/medmapper/issues
  - Em caso de problemas sensíveis, como vulnerabilidade e probelmas de
  segurança, por favor entre em contato via apln2@cin.ufpe.br usando a tag
  [MEDMAPPER].
- Repositórios relacionados
  - Repositório da disciplina: https://github.com/if977/if977
- Repositórios dos projetos do quarto período
  - Repositório de SGE/PGP/GPN: https://github.com/prgs1/importasisu
  - Repositório de Banco de Dados: https://github.com/GabrielCavalcanti13/gymCad


## Releases

- Coming soon...

## Gems

- [Capybara](https://github.com/teamcapybara/capybara)
- [RSpec](https://github.com/rspec/rspec-rails)
- [Factory bot](https://github.com/thoughtbot/factory_bot)
- [Omniauth](https://github.com/omniauth/omniauth)
- [Devise](https://github.com/plataformatec/devise)
