(define (problem problem_three) (:domain domain_three)
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
    (Ordered Curry OldMan)
    (Ordered Pizza Man)
    (Ordered Sushi OldLady)
    (Ordered Burrito Woman)
    (Ordered Soda Woman)
    (Ordered Taco FishMan)
    (Location Scooter N9)
    (assign (max_capacity Scooter) 10)
    (assign (current_capacity) 0)
    (assign (food_volume Beer) 2)
    (assign (food_volume Sushi) 4)
    (assign (food_volume Burrito) 6)
    (assign (food_volume Pizza) 8)
    (assign (food_volume Soda) 3)
    (assign (food_volume Curry) 7)
    (assign (food_volume Taco) 5)
)

(:goal (and
    ;todo: put the goal condition here
    (DeliveryMade Beer Man)
    (DeliveryMade Pizza Man)
    (DeliveryMade Sushi OldLady)
    (DeliveryMade Burrito Woman)
    (DeliveryMade Soda Woman)
    (DeliveryMade Taco FishMan)
    (DeliveryMade Curry OldMan)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
