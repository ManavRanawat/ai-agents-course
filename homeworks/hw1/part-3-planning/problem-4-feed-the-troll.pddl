
(define (problem feed-troll)

  (:domain action-castle)

  (:objects
    npc - player
    troll - monster
    fish - food
    pole - fishingpole
    cottage gardenpath fishingpond windingpath talltree drawbridge courtyard towerstairs tower dungeonstairs dungeon greatfeastinghall throneroom - location
    in out north south east west up down - direction
  )

  (:init
    (connected cottage out gardenpath)
    (connected gardenpath in cottage)
    (connected gardenpath south fishingpond)
    (connected fishingpond north gardenpath)
    (connected windingpath east drawbridge)
    (connected gardenpath north windingpath)


    (at npc cottage)
;    (has npc fish)   
    (item-at pole cottage)
    (haslake fishingpond)
    (fish-at fish fishingpond)             
    (monster-at troll drawbridge) 
    (hungry troll)             
  )

   (:goal (and (not (hungry troll))))
)
  
