/*FACTS*/

/* DRAGONS FOR BATTLE*/
/*STR, SPEED e RESISTENCE*/
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

/*RULES*/

power(Dragon, Power) :-
    dragon(Dragon, [Strength, Speed, Endurance]),
    Total is Strength + Speed + Endurance,
    Power is Total / 3.

tank(Dragon, Resistence) :-
    dragon(Dragon, [Strength, Speed, Endurance]),
    Total is Strength + Endurance,
    Resistence is Total / 2.

specialAttack(Dragon, Burst) :-
     dragon(Dragon, [Strength, Speed, Endurance]),
    Burst is Strength * Speed.


