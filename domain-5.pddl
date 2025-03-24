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
    (AllOrdersCompleted ?j - person)
)


(:functions ;todo: define numeric functions here
    (distance ?x - node ?y - node)
    (max_capacity ?x - courier)
    (current_capacity ?x - courier)
    (time ?j - person)
    (money ?x - courier)
)

;define actions here
(:action MOVE-FROM-TO
    :parameters (?x - courier ?y - node ?z - node)
    :precondition (and (Location ?x ?y) (RoadNetwork ?y ?z) (<= (distance ?y ?z) (current_capacity ?x)))
    :effect (and (Location ?x ?z) (not (Location ?x ?y)) (decrease (current_capacity ?x) (distance?y ?z)) (forall (?j - person) (when (> (time ?j) 0) (decrease (time ?j) (distance ?y ?z)))))
)

(:action PICK-UP
    :parameters (?x - courier ?y - food ?z - node ?j - person)
    :precondition (and (Location ?x ?z) (not (PickedUp ?y ?x)) (Serves ?y ?z) (Ordered ?y ?j) (<= (time ?j) 100))
    :effect (and (PickedUp ?y ?x))
)

(:action MAKE-DELIVERY
    :parameters (?x - courier ?y - food ?z - node ?j - person)
    :precondition (and (Location ?x ?z) (PickedUp ?y ?x) (Location ?j ?z) (Ordered ?y ?j) (not (DeliveryMade ?y ?j)) (<= (time ?j) 100))
    :effect (and (not (PickedUp ?y ?x)) (DeliveryMade ?y ?j) (not (Ordered ?y ?j)))
)

(:action REFUEL
    :parameters (?x - courier ?y - node ?z - fuel)
    :precondition (and (Location ?x ?y) (Location ?z ?y))
    :effect (and (assign (current_capacity ?x) (max_capacity ?x)) (decrease (money ?x) 5))
)

(:action CHECK-ALL-ORDERS-COMPLETED
    :parameters (?j - person)
    :precondition (forall (?y - food) (or (not (Ordered ?y ?j)) (DeliveryMade ?y ?j)))
    :effect (AllOrdersCompleted ?j)
)

(:action COMPLETE-ORDER
    :parameters (?x - courier ?j - person ?z - node)
    :precondition (and (AllOrdersCompleted ?j) (Location ?x ?z))
    :effect (and (increase (money ?x) (/ (time ?j) 20)) (not (AllOrdersCompleted ?j)) )
)




)