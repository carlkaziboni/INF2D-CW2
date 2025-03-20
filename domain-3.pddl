;Header and description

(define (domain domain_three)

;remove requirements that are not needed
(:requirements :adl :fluents)

(:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
    person courier food - placees
    node - object
)

; un-comment following line if constants are needed
;(:constants )

(:predicates ;todo: define predicates here
    (RoadNetwork ?x - node ?y - node)
    (Location ?x - placees ?y - node)
    (DeliveryMade ?x - food ?z - person)
    (PickedUp ?x - food ?y - courier)
    (Serves ?x - food ?y - node)
    (Ordered ?x - food ?y - person)
)


(:functions ;todo: define numeric functions here
    (current_capacity ?x - courier)
    (max_capacity ?x - courier)
    (food_volume ?y - food)
)

;define actions here
(:action MOVE-FROM-TO
    :parameters (?x - courier ?y - node ?z - node)
    :precondition (and (Location ?x ?y) (RoadNetwork ?y ?z))
    :effect (and (Location ?x ?z) (not (Location ?x ?y)))
)

(:action PICK-UP
    :parameters (?x - courier ?y - food ?z - node)
    :precondition (and (Location ?x ?z) (not (PickedUp ?y ?x)) (Serves ?y ?z) (>= (max_capacity ?x) (+ (food_volume ?y) (current_capacity ?x))))
    :effect (and (PickedUp ?y ?x) (increase (current_capacity ?x) (food_volume ?y)))
)

(:action MAKE-DELIVERY
    :parameters (?x - courier ?y - food ?z - node ?j - person)
    :precondition (and (Location ?x ?z) (PickedUp ?y ?x) (Location ?j ?z) (Ordered ?y ?j) (not (DeliveryMade ?y ?j)))
    :effect (and (not (PickedUp ?y ?x)) (DeliveryMade ?y ?j) (not (Ordered ?y ?j)) (decrease (current_capacity ?x) (food_volume ?y)))
)



)