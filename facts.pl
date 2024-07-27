
/*  fatos  */

house(targaryen).
house(velaryon).
house(arryn).
house(stark).
house(tully).
house(greyjoy).
house(baratheon).
house(lannister).
house(hightower).
house(redwyne).
house(strong).
house(royce).

    /* gender */
/* female (7 female) */
female(rhaenyra).
female(rhaenys).
female(rhaena).
female(baela).
female(alicent).
female(helaena).
female(mysaria).
female(laena).
female(jaehaera).
female(alysanne).
female(visenya).
female(alyssa).
female(jocelyn).
female(aemma).
female(vissenya).
female(rhea).

/* males  */
male(aemon).
male(aegonI).
male(aegonII).
male(aegonIII).
male(aemond).
male(lucerys).
male(laenor).
male(jacaeres).
male(jason).
male(tyland).
male(larys).
male(vaemond).
male(harwin).
male(lyonel).
male(criston).
male(harrold).
male(corlys).
male(otto).
male(daemon).
male(viserysI).
male(viserysII).
male(joffrey).
male(jaehaerysI).
male(baehaerysII).
male(baelonI).
male(baelonII).
male(daeron).
male(arryk).
male(erryk).
male(lorent).
male(ryam).
male(steffon).
male(mellos).
male(orwyle).
male(jasper).
male(lyman).

/* family */
/*      nome      family   */
family(visenya, targaryen).
family(rhaenyra, targaryen).
family(rhaenys, targaryen).
family(rhaena, targaryen).
family(baela, targaryen).
family(helaena, targaryen).
family(viserysI, targaryen).
family(aegonI, targaryen).
family(aegonII, targaryen).
family(aegonIII, targaryen).
family(aemond, targaryen).
family(viserysII, targaryen).
family(jaehaerysI, targaryen).
family(jaehaerysII, targaryen).
family(jaehaera, targaryen).
family(alysanne, targaryen).
family(aemon, targaryen).
family(baelonI, targaryen).
family(alysse, targaryen).
family(baelonII, targaryen).
family(daeron, targaryen).

family(alicent, hightower).
family(otto, hightower).

family(laena, velaryon).
family(laenor, velaryon).
family(lucerys, velaryon).
family(jacaerys, velaryon).
family(vaemond, velaryon).
family(corlys, velaryon).
family(joffrey, velaryon).

family(jason, lannister).
family(tyland, lannister).

family(jocelyn, baratheon).

family(aemma, arryn).

family(lyonel, strong).
family(harwin, strong).
family(larys, strong).

family(rhea, royce).




/* ninckname */
/*       Name       ninckname       */
ninckname(rhaenys, theQueenWhoNeverWas).
ninckname(jason, breakbones).
ninckname(lucerys, luke).
ninckname(jacaeres, jace).
ninckname(corlys, theSeaSnake).
ninckname(aegonI, theConqueror).
ninckname(aegonIII, theYounger).
ninckname(jasper, ironrod).

/* parents */
/*      PAI      FILHO  */
parents(viserysI, rhaenyra).
parents(viserysI, aegonII).
parents(viserysI, aemond).
parents(viserysI, helaena).
parents(viserysI, daeron).
parents(viserysI, baelonII).

parents(aemma, rhaenyra).
parents(aemma, baelonII).

parents(alicent, aegonII).
parents(alicent, aemond).
parents(alicent, helaena).
parents(alicent, daeron).

parents(otto, alicent).

parents(rhaenys, laena).
parents(rhaenys, laenor).

parents(corlys, laena).
parents(corlys, laenor).

parents(rhaenyra, lucerys).
parents(rhaenyra, jacaeres).
parents(rhaenyra, joffrey).
parents(rhaenyra, aegonIII).
parents(rhaenyra, viserysII).
parents(rhaenyra, visenya).

parents(laenor, lucerys).
parents(laenor, jacaeres).
parents(laenor, joffrey).

parents(daemon, baela).
parents(daemon, rhaena).
parents(daemon, aegonIII).
parents(daemon, viserysII).
parents(daemon, visenya).

parents(laena, baela).
parents(laena, rhaena).

parents(helaena, jaehaerysII).
parents(helaena, jaehaera).

parents(aegonII, jaehaerysII).
parents(aegonII, jaehaera).

parents(jaehaerysI, aemon).
parents(jaehaerysI, baelon).
parents(jaehaerysI, alyssa).

parents(alysanne, aemon).
parents(alysanne, baelon).
parents(alysanne, alyssa).

parents(aemon, rhaenys).
parents(jocelyn, rhaenys).

parents(baelon, daemon).
parents(baelon, viserysI).

parents(alyssa, daemon).
parents(alyssa, viserysI).

/*  MARRIED  */
/*      HOMEM       MULHER  */
marry(jaehaerysI, alysanne).

marry(baelon, alyssa).

marry(aemon, jocelyn).

marry(corlys, rhaenys).

marry(viserysI, aemma).
marry(viserysI, alicent).

marry(daemon, rhea).
marry(daemon, laena).
marry(daemon, rhaenyra).

marry(laenor, rhaenyra).

marry(aegonII, helaena).

/* FIRST-BORN */
/*          KING      FIRST-BORN        */
first_born(jaehaerysI, aemon).
first_born(viserysI, rhaenyra).
first_born(aegonII, jaehaera).
first_born(daeronI, baelor).
first_born(aegonIII, daeron).
first_born(baelorI, viserys).
first_born(viserysII, aegon).
first_born(aegonIV, daeronII).


/* TITLE */
/*      NAME         TITLE     SUB*/
title(arryk, kingsguard, swordsmen).
title(erryk, kingsguard, swordsmen).
title(criston, kingsguard, commander).
title(harrold, kingsguard, commander).
title(lorent, kingsguard, knight).
title(ryam, kingsguard, commander).
title(steffon, kingsguard, knight).

title(mellos, smallCouncil, grandMaester).
title(orwyle, smallCouncil, grandMaester).
title(jasper, smallCouncil, masterOfLaws).
title(lyman, smallCouncil, masterOfCoin).
title(tyland, smallCouncil, masterOfShips).
title(corlys, smallCouncil, masterOfShips).

title(otto, kingsHand, kingsHandViserysI).
title(otto, kingsHand, kingsHandAegonII).
title(criston, kingsHand, kingsHandAegonII).


/* RIDERS */
/*     RIDER      DRAGON*/
rider(lucerys, arrax).
rider(viserysI, balerion).
rider(aegonI, balerion).
rider(daemon, caraxes).
rider(helaena, dreamfyre).
rider(rhaenys, meleys).
rider(baela, moondancer).
rider(laenor, seasmoke).
rider(alysanne, silverwing).
rider(aegonII, sunfyre).
rider(rhaenyra, syrax).
rider(joffrey, tyraxes).
rider(jacaeres, vermax).
rider(jaehaerysI, vermithor).
rider(visenya, vhagar).
rider(laena, vhagar).
rider(aemond, vhagar).


/*  REGIOES */
continent(westeros).
continent(essos).

region(north, cold, [stark, bolton, umber, karstark, manderly, mormont, reed]).
region(riverlands, temperate, [tully, blackwood, bracken, frey, mallister]).
region(the_reach, temperate, [tyrell, tarly, florent, hightower, redwyne]).
region(the_stormlands, temperate, [baratheon, caron, dondarrion, swann]).
region(the_westerlands, temperate, [lannister, crakehall, marbrand, reynes]).
region(the_crownlands, temperate, [baratheon_of_kings_landing, velaryon, staunton]).
region(dorne, hot, [martell, dayne, yronwood, uller]).
region(the_iron_islands, cold, [greyjoy, harlaw, botley, blacktyde]).
region(the_vale, cold, [arryn, royce, corbray, hunter]).
region(the_neck, swampy, [reed]).
region(the_kingdom_of_the_mountain_and_the_vale, cold, [arryn, royce, corbray, hunter]).
region(the_kingswood, temperate, []).
region(the_whispering_wood, temperate, []).
region(the_western_wastelands, cold, []).
region(the_shivering_sea, cold, []).
region(the_shadowlands, mysterious, []).
region(the_winterlands, cold, []).
region(the_frostfangs, freezing, []).
region(the_dreadfort, cold, [bolton]).
region(the_stone_shore, cold, []).
region(the_narrow_sea, temperate, []).
region(the_red_wastes, arid, []).
region(the_ghost_grass, mysterious, []).
region(the_haunted_forest, freezing, []).
region(the_white_waste, freezing, []).
region(the_summer_isles, tropical, []).
region(the_salt_shore, hot, []).
region(the_broken_arm, hot, []).
region(the_smiling_sea, temperate, []).
region(the_blazewater_bay, temperate, []).
region(the_bitterbridge, temperate, []).
region(the_blackwood, temperate, [blackwood]).
region(the_boneway, hot, []).
region(the_greenblood, hot, []).
region(the_sea_of_dorne, hot, []).
region(the_basilisk_isles, tropical, []).
region(the_straits_of_qarth, arid, []).
region(the_summer_sea, tropical, []).
region(the_gulf_of_grief, arid, []).
region(the_doom_of_valyria, mysterious, []).
region(the_tall_trees, tropical, []).
region(the_sothoryos, tropical, []).
region(the_isles_of_flame, mysterious, []).
region(the_cape_of_wrath, temperate, []).
region(the_red_mountains, hot, []).
region(the_grey_cliffs, cold, []).
region(the_dark_dell, temperate, []).
region(the_lichen_hills, temperate, []).
region(the_gods_eye, temperate, []).
region(the_kingsroad, varied, []).
region(the_bay_of_ice, freezing, []).
region(the_sand_sisters, hot, []).
region(the_fingers, cold, [baelish]).
region(the_stone_door, temperate, []).
region(the_claw_isle, temperate, []).
region(the_battle_island, temperate, []).
region(the_galley_grave, temperate, []).
region(the_jade_sea, tropical, []).
region(the_shadow_sea, mysterious, []).
region(the_land_of_always_winter, freezing, []).


/* DRAGONS FOR BATTLE*/
/* dragon(dragao, [STR, SPEED, RESISTENCE]) */
dragon(arrax, [70, 80, 60]).
dragon(balerion, [100, 70, 90]).
dragon(caraxes, [80, 90, 70]).
dragon(dreamfyre, [75, 85, 65]).
dragon(meleys, [85, 75, 70]).
dragon(moondancer, [65, 95, 60]).
dragon(seasmoke, [70, 85, 65]).
dragon(silverwing, [80, 70, 75]).
dragon(sunfyre, [85, 80, 70]).
dragon(syrax, [75, 85, 70]).
dragon(tyraxes, [70, 80, 65]).
dragon(vermax, [75, 80, 70]).
dragon(vermithor, [90, 70, 85]).
dragon(vhagar, [95, 65, 90]).


/* RIDERS STATUS */
% rider_status(Name, [Intelligence, Strategy])
rider_status(lucerys, [70, 75]).
rider_status(viserysI, [85, 80]).
rider_status(aegonI, [90, 85]).
rider_status(daemon, [100, 100]).
rider_status(helaena, [75, 70]).
rider_status(rhaenys, [85, 85]).
rider_status(baela, [70, 75]).
rider_status(laenor, [75, 80]).
rider_status(alysanne, [80, 85]).
rider_status(aegonII, [70, 80]).
rider_status(rhaenyra, [85, 90]).
rider_status(joffrey, [65, 70]).
rider_status(jacaeres, [75, 75]).
rider_status(jaehaerysI, [90, 90]).
rider_status(visenya, [85, 85]).
rider_status(laena, [80, 80]).
rider_status(aemond, [75, 85]).

/* REGRAS */

/*  REGRAS DE  REGIÃO   */
region_of_house(House, Region) :-
    region(Region, _, Houses),
    member(House, Houses).

same_region(House1, House2) :-
    region(_, _, Houses1),
    region(_, _, Houses2),
    member(House1, Houses1),
    member(House2, Houses2),
    Houses1 == Houses2.

all_houses(Houses) :-
    findall(House, (region(_, HousesList),
    member(House, HousesList)), Houses).


power(Dragon, Power) :-
    dragon(Dragon, [Strength, Speed, Endurance]),
    Total is Strength + Speed + Endurance,
    Power is Total / 3.

tank(Dragon, Resistence) :-
    dragon(Dragon, [Strength, _, Endurance]),
    Total is Strength + Endurance,
    Resistence is Total / 2.

specialAttack(Dragon, Burst) :-
    dragon(Dragon, [Strength, Speed, _]),
    Burst is Strength * Speed.


% combined_attributes(Rider, Dragon, CombinedAttributes)
combined_attributes(Rider, Dragon, CombinedAttributes) :-
    rider_status(Rider, [Intelligence, Strategy]),
    dragon(Dragon, [Strength, Speed, Endurance]),
    CombinedIntelligence is Intelligence + Strength,
    CombinedStrategy is Strategy + Speed,
    CombinedEndurance is Endurance,
    CombinedAttributes = [CombinedIntelligence, CombinedStrategy, CombinedEndurance].

% final_power(Rider, Dragon, FinalPower)
final_power(Rider, Dragon, FinalPower) :-
    rider(Rider, Dragon),  % Verifica se o cavaleiro e o dragão estão associados
    combined_attributes(Rider, Dragon, CombinedAttributes),
    sum_list(CombinedAttributes, Total),
    FinalPower is Total * 2,
    !. 

final_power(Rider, Dragon, Total) :-
    \+ rider(Rider, Dragon),  % Verifica se o cavaleiro não está associado ao dragão
    combined_attributes(Rider, Dragon, CombinedAttributes),
    sum_list(CombinedAttributes, Total).

% Exemplo de consulta: final_power(lucerys, arrax, Result).

/*      PAIS        */
/*      PAI         */
father(Father, Son):- parents(Father, Son), male(Father).
/*      MÃE         */
mother(Mae, Son):- parents(Mae, Son), female(Mae).

/*      IRMÃOS          */
/*     Any    male     */
brother(Sibilings, Brother):- parents(Fathers, Sibilings), parents(Fathers, Brother), male(Brother), Sibilings \= Brother.
/*     Any    female     */
sister(Sibilings, Sister):- parents(Fathers, Sibilings), parents(Fathers, Sister), female(Sister), Sibilings \= Sister.

% primo(Primo1, Primo2) :- P1 e P2 são primos
primo(Primo1, Primo2) :-
    parents(Primo1, Parent1),
    parents(Primo2, Parent2),
    brother(Parent1, Parent2).


/*      TIOS        */

tio(Tio, Nephew) :- %Tio é tio de Nephew
tio(Tio, Nephew) :-
    parents(Nephew, Parent),
    (brother(Tio, Parent); sister(Tio, Parent)).

tia(Tia, Nephew) :- %Tia é tia de Nephew
tia(Tia, Nephew) :-
    parents(Nephew, Parent),
    (sister(Tia, Parent); brother(Tia, Parent)).

% tio_casamento(Tio, Nephew) :- %Tio é tio por casamento de Nephew
tio_casamento(Tio, Nephew) :-
    parents(Nephew, Parent),
    marry(Parent, Spouse),
    (brother(Tio, Spouse); sister(Tio, Spouse)).

% tia_casamento(Tia, Nephew) :- %Tia é tia por casamento de Nephew
tia_casamento(Tia, Nephew) :-
    parents(Nephew, Parent),
    marry(Parent, Spouse),
    (sister(Tia, Spouse); brother(Tia, Spouse)).



/*      GRANDPARENTS        */
/*      GRANDMOTHER -> MOTHER        */
grandparents(Grandparents, Grandson):- mother(Grandparents, Son), mother(Son, Grandson).
/*      GRANDFATHER -> MOTHER        */
grandparents(Grandparents, Grandson):- father(Grandparents, Son), mother(Son, Grandson).

/*      GRANDMOTHER -> FATHER        */
grandparents(Grandparents, Grandson):- mother(Grandparents, Son), father(Son, Grandson).
/*      GRANDFATHER -> FATHER        */
grandparents(Grandparents, Grandson):- father(Grandparents, Son), father(Son, Grandson).


succession(Parents, Son):- father(Parents, Son); mother(Parents,Son).

/* FIRST-BORN */
/*  KING -> FIRST-BRON*/
king_first_born(King, first-born) :-
    first_born(King, first-born).


/* regras novas*/

% Regras para calcular o poder final dos cavaleiros e dragões
% Reusa a regra final_power já definida

% Compara o poder final de dois pares (Cavaleiro1, Dragão1) e (Cavaleiro2, Dragão2)
battle(Cavaleiro1, Dragão1, Cavaleiro2, Dragão2, MaisPoderoso) :-
    final_power(Cavaleiro1, Dragão1, Poder1),
    final_power(Cavaleiro2, Dragão2, Poder2),
    (   Poder1 > Poder2
    ->  MaisPoderoso = (Cavaleiro1, Dragão1)
    ;   Poder1 < Poder2
    ->  MaisPoderoso = (Cavaleiro2, Dragão2)
    ;   MaisPoderoso = empate).

% Regras para comparar dois dragões

% Compara a força de dois dragões e mostra qual é o mais forte
compare_strength(Dragao1, Dragao2, MaisForte) :-
    dragon(Dragao1, [Forca1, _, _]),
    dragon(Dragao2, [Forca2, _, _]),
    (   Forca1 > Forca2
    ->  MaisForte = Dragao1
    ;   Forca1 < Forca2
    ->  MaisForte = Dragao2
    ;   MaisForte = empate).

% Compara a velocidade de dois dragões e mostra qual é o mais veloz
compare_speed(Dragao1, Dragao2, MaisVeloz) :-
    dragon(Dragao1, [_, Velocidade1, _]),
    dragon(Dragao2, [_, Velocidade2, _]),
    (   Velocidade1 > Velocidade2
    ->  MaisVeloz = Dragao1
    ;   Velocidade1 < Velocidade2
    ->  MaisVeloz = Dragao2
    ;   MaisVeloz = empate).

% Compara a resistência de dois dragões e mostra qual é o mais resistente
compare_resistance(Dragao1, Dragao2, MaisResistente) :-
    dragon(Dragao1, [_, _, Resistência1]),
    dragon(Dragao2, [_, _, Resistência2]),
    (   Resistência1 > Resistência2
    ->  MaisResistente = Dragao1
    ;   Resistência1 < Resistência2
    ->  MaisResistente = Dragao2
    ;   MaisResistente = empate).


% Função que decide o vencedor entre duas duplas (Cavaleiro1, Dragão1) e (Cavaleiro2, Dragão2) com base no final_power
battle_winner(Cavaleiro1, Dragao1, Cavaleiro2, Dragao2, Vencedor) :-
    final_power(Cavaleiro1, Dragao1, Poder1),
    final_power(Cavaleiro2, Dragao2, Poder2),
    (   Poder1 > Poder2
    ->  Vencedor = (Cavaleiro1, Dragao1)
    ;   Poder1 < Poder2
    ->  Vencedor = (Cavaleiro2, Dragao2)
    ;   % Se poderes finais são iguais, declare empate
        Vencedor = empate
    ).

/*novas regras novas*/

% Retorna o nome do dragão mais veloz
most_veloz(Dragao) :-
    findall(Velocidade-Dragao, (dragon(Dragao, [_, Velocidade, _])), Lista),
    sort(Lista, ListaOrdenada),
    reverse(ListaOrdenada, [VelocidadeMaximo-Dragao | _]).

% Retorna o nome do dragão mais forte
most_forte(Dragao) :-
    findall(Forca-Dragao, (dragon(Dragao, [Forca, _, _])), Lista),
    sort(Lista, ListaOrdenada),
    reverse(ListaOrdenada, [ForcaMaximo-Dragao | _]).

% Retorna o nome do dragão mais resistente
most_resistente(Dragao) :-
    findall(Resistencia-Dragao, (dragon(Dragao, [_, _, Resistencia])), Lista),
    sort(Lista, ListaOrdenada),
    reverse(ListaOrdenada, [ResistenciaMaximo-Dragao | _]).

dragao_mais_rapido(Dragao1, Dragao2, MaisRapido) :-
    dragon(Dragao1, [_, Velocidade1, _]),
    dragon(Dragao2, [_, Velocidade2, _]),
    (   Velocidade1 > Velocidade2
    ->  MaisRapido = Dragao1
    ;   Velocidade1 < Velocidade2
    ->  MaisRapido = Dragao2
    ;   MaisRapido = empate
    ).

% Compara a força de dois dragões e retorna o mais forte
queda_de_braco_de_dragao(Dragao1, Dragao2, MaisForte) :-
    dragon(Dragao1, [Forca1, _, _]),
    dragon(Dragao2, [Forca2, _, _]),
    (   Forca1 > Forca2
    ->  MaisForte = Dragao1
    ;   Forca1 < Forca2
    ->  MaisForte = Dragao2
    ;   MaisForte = empate
    ).

% melhor_cavaleiro(atributo, MelhorCavaleiro) :- MelhorCavaleiro tem o melhor valor para o atributo especificado
melhor_cavaleiro(atributo, MelhorCavaleiro) :-
    findall([C, A], rider_status(C, A), Cavaleiros),
    melhor_cavaleiro_aux(Cavaleiros, atributo, MelhorCavaleiro).

% melhor_cavaleiro_aux(Cavaleiros, atributo, MelhorCavaleiro) :- calcula o melhor cavaleiro para o atributo
melhor_cavaleiro_aux(Cavaleiros, inteligencia, MelhorCavaleiro) :-
    max_member([_, MaxInteligencia], Cavaleiros, [MelhorCavaleiro, MaxInteligencia]).

melhor_cavaleiro_aux(Cavaleiros, estrategia, MelhorCavaleiro) :-
    max_member([_, _, MaxEstrategia], Cavaleiros, [MelhorCavaleiro, _, MaxEstrategia]).

   % regiao_cavaleiro(Cavaleiro, Regiao) :- Encontra a região do Cavaleiro
regiao_cavaleiro(Cavaleiro, Regiao) :-
    rider(Cavaleiro, Dragao),
    rider(Cavaleiro, _), % Assumindo que um cavaleiro está associado a uma casa
    region(Regiao, _, Casas),
    member(Casa, Casas),
    rider(Cavaleiro, _).
