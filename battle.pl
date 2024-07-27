/* FACTS */
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


/* RIDERS STATUS */
% rider(Name, [Intelligence, Strategy])
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

/* RULES */

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

