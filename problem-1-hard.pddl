(define (problem complex-delivery-network-extended)
(:domain domain_one)

(:objects
    NodeA NodeB NodeC NodeD NodeE NodeF NodeG - node
    Person1 Person2 Person3 Person4 - person
    Courier1 Courier2 - courier
    Food1 Food2 Food3 Food4 - food
)

(:init
    ; Road connections with asymmetry
    (RoadNetwork NodeA NodeB)
    (RoadNetwork NodeB NodeC)
    (RoadNetwork NodeC NodeD)
    (RoadNetwork NodeD NodeE)
    (RoadNetwork NodeE NodeF)
    (RoadNetwork NodeF NodeG)
    (RoadNetwork NodeG NodeC) ; Circular connection

    ; Initial courier locations
    (Location Courier1 NodeA)
    (Location Courier2 NodeF)

    ; Food serving locations
    (Serves Food1 NodeA)
    (Serves Food2 NodeB)
    (Serves Food3 NodeE)
    (Serves Food4 NodeG)

    ; Ordered food
    (Ordered Food1 Person1)
    (Ordered Food2 Person2)
    (Ordered Food3 Person3)
    (Ordered Food4 Person4)

    ; Initial person locations
    (Location Person1 NodeC)
    (Location Person2 NodeD)
    (Location Person3 NodeE)
    (Location Person4 NodeF)

    ; Constraints (example: certain nodes inaccessible for Courier1)
    (not (RoadNetwork NodeC NodeD)) ; Courier1 cannot directly move here
)

(:goal
    (and 
        (DeliveryMade Food1 Person1)
        (DeliveryMade Food2 Person2)
        (DeliveryMade Food3 Person3)
        (DeliveryMade Food4 Person4)
    )
)
)
