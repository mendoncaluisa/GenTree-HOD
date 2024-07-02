/* 
 * O trabalho consiste em um banco de dados dedutivo
 * para árvore genealogica dos personagens de House of
 * Dragons e Game of Thrones
 */


/*  fatos  */
    /* house  (9 houses) */

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

/* GENDER */
    /* female (7 female)*/
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

    /* HOMENS (19 homens)*/
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
    male(lyman).
    male(criston).
    male(harrold).
    male(corlys).
    male(otto).
    male(daemon).
    male(viserysI).
    male(viserysII).
    male(joffrey).
    male(jaehaerysI).
    male(jaehaerysII).
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
/*            NOME      family   */
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
    family(alyssa, targaryen).
    family(baelonII, targaryen).
    family(daeron, targaryen).
    family(visenya, targaryen).

    family(alicent, hightower).
    family(otto, hightower).
    
    family(laena, velaryon).
    family(laenor, velaryon).
    family(lucerys, velaryon).
    family(jacaeres, velaryon).
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

