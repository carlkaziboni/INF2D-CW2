(define (problem complex_problem)
    (:domain domain_one)
    (:objects
        N1 - node N2 - node N3 - node N4 - node N5 - node 
        N6 - node N7 - node N8 - node N9 - node N10 - node 
        N11 - node N12 - node N13 - node N14 - node N15 - node 
        N16 - node N17 - node N18 - node N19 - node N20 - node 
        N21 - node N22 - node N23 - node N24 - node N25 - node 
        Beer - food Pizza - food Sushi - food Burrito - food Soda - food 
        Curry - food Taco - food Noodles - food Rice - food Pasta - food 
        Steak - food Salad - food 
        OldMan - person OldLady - person Man - person Woman - person 
        FishMan - person Businessman - person Student - person Teacher - person 
        Courier1 - courier Courier2 - courier
    )
    
    (:init
        ; Complex Road Network with dead ends and multiple paths
        (RoadNetwork N1 N2) (RoadNetwork N2 N3) (RoadNetwork N3 N4) 
        (RoadNetwork N4 N5) (RoadNetwork N5 N6) (RoadNetwork N6 N7) 
        (RoadNetwork N7 N8) (RoadNetwork N8 N9) (RoadNetwork N9 N10) 
        (RoadNetwork N10 N11) (RoadNetwork N11 N12) (RoadNetwork N12 N13) 
        (RoadNetwork N13 N14) (RoadNetwork N14 N15) (RoadNetwork N15 N16) 
        (RoadNetwork N16 N17) (RoadNetwork N17 N18) (RoadNetwork N18 N19) 
        (RoadNetwork N19 N20) (RoadNetwork N20 N21) (RoadNetwork N21 N22) 
        (RoadNetwork N22 N23) (RoadNetwork N23 N24) (RoadNetwork N24 N25) 
        
        ; Some connections between distant nodes for shortcuts
        (RoadNetwork N3 N10) (RoadNetwork N5 N15) (RoadNetwork N7 N20) 
        (RoadNetwork N12 N24) (RoadNetwork N14 N25) (RoadNetwork N8 N18) 
        
        ; Some one-way roads
        (RoadNetwork N9 N6) (RoadNetwork N16 N10) (RoadNetwork N22 N13) 
        
        ; Locations of people
        (Location OldMan N5) (Location OldLady N17) 
        (Location Man N22) (Location Woman N25) 
        (Location FishMan N9) (Location Businessman N20) 
        (Location Student N3) (Location Teacher N11)
        
        ; Locations of couriers
        (Location Courier1 N1) (Location Courier2 N14)
        
        ; Where food can be picked up
        (Serves Curry N2) (Serves Sushi N4) (Serves Beer N6) (Serves Soda N8)
        (Serves Burrito N10) (Serves Taco N12) (Serves Pizza N14) (Serves Noodles N16)
        (Serves Rice N18) (Serves Pasta N20) (Serves Steak N22) (Serves Salad N24)
        
        ; Delivery orders
        (Ordered Beer Man) (Ordered Curry OldMan) (Ordered Pizza Woman)
        (Ordered Sushi OldLady) (Ordered Burrito Teacher) (Ordered Soda Student)
        (Ordered Taco FishMan) (Ordered Noodles Businessman) (Ordered Rice Man)
        (Ordered Pasta OldLady) (Ordered Steak Woman) (Ordered Salad Student)
    )

    (:goal
        (and
            (DeliveryMade Beer Man) (DeliveryMade Pizza Woman)
            (DeliveryMade Sushi OldLady) (DeliveryMade Burrito Teacher)
            (DeliveryMade Soda Student) (DeliveryMade Taco FishMan)
            (DeliveryMade Curry OldMan) (DeliveryMade Noodles Businessman)
            (DeliveryMade Rice Man) (DeliveryMade Pasta OldLady)
            (DeliveryMade Steak Woman) (DeliveryMade Salad Student)
        )
    )
)
