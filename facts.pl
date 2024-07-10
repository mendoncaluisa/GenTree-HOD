
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
    ninckname(rhaenys, The Queen Who Never Was).
    ninckname(jason, Breakbones).
    ninckname(lucerys, Luke).
    ninckname(jacaeres, jace).
    ninckname(corlys, The Sea Snake).
    ninckname(aegonI, The Conqueror).
    ninckname(aegonIII, The Younger).
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

