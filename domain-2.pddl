;Header and description

(define (domain domain_two)

;remove requirements that are not needed
(:requirements :adl :existential-preconditions)

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

)

;define actions here
(:action MOVE-FROM-TO
    :parameters (?x - courier ?y - node ?z - node)
    :precondition (and (Location ?x ?y) (RoadNetwork ?y ?z) (not (exists (?i - courier) 
    (and (Location ?i ?z)))))
    :effect (and (Location ?x ?z) (not (Location ?x ?y)))
)

(:action PICK-UP
    :parameters (?x - courier ?y - food ?z - node)
    :precondition (and (Location ?x ?z) (not (PickedUp ?y ?x)) (Serves ?y ?z))
    :effect (and (PickedUp ?y ?x))
)

(:action MAKE-DELIVERY
    :parameters (?x - courier ?y - food ?z - node ?j - person)
    :precondition (and (Location ?x ?z) (PickedUp ?y ?x) (Location ?j ?z) (Ordered ?y ?j) (not (DeliveryMade ?y ?j)))
    :effect (and (not (PickedUp ?y ?x)) (DeliveryMade ?y ?j) (not (Ordered ?y ?j)))
)



)