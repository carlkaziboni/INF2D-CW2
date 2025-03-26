(define (problem problem-1-very-hard)
    (:domain domain_one)

    (:objects
        N1 N2 N3 N4 N5 N6 N7 N8 N9 N10 N11 N12 N13 N14 N15 N16 N17 N18 N19 N20 
        N21 N22 N23 N24 N25 N26 N27 N28 N29 N30 N31 N32 N33 N34 N35 N36 N37 N38 N39 N40
        - node

        Beer Pizza Sushi Burrito Soda Curry Taco Burger Fries Donut 
        Cheeseburger Nachos Milkshake - food

        OldMan OldLady Man Woman FishMan Student Chef Gamer Tourist Worker 
        GrandFather Child Teenager Doctor Nurse Driver - person

        Scooter Bike Truck Helicopter - courier
    )

    (:init
        ; Define a complex road network
        (RoadNetwork N1 N2) (RoadNetwork N2 N3) (RoadNetwork N3 N4) (RoadNetwork N4 N5)
        (RoadNetwork N5 N6) (RoadNetwork N6 N7) (RoadNetwork N7 N8) (RoadNetwork N8 N9)
        (RoadNetwork N9 N10) (RoadNetwork N10 N11) (RoadNetwork N11 N12)
        ; More roads connecting nodes, with loops and intersections
        (RoadNetwork N25 N30) (RoadNetwork N28 N35) (RoadNetwork N20 N40)
        (RoadNetwork N10 N15) (RoadNetwork N5 N35) (RoadNetwork N15 N40)
        (RoadNetwork N39 N2) (RoadNetwork N7 N20)

        ; Add locations for 20 people (some people with multiple food orders)
        (Location OldMan N5) (Location Woman N10) (Location Chef N15) (Location Worker N20)
        (Location Student N6) (Location Gamer N12) (Location Tourist N25) (Location FishMan N30)
        (Location Man N8) (Location OldLady N18) (Location GrandFather N20) (Location Child N35)
        (Location Teenager N33) (Location Nurse N25) (Location Doctor N40) (Location Driver N10)

        ; Define the food items served at different locations
        (Serves Beer N1) (Serves Pizza N2) (Serves Sushi N3) (Serves Burrito N5)
        (Serves Taco N7) (Serves Burger N10) (Serves Fries N12) (Serves Donut N15)
        (Serves Cheeseburger N20) (Serves Nachos N25) (Serves Milkshake N30)

        ; Orders for the people
        (Ordered Beer Man) (Ordered Pizza Woman) (Ordered Sushi OldLady)
        (Ordered Curry FishMan) (Ordered Burger Student) (Ordered Fries Chef)
        (Ordered Donut Worker) (Ordered Cheeseburger Gamer)
        (Ordered Nachos Tourist) (Ordered Milkshake Driver)
        
        ; Courier starting locations with different vehicle types
        (Location Scooter N1) (Location Bike N25) (Location Truck N40) (Location Helicopter N30)
    )

    (:goal
        (and
            ; Multiple deliveries for each person, ensuring some prioritization
            (DeliveryMade Beer Man)
            (DeliveryMade Pizza Woman)
            (DeliveryMade Sushi OldLady)
            (DeliveryMade Burger Student)
            (DeliveryMade Fries Chef)
            (DeliveryMade Donut Worker)
            (DeliveryMade Cheeseburger Gamer)
            (DeliveryMade Milkshake Driver)
            ; Multiple food items for some people
            (DeliveryMade Nachos Tourist)
            (DeliveryMade Curry FishMan)
        )
    )
)
