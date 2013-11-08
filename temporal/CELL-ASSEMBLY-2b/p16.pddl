(DEFINE (PROBLEM CELL-ASSEMBLY-MODEL2B-16)
    (:DOMAIN CELL-ASSEMBLY)
  (:OBJECTS SCREW-C - MACHINE-JOB
            ATTATCH-C - JOB
            ATTATCH-B - JOB
            SCREW-A - MACHINE-JOB
            ATTATCH-A - JOB
            SCREW-MACHINE-C - MACHINE
            SCREW-MACHINE-A - MACHINE
            TABLE1 - TABLE
            TRAY-C - TRAY
            TRAY-B - TRAY
            TRAY-A - TRAY
            PART-C - COMPONENT
            PART-B - COMPONENT
            PART-A - COMPONENT
            ARM - ARM
            BASE0-1595 - BASE
            BASE1-1594 - BASE
            BASE2-1593 - BASE
            BASE3-1592 - BASE
            BASE4-1591 - BASE
            BASE5-1590 - BASE
            BASE6-1589 - BASE
            BASE7-1588 - BASE
            BASE8-1587 - BASE
            BASE9-1586 - BASE
            BASE10-1585 - BASE
            BASE11-1584 - BASE
            BASE12-1583 - BASE
            BASE13-1582 - BASE
            BASE14-1581 - BASE
            BASE15-1580 - BASE)

  (:INIT
   (NOT-ARM-PRESENT TRAY-A)
   (NOT-ARM-PRESENT TRAY-B)
   (NOT-ARM-PRESENT TRAY-C)
   (NOT-ARM-PRESENT table1)
   (NOT-ARM-PRESENT SCREW-MACHINE-A)
   (NOT-ARM-PRESENT SCREW-MACHINE-C)
   ;;(NOT-ARM-PRESENT TABLE-IN)
   (NOT-ARM-PRESENT TABLE-OUT)
   
   (NOT-BASE-PRESENT TRAY-A)
   (NOT-BASE-PRESENT TRAY-B)
   (NOT-BASE-PRESENT TRAY-C)
   (NOT-BASE-PRESENT table1)
   (NOT-BASE-PRESENT SCREW-MACHINE-A)
   (NOT-BASE-PRESENT SCREW-MACHINE-C)
   (NOT-BASE-PRESENT TABLE-IN)
   (NOT-BASE-PRESENT TABLE-OUT)
   ;; (ARM-PRESENT TABLE-IN)       
   (AT ARM TABLE-IN)
   (FREE ARM)
   (= (JOB-COST NOTHING-DONE) 0)
   (JOB-AVAILABLE-AT ATTATCH-A TABLE-IN)
   (DEPENDS NOTHING-DONE ATTATCH-A)
   (= (JOB-COST ATTATCH-A) 3)
   (USES ATTATCH-A PART-A)
   (AT PART-A TRAY-A)
   (JOB-AVAILABLE-AT SCREW-A SCREW-MACHINE-A)
   (DEPENDS ATTATCH-A SCREW-A)
   (= (JOB-COST SCREW-A) 3)
   (JOB-AVAILABLE-AT ATTATCH-B TABLE1)
   (DEPENDS SCREW-A ATTATCH-B)
   (= (JOB-COST ATTATCH-B) 3)
   (USES ATTATCH-B PART-B)
   (AT PART-B TRAY-B)
   (JOB-AVAILABLE-AT ATTATCH-C TABLE1)
   (DEPENDS ATTATCH-B ATTATCH-C)
   (= (JOB-COST ATTATCH-C) 2)
   (USES ATTATCH-C PART-C)
   (AT PART-C TRAY-C)
   (JOB-AVAILABLE-AT SCREW-C SCREW-MACHINE-C)
   (DEPENDS ATTATCH-C SCREW-C)
   (= (JOB-COST SCREW-C) 3)
   (CONNECTED TABLE-OUT CARRY-OUT)
   (CONNECTED CARRY-IN TABLE-IN)
   (= (MOVE-COST TABLE-IN TABLE-IN) 1000)
   (= (MOVE-COST TABLE-IN TABLE-OUT) 2)
   (= (MOVE-COST TABLE-IN SCREW-MACHINE-C) 3)
   (= (MOVE-COST TABLE-IN TRAY-C) 4)
   (= (MOVE-COST TABLE-IN TRAY-B) 5)
   (= (MOVE-COST TABLE-IN TRAY-A) 4)
   (= (MOVE-COST TABLE-IN SCREW-MACHINE-A) 3)
   (= (MOVE-COST TABLE-IN TABLE1) 2)
   (= (MOVE-COST TABLE-OUT TABLE-IN) 2)
   (= (MOVE-COST TABLE-OUT TABLE-OUT) 1000)
   (= (MOVE-COST TABLE-OUT SCREW-MACHINE-C) 2)
   (= (MOVE-COST TABLE-OUT TRAY-C) 3)
   (= (MOVE-COST TABLE-OUT TRAY-B) 4)
   (= (MOVE-COST TABLE-OUT TRAY-A) 5)
   (= (MOVE-COST TABLE-OUT SCREW-MACHINE-A) 4)
   (= (MOVE-COST TABLE-OUT TABLE1) 3)
   (= (MOVE-COST SCREW-MACHINE-C TABLE-IN) 3)
   (= (MOVE-COST SCREW-MACHINE-C TABLE-OUT) 2)
   (= (MOVE-COST SCREW-MACHINE-C SCREW-MACHINE-C) 1000)
   (= (MOVE-COST SCREW-MACHINE-C TRAY-C) 2)
   (= (MOVE-COST SCREW-MACHINE-C TRAY-B) 3)
   (= (MOVE-COST SCREW-MACHINE-C TRAY-A) 4)
   (= (MOVE-COST SCREW-MACHINE-C SCREW-MACHINE-A) 5)
   (= (MOVE-COST SCREW-MACHINE-C TABLE1) 4)
   (= (MOVE-COST TRAY-C TABLE-IN) 4)
   (= (MOVE-COST TRAY-C TABLE-OUT) 3)
   (= (MOVE-COST TRAY-C SCREW-MACHINE-C) 2)
   (= (MOVE-COST TRAY-C TRAY-C) 1000)
   (= (MOVE-COST TRAY-C TRAY-B) 2)
   (= (MOVE-COST TRAY-C TRAY-A) 3)
   (= (MOVE-COST TRAY-C SCREW-MACHINE-A) 4)
   (= (MOVE-COST TRAY-C TABLE1) 5)
   (= (MOVE-COST TRAY-B TABLE-IN) 5)
   (= (MOVE-COST TRAY-B TABLE-OUT) 4)
   (= (MOVE-COST TRAY-B SCREW-MACHINE-C) 3)
   (= (MOVE-COST TRAY-B TRAY-C) 2)
   (= (MOVE-COST TRAY-B TRAY-B) 1000)
   (= (MOVE-COST TRAY-B TRAY-A) 2)
   (= (MOVE-COST TRAY-B SCREW-MACHINE-A) 3)
   (= (MOVE-COST TRAY-B TABLE1) 4)
   (= (MOVE-COST TRAY-A TABLE-IN) 4)
   (= (MOVE-COST TRAY-A TABLE-OUT) 5)
   (= (MOVE-COST TRAY-A SCREW-MACHINE-C) 4)
   (= (MOVE-COST TRAY-A TRAY-C) 3)
   (= (MOVE-COST TRAY-A TRAY-B) 2)
   (= (MOVE-COST TRAY-A TRAY-A) 1000)
   (= (MOVE-COST TRAY-A SCREW-MACHINE-A) 2)
   (= (MOVE-COST TRAY-A TABLE1) 3)
   (= (MOVE-COST SCREW-MACHINE-A TABLE-IN) 3)
   (= (MOVE-COST SCREW-MACHINE-A TABLE-OUT) 4)
   (= (MOVE-COST SCREW-MACHINE-A SCREW-MACHINE-C) 5)
   (= (MOVE-COST SCREW-MACHINE-A TRAY-C) 4)
   (= (MOVE-COST SCREW-MACHINE-A TRAY-B) 3)
   (= (MOVE-COST SCREW-MACHINE-A TRAY-A) 2)
   (= (MOVE-COST SCREW-MACHINE-A SCREW-MACHINE-A) 1000)
   (= (MOVE-COST SCREW-MACHINE-A TABLE1) 2)
   (= (MOVE-COST TABLE1 TABLE-IN) 2)
   (= (MOVE-COST TABLE1 TABLE-OUT) 3)
   (= (MOVE-COST TABLE1 SCREW-MACHINE-C) 4)
   (= (MOVE-COST TABLE1 TRAY-C) 5)
   (= (MOVE-COST TABLE1 TRAY-B) 4)
   (= (MOVE-COST TABLE1 TRAY-A) 3)
   (= (MOVE-COST TABLE1 SCREW-MACHINE-A) 2)
   (= (MOVE-COST TABLE1 TABLE1) 1000)
   (REACHABLE ARM TRAY-C)
   (REACHABLE ARM TRAY-B)
   (REACHABLE ARM TRAY-A)
   (REACHABLE ARM TABLE1)
   (REACHABLE ARM TABLE-OUT)
   (REACHABLE ARM TABLE-IN)
   (REACHABLE ARM SCREW-MACHINE-A)
   (REACHABLE ARM SCREW-MACHINE-C)
   (= (LOADING-COST) 1)
   ;; (= (TOTAL-TIME) 0)
   (FINISHED NOTHING-DONE BASE0-1595)
   (FINISHED NOTHING-DONE BASE1-1594)
   (FINISHED NOTHING-DONE BASE2-1593)
   (FINISHED NOTHING-DONE BASE3-1592)
   (FINISHED NOTHING-DONE BASE4-1591)
   (FINISHED NOTHING-DONE BASE5-1590)
   (FINISHED NOTHING-DONE BASE6-1589)
   (FINISHED NOTHING-DONE BASE7-1588)
   (FINISHED NOTHING-DONE BASE8-1587)
   (FINISHED NOTHING-DONE BASE9-1586)
   (FINISHED NOTHING-DONE BASE10-1585)
   (FINISHED NOTHING-DONE BASE11-1584)
   (FINISHED NOTHING-DONE BASE12-1583)
   (FINISHED NOTHING-DONE BASE13-1582)
   (FINISHED NOTHING-DONE BASE14-1581)
   (FINISHED NOTHING-DONE BASE15-1580)
   (AT BASE0-1595 CARRY-IN)
   (AT BASE1-1594 CARRY-IN)
   (AT BASE2-1593 CARRY-IN)
   (AT BASE3-1592 CARRY-IN)
   (AT BASE4-1591 CARRY-IN)
   (AT BASE5-1590 CARRY-IN)
   (AT BASE6-1589 CARRY-IN)
   (AT BASE7-1588 CARRY-IN)
   (AT BASE8-1587 CARRY-IN)
   (AT BASE9-1586 CARRY-IN)
   (AT BASE10-1585 CARRY-IN)
   (AT BASE11-1584 CARRY-IN)
   (AT BASE12-1583 CARRY-IN)
   (AT BASE13-1582 CARRY-IN)
   (AT BASE14-1581 CARRY-IN)
   (AT BASE15-1580 CARRY-IN))
  (:GOAL
   (AND (FINISHED SCREW-C BASE0-1595)
        (FINISHED SCREW-C BASE1-1594)
        (FINISHED SCREW-C BASE2-1593)
        (FINISHED SCREW-C BASE3-1592)
        (FINISHED SCREW-C BASE4-1591)
        (FINISHED SCREW-C BASE5-1590)
        (FINISHED SCREW-C BASE6-1589)
        (FINISHED SCREW-C BASE7-1588)
        (FINISHED SCREW-C BASE8-1587)
        (FINISHED SCREW-C BASE9-1586)
        (FINISHED SCREW-C BASE10-1585)
        (FINISHED SCREW-C BASE11-1584)
        (FINISHED SCREW-C BASE12-1583)
        (FINISHED SCREW-C BASE13-1582)
        (FINISHED SCREW-C BASE14-1581)
        (FINISHED SCREW-C BASE15-1580)
        (AT BASE0-1595 CARRY-OUT)
        (AT BASE1-1594 CARRY-OUT)
        (AT BASE2-1593 CARRY-OUT)
        (AT BASE3-1592 CARRY-OUT)
        (AT BASE4-1591 CARRY-OUT)
        (AT BASE5-1590 CARRY-OUT)
        (AT BASE6-1589 CARRY-OUT)
        (AT BASE7-1588 CARRY-OUT)
        (AT BASE8-1587 CARRY-OUT)
        (AT BASE9-1586 CARRY-OUT)
        (AT BASE10-1585 CARRY-OUT)
        (AT BASE11-1584 CARRY-OUT)
        (AT BASE12-1583 CARRY-OUT)
        (AT BASE13-1582 CARRY-OUT)
        (AT BASE14-1581 CARRY-OUT)
        (AT BASE15-1580 CARRY-OUT)))
  (:METRIC MINIMIZE (TOTAL-TIME)))