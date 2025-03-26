(define (problem problem-1-very-hard-fixed)
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
        ; Strengthened road network for full connectivity
        (RoadNetwork N1 N2) (RoadNetwork N2 N3) (RoadNetwork N3 N4) (RoadNetwork N4 N5)
        (RoadNetwork N5 N6) (RoadNetwork N6 N7) (RoadNetwork N7 N8) (RoadNetwork N8 N9)
        (RoadNetwork N9 N10) (RoadNetwork N10 N11) (RoadNetwork N11 N12) (RoadNetwork N12 N13)
        (RoadNetwork N13 N14) (RoadNetwork N14 N15) (RoadNetwork N15 N16) (RoadNetwork N16 N17)
        (RoadNetwork N17 N18) (RoadNetwork N18 N19) (RoadNetwork N19 N20) (RoadNetwork N20 N21)
        (RoadNetwork N21 N22) (RoadNetwork N22 N23) (RoadNetwork N23 N24) (RoadNetwork N24 N25)
        (RoadNetwork N25 N26) (RoadNetwork N26 N27) (RoadNetwork N27 N28) (RoadNetwork N28 N29)
        (RoadNetwork N29 N30) (RoadNetwork N30 N31) (RoadNetwork N31 N32) (RoadNetwork N32 N33)
        (RoadNetwork N33 N34) (RoadNetwork N34 N35) (RoadNetwork N35 N36) (RoadNetwork N36 N37)
        (RoadNetwork N37 N38) (RoadNetwork N38 N39) (RoadNetwork N39 N40) (RoadNetwork N40 N1)
        (RoadNetwork N10 N30) (RoadNetwork N5 N25) (RoadNetwork N15 N35)
        
        ; Locations of people
        (Location OldMan N5) (Location Woman N10) (Location Chef N15) (Location Worker N20)
        (Location Student N6) (Location Gamer N12) (Location Tourist N25) (Location FishMan N30)
        (Location Man N8) (Location OldLady N18) (Location GrandFather N20) (Location Child N35)
        (Location Teenager N33) (Location Nurse N25) (Location Doctor N40) (Location Driver N10)
        
        ; Food availability at multiple locations to ensure feasibility
        (Serves Beer N10) (Serves Beer N5) (Serves Pizza N8) (Serves Pizza N15) 
        (Serves Sushi N18) (Serves Sushi N20) (Serves Burrito N15) (Serves Burrito N25)
        (Serves Taco N20) (Serves Taco N30) (Serves Burger N25) (Serves Burger N35)
        (Serves Fries N30) (Serves Fries N40) (Serves Donut N35) (Serves Donut N10)
        (Serves Cheeseburger N40) (Serves Cheeseburger N6) (Serves Nachos N6) (Serves Nachos N12)
        (Serves Milkshake N12) (Serves Milkshake N18) (Serves Curry N30) (Serves Curry N5)
        
        ; Orders by people
        (Ordered Beer Woman) (Ordered Pizza Man) (Ordered Sushi OldLady)
        (Ordered Curry FishMan) (Ordered Burger Student) (Ordered Fries Chef)
        (Ordered Donut Worker) (Ordered Cheeseburger Gamer)
        (Ordered Nachos Tourist) (Ordered Milkshake Driver)
        
        ; Couriers start at strategic locations
        (Location Scooter N1) (Location Bike N10) (Location Truck N20) (Location Helicopter N30)
    )
    
    (:goal
        (and
            (DeliveryMade Beer Woman)
            (DeliveryMade Pizza Man)
            (DeliveryMade Sushi OldLady)
            (DeliveryMade Burger Student)
            (DeliveryMade Fries Chef)
            (DeliveryMade Donut Worker)
            (DeliveryMade Cheeseburger Gamer)
            (DeliveryMade Milkshake Driver)
            (DeliveryMade Nachos Tourist)
            (DeliveryMade Curry FishMan)
        )
    )
)
