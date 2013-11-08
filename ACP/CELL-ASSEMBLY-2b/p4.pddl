(DEFINE (PROBLEM CELL-ASSEMBLY-MODEL2B-4)
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
           BASE0-6053 - BASE
           BASE1-6052 - BASE
           BASE2-6051 - BASE
           BASE3-6050 - BASE)

 (:INIT
  (ARM-PRESENT TABLE-IN)
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
  (= (TOTAL-COST) 0)
  (FINISHED NOTHING-DONE BASE0-6053)
  (FINISHED NOTHING-DONE BASE1-6052)
  (FINISHED NOTHING-DONE BASE2-6051)
  (FINISHED NOTHING-DONE BASE3-6050)
  (AT BASE0-6053 CARRY-IN)
  (AT BASE1-6052 CARRY-IN)
  (AT BASE2-6051 CARRY-IN)
  (AT BASE3-6050 CARRY-IN))
 (:GOAL
  (AND (FINISHED SCREW-C BASE0-6053)
       (FINISHED SCREW-C BASE1-6052)
       (FINISHED SCREW-C BASE2-6051)
       (FINISHED SCREW-C BASE3-6050)
       (AT BASE0-6053 CARRY-OUT)
       (AT BASE1-6052 CARRY-OUT)
       (AT BASE2-6051 CARRY-OUT)
       (AT BASE3-6050 CARRY-OUT)))
 (:METRIC MINIMIZE (TOTAL-COST)))