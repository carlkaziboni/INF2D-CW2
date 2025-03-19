;Header and description

(define (domain domain_one)

;remove requirements that are not needed
(:requirements :adl)

(:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
    person courier food - placees
    n - object
)

; un-comment following line if constants are needed
;(:constants )

(:predicates ;todo: define predicates here
    (RoadNetwork ?x - n ?y - n)
    (Location ?x - placees ?y - n)
    (DeliveryMade ?x - food ?z - person)
    (PickedUp ?x - food ?y - courier)
    (Serves ?x - food ?y - n)
    (Ordered ?x - food ?y - person)
)


(:functions ;todo: define numeric functions here

)

;define actions here
(:action MOVE-FROM-TO
    :parameters (?x - courier ?y - n ?z - n)
    :precondition (and (Location ?x ?y) (RoadNetwork ?y ?z))
    :effect (and (Location ?x ?z) (not (Location ?x ?y)))
)

(:action PICK-UP
    :parameters (?x - courier ?y - food ?z - n)
    :precondition (and (Location ?x ?z) (not (PickedUp ?x ?y)) (Serves ?y ?z))
    :effect (and (PickedUp ?x ?y))
)

(:action MAKE-DELIVERY
    :parameters (?x - courier ?y - food ?z - n ?j - person)
    :precondition (and (Location ?x ?z) (PickedUp ?x ?y) (Location ?j ?z) (Ordered ?y ?j) (not (DeliveryMade ?y ?j)))
    :effect (and (not (PickedUp ?x ?y)) (DeliveryMade ?y ?j) (not (Ordered ?y ?j)))
)



)