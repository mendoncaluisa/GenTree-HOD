
/*  fatos  */
    /* house  (9 houses) */

    house('Targaryen').
    house('Velaryon').
    house('Arryn').
    house('Stark').
    house('Tully').
    house('Greyjoy').
    house('Baratheon').
    house('Lannister').
    house('Hightower').
    house('Redwyne').
    house('Strong').
    house('Royce').

/* GENDER */
    /* female (7 female)*/
    female('Rhaenyra').
    female('Rhaenys').
    female('Rhaena').
    female('Baela').
    female('Alicent').
    female('Helaena').
    female('Mysaria').
    female('Laena').
    female('Jaehaera').
    female('Alysanne').
    female('Visenya').
    female('Alyssa').
    female('Jocelyn').
    female('Aemma').
    female('Vissenya').
    female('Rhea').

    /* HOMENS (19 homens)*/
    male('Aemon').
    male('AegonI').
    male('AegonII').
    male('AegonIII').
    male('Aemond').
    male('Lucerys').
    male('Laenor').
    male('Jacaeres').
    male('Jason').
    male('Tyland').
    male('Larys').
    male('Vaemond').
    male('Harwin').
    male('Lyonel').
    male('Lyman').
    male('Criston').
    male('Harrold').
    male('Corlys').
    male('Otto').
    male('Daemon').
    male('ViserysI').
    male('ViserysII').
    male('Joffrey').
    male('JaehaerysI').
    male('BaehaerysII').
    male('BaelonI').
    male('BaelonII').
    male('Daeron').
    male('Arryk').
    male('Erryk').
    male('Lorent').
    male('Ryam').
    male('Steffon').
    male('Mellos').
    male('Orwyle').
    male('Jasper').
    male('Lyman').


/* family */
/*            NOME      family   */
    
family('Visenya', 'Targaryen').
family('Rhaenyra', 'Targaryen').
family('Rhaenys', 'Targaryen').
family('Rhaena', 'Targaryen').
family('Baela', 'Targaryen').
family('Helaena', 'Targaryen').
family('Viserys I', 'Targaryen').
family('Aegon I', 'Targaryen').
family('Aegon II', 'Targaryen').
family('Aegon III', 'Targaryen').
family('Aemond', 'Targaryen').
family('Viserys II', 'Targaryen').
family('Jaehaerys I', 'Targaryen').
family('Jaehaerys II', 'Targaryen').
family('Jaehaera', 'Targaryen').
family('Alysanne', 'Targaryen').
family('Aemon', 'Targaryen').
family('Baelon I', 'Targaryen').
family('Alyssa', 'Targaryen').
family('Baelon II', 'Targaryen').
family('Daeron', 'Targaryen').
family('Visenya', 'Targaryen'). % Duplicated entry removed

family('Alicent', 'Hightower').
family('Otto', 'Hightower').

family('Laena', 'Velaryon').
family('Laenor', 'Velaryon').
family('Lucerys', 'Velaryon').
family('Jacaerys', 'Velaryon').
family('Vaemond', 'Velaryon').
family('Corlys', 'Velaryon').
family('Joffrey', 'Velaryon').

family('Jason', 'Lannister').
family('Tyland', 'Lannister').

family('Jocelyn', 'Baratheon').

family('Aemma', 'Arryn').

family('Lyonel', 'Strong').
family('Harwin', 'Strong').
family('Larys', 'Strong').

family('Rhea', 'Royce').


first_born('Jaehaerys I', 'Aemon').
first_born('Viserys I', 'Rhaenyra').
first_born('Aegon II', 'Jaehaera').
first_born('Daeron I', 'Baelor').
first_born('Aegon III', 'Daeron').
first_born('Baelor I', 'Viserys').
first_born('Viserys II', 'Aegon').
first_born('Aegon IV', 'Daeron II').


primogenito_do_rei(Rei, Primogenito) :-
    first_born(Rei, Primogenito).


/* ninckname */
    /*       Name       ninckname       */
    ninckname(rhaenys, theQueenWhoNeverWas).
    ninckname(jason, Breakbones).
    ninckname(lucerys, Luke).
    ninckname(jacaeres, jace).
    ninckname(corlys, theSeaSnake).
    ninckname(aegonI, theConqueror).
    ninckname(aegonIII, theYounger).
    ninckname(jasper, ironrod)

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
    

/* DRAGONS */
    dragon(arrax).
    dragon(balerion).
    dragon(caraxes).
    dragon(dreamfyre).
    dragon(meleys).
    dragon(moondancer).
    dragon(seasmoke).
    dragon(silverwing).
    dragon(sunfyre).
    dragon(syrax).
    dragon(tyraxes).
    dragon(vermax).
    dragon(vermithor).
    dragon(vhagar).

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

/* FIRST-BORN */
    /*     KING      FIRST-BORN*/
    first_born('Jaehaerys I', 'Aemond').
    first_born('Viserys I', 'Rhaenyra').
    first_born('Aegon II', 'Jaehaera').
    first_born('Daeron I', 'Baelor').
    first_born('Aegon III', 'Daeron').
    first_born('Baelor I', 'Viserys').
    first_born('Viserys II', 'Aegon').
    first_born('Aegon IV', 'Daeron II').


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


/*  REGRAS DE  REGIÃO   */
    region_of_house(House, Region) :-
        region(Region, Houses),
        member(House, Houses).

    same_region(House1, House2) :-
        region(Region, Houses),
        member(House1, Houses),
        member(House2, Houses).

    houses_in_region(Region, Houses) :-
        region(Region, Houses).

    house_exists(House) :-
        region(_, Houses),
        member(House, Houses).
    
    all_houses(Houses) :-
        findall(House, (region(_, HousesList),
        member(House, HousesList)), Houses).

/* REALIZAR CARTAS COMO BONUS DE CLIMA */


/* MONTADOR  E REGIAO*/
knowledge(daemon, )