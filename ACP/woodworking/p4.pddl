(DEFINE (PROBLEM WOOD-LOOP-TEMPO-CONVERTED-4)
 (:DOMAIN WOODWORKING-LOOP-TEMPO-CONVERTED)
 (:OBJECTS BOARD-2 - BOARD
           BOARD-1 - BOARD
           BOARD-0 - BOARD
           WOOD-2 - AWOOD
           WOOD-1 - AWOOD
           WOOD-0 - AWOOD
           COLOR-2 - ACOLOUR
           COLOR-1 - ACOLOUR
           COLOR-0 - ACOLOUR
           SAW-0 - SAW
           SPRAY-VARNISHER-0 - SPRAY-VARNISHER
           HIGHSPEED-SAW-0 - HIGHSPEED-SAW
           PLANER-0 - PLANER
           IMMERSION-VARNISHER-0 - IMMERSION-VARNISHER
           GLAZER-0 - GLAZER
           GRINDER-0 - GRINDER
           BASE0-6018 - PART
           BASE1-6017 - PART
           BASE2-6016 - PART
           BASE3-6015 - PART)

 (:INIT
  (AVAILABLE BOARD-2)
  (SURFACE-CONDITION BOARD-2 ROUGH)
  (WOOD BOARD-2 WOOD-2)
  (AVAILABLE BOARD-1)
  (SURFACE-CONDITION BOARD-1 ROUGH)
  (WOOD BOARD-1 WOOD-1)
  (AVAILABLE BOARD-0)
  (SURFACE-CONDITION BOARD-0 ROUGH)
  (WOOD BOARD-0 WOOD-0)
  (EMPTY HIGHSPEED-SAW-0)
  (HAS-COLOUR GLAZER-0 COLOR-2)
  (HAS-COLOUR SPRAY-VARNISHER-0 COLOR-1)
  (HAS-COLOUR IMMERSION-VARNISHER-0 COLOR-0)
  (IDLE SAW-0)
  (IDLE SPRAY-VARNISHER-0)
  (IDLE HIGHSPEED-SAW-0)
  (IDLE PLANER-0)
  (IDLE IMMERSION-VARNISHER-0)
  (IDLE GLAZER-0)
  (IDLE GRINDER-0)
  (= (TOTAL-COST) 0)
  (IS-SMOOTH VERYSMOOTH)
  (IS-SMOOTH SMOOTH)
  (GRIND-TREATMENT-CHANGE COLOURFRAGMENTS UNTREATED)
  (GRIND-TREATMENT-CHANGE UNTREATED UNTREATED)
  (GRIND-TREATMENT-CHANGE GLAZED UNTREATED)
  (GRIND-TREATMENT-CHANGE VARNISHED COLOURFRAGMENTS)
  (= (PLANE-COST BASE0-6018) 10)
  (= (PLANE-COST BASE1-6017) 10)
  (= (PLANE-COST BASE2-6016) 10)
  (= (PLANE-COST BASE3-6015) 10)
  (= (GRIND-COST BASE0-6018) 15)
  (= (GRIND-COST BASE1-6017) 15)
  (= (GRIND-COST BASE2-6016) 15)
  (= (GRIND-COST BASE3-6015) 15)
  (= (GLAZE-COST BASE0-6018) 10)
  (= (GLAZE-COST BASE1-6017) 10)
  (= (GLAZE-COST BASE2-6016) 10)
  (= (GLAZE-COST BASE3-6015) 10)
  (= (SPRAY-VARNISH-COST BASE0-6018) 5)
  (= (SPRAY-VARNISH-COST BASE1-6017) 5)
  (= (SPRAY-VARNISH-COST BASE2-6016) 5)
  (= (SPRAY-VARNISH-COST BASE3-6015) 5)
  (GOALSIZE BASE0-6018 SMALL)
  (GOALSIZE BASE1-6017 SMALL)
  (GOALSIZE BASE2-6016 SMALL)
  (GOALSIZE BASE3-6015 SMALL)
  (TREATMENT BASE0-6018 VARNISHED)
  (TREATMENT BASE1-6017 VARNISHED)
  (TREATMENT BASE2-6016 VARNISHED)
  (TREATMENT BASE3-6015 VARNISHED)
  (SURFACE-CONDITION BASE0-6018 ROUGH)
  (SURFACE-CONDITION BASE1-6017 ROUGH)
  (SURFACE-CONDITION BASE2-6016 ROUGH)
  (SURFACE-CONDITION BASE3-6015 ROUGH)
  (WOOD BASE0-6018 WOOD-0)
  (WOOD BASE1-6017 WOOD-0)
  (WOOD BASE2-6016 WOOD-0)
  (WOOD BASE3-6015 WOOD-0)
  (COLOUR BASE0-6018 COLOR-1)
  (COLOUR BASE1-6017 COLOR-1)
  (COLOUR BASE2-6016 COLOR-1)
  (COLOUR BASE3-6015 COLOR-1)
  (AVAILABLE BASE0-6018)
  (AVAILABLE BASE1-6017)
  (AVAILABLE BASE2-6016)
  (AVAILABLE BASE3-6015))
 (:GOAL
  (AND (SURFACE-CONDITION BASE0-6018 VERYSMOOTH)
       (SURFACE-CONDITION BASE1-6017 VERYSMOOTH)
       (SURFACE-CONDITION BASE2-6016 VERYSMOOTH)
       (SURFACE-CONDITION BASE3-6015 VERYSMOOTH)
       (AVAILABLE BASE0-6018)
       (AVAILABLE BASE1-6017)
       (AVAILABLE BASE2-6016)
       (AVAILABLE BASE3-6015)
       (COLOUR BASE0-6018 COLOR-0)
       (COLOUR BASE1-6017 COLOR-0)
       (COLOUR BASE2-6016 COLOR-0)
       (COLOUR BASE3-6015 COLOR-0)))
 (:METRIC MINIMIZE (TOTAL-COST)))