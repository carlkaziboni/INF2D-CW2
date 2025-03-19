(define (problem problem_one) (:domain domain_one)
(:objects
    N1 - n
    N2 - n
    N3 - n
    N4 - n
    N5 - n
    N6 - n
    N7 - n
    N8 - n
    N9 - n
    N10 - n
    N11 - n
    N12 - n
    N13 - n
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
    Scooter - courier
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
    (Ordered Beer Man)
    (Ordered Pizza Man)
    (Ordered Sushi OldLady)
    (Ordered Burrito Woman)
    (Ordered Soda Woman)
    (Ordered Curry Man)
    (Ordered Taco FishMan)
    (Location Scooter N9)
)

(:goal (and
    ;todo: put the goal condition here
    (DeliveryMade Beer Man)
    (DeliveryMade Pizza Man)
    (DeliveryMade Sushi OldLady)
    (DeliveryMade Burrito Woman)
    (DeliveryMade Soda Woman)
    (DeliveryMade Curry Man)
    (DeliveryMade Taco FishMan)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
