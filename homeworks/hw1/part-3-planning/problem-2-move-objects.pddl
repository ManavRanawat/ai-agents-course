
(define (problem navigate-to-location)
   (:domain action-castle)

   (:objects
      npc - player ghost
      cottage gardenpath fishingpond windingpath talltree drawbridge courtyard towerstairs tower dungeonstairs dungeon greatfeastinghall throneroom - location
      in out north south east west up down - direction
      crown rose fishingpole branch candle rosebush pond throne door - item
   )

   (:init
      (connected cottage out gardenpath)
      (connected gardenpath in cottage)
      (connected gardenpath south fishingpond)
      (connected fishingpond north gardenpath)
      (connected gardenpath north windingpath)
      (connected windingpath south gardenpath)
      (connected windingpath up talltree)
      (connected talltree down windingpath)
      (connected windingpath east drawbridge)
      (connected drawbridge west windingpath)
      (connected drawbridge east courtyard)
      (connected courtyard west drawbridge)
      (connected courtyard up towerstairs)
      (connected towerstairs down courtyard)
      (connected towerstairs up tower)
      (connected tower down towerstairs)
      (connected courtyard down dungeonstairs)
      (connected dungeonstairs up courtyard)
      (connected dungeonstairs down dungeon)
      (connected dungeon up dungeonstairs)
      (connected courtyard east greatfeastinghall)
      (connected greatfeastinghall west courtyard)
      (connected greatfeastinghall east throneroom)
      (connected throneroom west greatfeastinghall)


      (at npc cottage)
      (item-at crown cottage)


   )

   (:goal
      (and (item-at crown throneroom))
   )

)
