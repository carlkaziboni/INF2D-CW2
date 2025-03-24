;Header and description

(define (domain domain_five)

;remove requirements that are not needed
(:requirements :adl :fluents :universal-preconditions)

(:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
    person courier food fuel - placees
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
    (distance ?x - node ?y - node)
    (max_capacity ?x - courier)
    (current_capacity ?x - courier)
    (tip ?j - person)
)

;define actions here
(:action MOVE-FROM-TO
    :parameters (?x - courier ?y - node ?z - node)
    :precondition (and (Location ?x ?y) (RoadNetwork ?y ?z) (<= (distance ?y ?z) (current_capacity ?x)))
    :effect (and (Location ?x ?z) (not (Location ?x ?y)) (decrease (current_capacity ?x) (distance?y ?z)) (forall (?j - person) (when (> (tip ?j) 0) (decrease (tip ?j) (distance ?y ?z)))))
)

(:action PICK-UP
    :parameters (?x - courier ?y - food ?z - node)
    :precondition (and (Location ?x ?z) (not (PickedUp ?y ?x)) (Serves ?y ?z))
    :effect (and (PickedUp ?y ?x))
)

(:action MAKE-DELIVERY
    :parameters (?x - courier ?y - food ?z - node ?j - person)
    :precondition (and (Location ?x ?z) (PickedUp ?y ?x) (Location ?j ?z) (Ordered ?y ?j) (not (DeliveryMade ?y ?j)) (<= (tip ?j) 100))
    :effect (and (not (PickedUp ?y ?x)) (DeliveryMade ?y ?j) (not (Ordered ?y ?j)))
)

(:action REFUEL
    :parameters (?x - courier ?y - node ?z - fuel)
    :precondition (and (Location ?x ?y) (Location ?z ?y))
    :effect (and (assign (current_capacity ?x) (max_capacity ?x)))
)




)