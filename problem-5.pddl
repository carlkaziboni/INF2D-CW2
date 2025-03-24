(define (problem problem_five) (:domain domain_five)
(:objects
    N1 - node
    N2 - node
    N3 - node
    N4 - node
    N5 - node
    N6 - node
    N7 - node
    N8 - node
    N9 - node
    N10 - node
    N11 - node
    N12 - node
    N13 - node
    Beer - food
    Pizza - food
    Sushi - food
    Burrito - food
    Soda - food
    Curry - food
    Taco - food
    OldMan - person
    OldLady - person
    Man - person
    Woman - person
    FishMan - person
    NewMan - person
    NewWoman - person
    Scooter - courier
    FuelStation - fuel
)

(:init
    ;todo: put the initial state's facts and numeric values here
    (RoadNetwork N1 N2)
    (RoadNetwork N1 N6)
    (RoadNetwork N1 N9)
    (RoadNetwork N1 N12)
    (RoadNetwork N2 N1)
    (RoadNetwork N2 N3)
    (RoadNetwork N3 N2)
    (RoadNetwork N3 N4)
    (RoadNetwork N4 N5)
    (RoadNetwork N5 N2)
    (RoadNetwork N5 N6)
    (RoadNetwork N6 N1)
    (RoadNetwork N6 N7)
    (RoadNetwork N7 N6)
    (RoadNetwork N7 N8)
    (RoadNetwork N8 N7)
    (RoadNetwork N9 N1)
    (RoadNetwork N9 N10)
    (RoadNetwork N10 N9)
    (RoadNetwork N11 N9)
    (RoadNetwork N12 N11)
    (RoadNetwork N12 N13)
    (RoadNetwork N13 N12)
    (Serves Curry N2)
    (Serves Sushi N2)
    (Serves Beer N3)
    (Serves Soda N3)
    (Serves Burrito N6)
    (Serves Taco N6)
    (Serves Pizza N12)
    (Location OldMan N11)
    (Location Man N10)
    (Location OldLady N5)
    (Location FishMan N8)
    (Location Woman N13)
    (Location NewMan N1)
    (Location NewWoman N7)
    (Ordered Beer NewMan)
    (Ordered Curry OldMan)
    (Ordered Pizza Man)
    (Ordered Sushi OldLady)
    (Ordered Burrito Woman)
    (Ordered Soda NewWoman)
    (Ordered Taco FishMan)
    (Location Scooter N9)
    (Location FuelStation N4)
    (= (max_capacity Scooter) 40)
    (= (current_capacity Scooter) 40)
    (= (distance N1 N2) 2)
    (= (distance N1 N6) 3)
    (= (distance N1 N9) 4)
    (= (distance N1 N12) 7)
    (= (distance N2 N1) 2)
    (= (distance N2 N3) 2)
    (= (distance N3 N2) 2)
    (= (distance N3 N4) 3)
    (= (distance N4 N5) 3)
    (= (distance N5 N2) 2)
    (= (distance N5 N6) 4)
    (= (distance N6 N1) 3)
    (= (distance N6 N7) 2)
    (= (distance N7 N6) 2)
    (= (distance N7 N8) 9)
    (= (distance N8 N7) 9)
    (= (distance N9 N1) 4)
    (= (distance N9 N10) 2)
    (= (distance N10 N9) 2)
    (= (distance N11 N9) 2)
    (= (distance N12 N11) 4)
    (= (distance N12 N13) 5)
    (= (distance N13 N12) 5)
    (= (time OldMan) 100)
    (= (time OldLady) 120)
    (= (time Man) 130)
    (= (time Woman) 100)
    (= (time FishMan) 150)
    (= (time NewMan) 110)
    (= (time NewWoman) 180)
    (= (money Scooter) 15)
)

(:goal (and
    ;todo: put the goal condition here
    (DeliveryMade Beer NewMan)
    (DeliveryMade Pizza Man)
    (DeliveryMade Sushi OldLady)
    (DeliveryMade Burrito Woman)
    (DeliveryMade Soda NewWoman)
    (DeliveryMade Taco FishMan)
    (DeliveryMade Curry OldMan)
))

)
