
(define (domain action-castle)
  (:requirements :strips :typing)
  (:types 
    player location direction monster item  - object
    fishingpole - item  
    food - item         
  )
  
  (:action feed
    :parameters (?m - monster ?f - food ?p - player ?l - location)
    :precondition (and 
                    (has ?p ?f)           
                    (at ?p ?l)             
                    (monster-at ?m ?l)    
                    (hungry ?m)            
                  )
    :effect (and 
              (not (hungry ?m))       
              (not (has ?p ?f))        
            )
  )

  (:action go
    :parameters (?dir - direction ?p - player ?l1 - location ?l2 - location)
    :precondition (and (at ?p ?l1) (connected ?l1 ?dir ?l2) (not (blocked ?l1 ?dir ?l2)))
    :effect (and (at ?p ?l2) (not (at ?p ?l1)))
  )

  (:action gofish
    :parameters (?fp - fishingpole ?p - player ?l - location ?f - food)
    :precondition (and (at ?p ?l) 
                       (has ?p ?fp)          
                       (haslake ?l)         
                       (fish-at ?f ?l))    
    :effect (and (item-at ?f ?l)              
                 (not (fish-at ?f ?l)))    
  )


  (:action get
      :parameters (?i - item ?p - player ?l - location)
      :precondition (and (at ?p ?l) (item-at ?i ?l) (not (has ?p ?i)))
      :effect (and (has ?p ?i) (not (item-at ?i ?l)))
  )

  (:action drop
      :parameters (?i - item ?p - player ?l - location)
      :precondition (and (has ?p ?i) (at ?p ?l))
      :effect (and (item-at ?i ?l) (not (has ?p ?i)))
  )

)
