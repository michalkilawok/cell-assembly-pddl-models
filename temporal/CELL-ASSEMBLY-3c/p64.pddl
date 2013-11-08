(DEFINE (PROBLEM CELL-ASSEMBLY-MODEL3C-64)
 (:DOMAIN CELL-ASSEMBLY)
 (:OBJECTS MJ5 - MACHINE-JOB
           MJ4 - MACHINE-JOB
           MJ3 - MACHINE-JOB
           MJ2 - MACHINE-JOB
           MJ1 - MACHINE-JOB
           J6 - JOB
           J5 - JOB
           J4 - JOB
           J3 - JOB
           J2 - JOB
           J1 - JOB
           M5 - MACHINE
           M4 - MACHINE
           M3 - MACHINE
           M2 - MACHINE
           M1 - MACHINE
           TB45 - TABLE
           TB35 - TABLE
           TB24 - TABLE
           TB23 - TABLE
           TB12 - TABLE
           TB-FOR-56 - TABLE
           TB-FOR-1 - TABLE
           TB-FOR-234 - TABLE
           T6 - TRAY
           T5 - TRAY
           T4 - TRAY
           T3 - TRAY
           T2 - TRAY
           T1 - TRAY
           P6 - COMPONENT
           P5 - COMPONENT
           P4 - COMPONENT
           P3 - COMPONENT
           P2 - COMPONENT
           P1 - COMPONENT
           A5 - ARM
           A4 - ARM
           A3 - ARM
           A2 - ARM
           A1 - ARM
           BASE0-9824 - BASE
           BASE1-9823 - BASE
           BASE2-9822 - BASE
           BASE3-9821 - BASE
           BASE4-9820 - BASE
           BASE5-9819 - BASE
           BASE6-9818 - BASE
           BASE7-9817 - BASE
           BASE8-9816 - BASE
           BASE9-9815 - BASE
           BASE10-9814 - BASE
           BASE11-9813 - BASE
           BASE12-9812 - BASE
           BASE13-9811 - BASE
           BASE14-9810 - BASE
           BASE15-9809 - BASE
           BASE16-9808 - BASE
           BASE17-9807 - BASE
           BASE18-9806 - BASE
           BASE19-9805 - BASE
           BASE20-9804 - BASE
           BASE21-9803 - BASE
           BASE22-9802 - BASE
           BASE23-9801 - BASE
           BASE24-9800 - BASE
           BASE25-9799 - BASE
           BASE26-9798 - BASE
           BASE27-9797 - BASE
           BASE28-9796 - BASE
           BASE29-9795 - BASE
           BASE30-9794 - BASE
           BASE31-9793 - BASE
           BASE32-9792 - BASE
           BASE33-9791 - BASE
           BASE34-9790 - BASE
           BASE35-9789 - BASE
           BASE36-9788 - BASE
           BASE37-9787 - BASE
           BASE38-9786 - BASE
           BASE39-9785 - BASE
           BASE40-9784 - BASE
           BASE41-9783 - BASE
           BASE42-9782 - BASE
           BASE43-9781 - BASE
           BASE44-9780 - BASE
           BASE45-9779 - BASE
           BASE46-9778 - BASE
           BASE47-9777 - BASE
           BASE48-9776 - BASE
           BASE49-9775 - BASE
           BASE50-9774 - BASE
           BASE51-9773 - BASE
           BASE52-9772 - BASE
           BASE53-9771 - BASE
           BASE54-9770 - BASE
           BASE55-9769 - BASE
           BASE56-9768 - BASE
           BASE57-9767 - BASE
           BASE58-9766 - BASE
           BASE59-9765 - BASE
           BASE60-9764 - BASE
           BASE61-9763 - BASE
           BASE62-9762 - BASE
           BASE63-9761 - BASE)

 (:INIT

  (NOT-ARM-PRESENT m1)
  (NOT-ARM-PRESENT m2)
  (NOT-ARM-PRESENT m3)
  (NOT-ARM-PRESENT m4)
  (NOT-ARM-PRESENT m5)
  (NOT-ARM-PRESENT tb12)
  ;; (NOT-ARM-PRESENT tb23)
  ;; (NOT-ARM-PRESENT tb24)
  ;; (NOT-ARM-PRESENT tb45)
  ;; (NOT-ARM-PRESENT tb35)
  (NOT-ARM-PRESENT t1)
  (NOT-ARM-PRESENT t2)
  (NOT-ARM-PRESENT t3)
  (NOT-ARM-PRESENT t4)
  (NOT-ARM-PRESENT t5)
  (NOT-ARM-PRESENT t6)
  (NOT-ARM-PRESENT tb-for-234)
  (NOT-ARM-PRESENT tb-for-1)
  (NOT-ARM-PRESENT tb-for-56)
  ;; (NOT-ARM-PRESENT TABLE-IN)
  (NOT-ARM-PRESENT TABLE-OUT)

  (NOT-BASE-PRESENT m1)
  (NOT-BASE-PRESENT m2)
  (NOT-BASE-PRESENT m3)
  (NOT-BASE-PRESENT m4)
  (NOT-BASE-PRESENT m5)
  (NOT-BASE-PRESENT tb12)
  (NOT-BASE-PRESENT tb23)
  (NOT-BASE-PRESENT tb24)
  (NOT-BASE-PRESENT tb45)
  (NOT-BASE-PRESENT tb35)
  (NOT-BASE-PRESENT t1)
  (NOT-BASE-PRESENT t2)
  (NOT-BASE-PRESENT t3)
  (NOT-BASE-PRESENT t4)
  (NOT-BASE-PRESENT t5)
  (NOT-BASE-PRESENT t6)
  (NOT-BASE-PRESENT tb-for-234)
  (NOT-BASE-PRESENT tb-for-1)
  (NOT-BASE-PRESENT tb-for-56)
  (NOT-BASE-PRESENT TABLE-IN)
  (NOT-BASE-PRESENT TABLE-OUT)

  ;; (ARM-PRESENT TB45)
  (AT A5 TB45)
  (FREE A5)
  ;; (ARM-PRESENT TB24)
  (AT A4 TB24)
  (FREE A4)
  ;; (ARM-PRESENT TB23)
  (AT A3 TB23)
  (FREE A3)
  ;; (ARM-PRESENT TB12)
  (AT A2 TB12)
  (FREE A2)
  ;; (ARM-PRESENT TABLE-IN)   
  (AT A1 TABLE-IN)
  (FREE A1)
  (= (JOB-COST NOTHING-DONE) 0)
  (JOB-AVAILABLE-AT MJ1 M1)
  (DEPENDS NOTHING-DONE MJ1)
  (= (JOB-COST MJ1) 3)
  (JOB-AVAILABLE-AT MJ2 M2)
  (DEPENDS MJ1 MJ2)
  (= (JOB-COST MJ2) 3)
  (JOB-AVAILABLE-AT J1 TB-FOR-1)
  (DEPENDS MJ2 J1)
  (= (JOB-COST J1) 3)
  (USES J1 P1)
  (AT P1 T1)
  (JOB-AVAILABLE-AT J2 TB-FOR-234)
  (DEPENDS J1 J2)
  (= (JOB-COST J2) 2)
  (USES J2 P2)
  (AT P2 T2)
  (JOB-AVAILABLE-AT J3 TB-FOR-234)
  (DEPENDS J2 J3)
  (= (JOB-COST J3) 3)
  (USES J3 P3)
  (AT P3 T3)
  (JOB-AVAILABLE-AT MJ3 M3)
  (DEPENDS J3 MJ3)
  (= (JOB-COST MJ3) 3)
  (JOB-AVAILABLE-AT J4 TB-FOR-234)
  (DEPENDS MJ3 J4)
  (= (JOB-COST J4) 2)
  (USES J4 P4)
  (AT P4 T4)
  (JOB-AVAILABLE-AT MJ4 M4)
  (DEPENDS J4 MJ4)
  (= (JOB-COST MJ4) 3)
  (JOB-AVAILABLE-AT J5 TB-FOR-56)
  (DEPENDS MJ4 J5)
  (= (JOB-COST J5) 3)
  (USES J5 P5)
  (AT P5 T5)
  (JOB-AVAILABLE-AT J6 TB-FOR-56)
  (DEPENDS J5 J6)
  (= (JOB-COST J6) 3)
  (USES J6 P6)
  (AT P6 T6)
  (JOB-AVAILABLE-AT MJ5 M5)
  (DEPENDS J6 MJ5)
  (= (JOB-COST MJ5) 2)
  (CONNECTED TABLE-OUT CARRY-OUT)
  (CONNECTED CARRY-IN TABLE-IN)
  (= (MOVE-COST TABLE-IN TABLE-IN) 1000)
  (= (MOVE-COST TABLE-IN M2) 2)
  (= (MOVE-COST TABLE-IN TB12) 3)
  (= (MOVE-COST TABLE-IN M4) 4)
  (= (MOVE-COST TABLE-IN TB24) 4)
  (= (MOVE-COST TABLE-IN T1) 5)
  (= (MOVE-COST TABLE-IN T5) 6)
  (= (MOVE-COST TABLE-IN T6) 7)
  (= (MOVE-COST TABLE-IN TB-FOR-1) 7)
  (= (MOVE-COST TABLE-IN TB-FOR-56) 6)
  (= (MOVE-COST TABLE-IN TB45) 5)
  (= (MOVE-COST TABLE-IN TB23) 4)
  (= (MOVE-COST TABLE-IN TB35) 6)
  (= (MOVE-COST TABLE-IN M5) 6)
  (= (MOVE-COST TABLE-IN TABLE-OUT) 7)
  (= (MOVE-COST TABLE-IN M3) 7)
  (= (MOVE-COST TABLE-IN T3) 5)
  (= (MOVE-COST TABLE-IN T2) 6)
  (= (MOVE-COST TABLE-IN TB-FOR-234) 6)
  (= (MOVE-COST TABLE-IN T4) 5)
  (= (MOVE-COST TABLE-IN M1) 2)
  (= (MOVE-COST M2 TABLE-IN) 2)
  (= (MOVE-COST M2 M2) 1000)
  (= (MOVE-COST M2 TB12) 3)
  (= (MOVE-COST M2 M4) 4)
  (= (MOVE-COST M2 TB24) 4)
  (= (MOVE-COST M2 T1) 5)
  (= (MOVE-COST M2 T5) 6)
  (= (MOVE-COST M2 T6) 7)
  (= (MOVE-COST M2 TB-FOR-1) 7)
  (= (MOVE-COST M2 TB-FOR-56) 6)
  (= (MOVE-COST M2 TB45) 5)
  (= (MOVE-COST M2 TB23) 4)
  (= (MOVE-COST M2 TB35) 6)
  (= (MOVE-COST M2 M5) 6)
  (= (MOVE-COST M2 TABLE-OUT) 7)
  (= (MOVE-COST M2 M3) 7)
  (= (MOVE-COST M2 T3) 5)
  (= (MOVE-COST M2 T2) 6)
  (= (MOVE-COST M2 TB-FOR-234) 6)
  (= (MOVE-COST M2 T4) 5)
  (= (MOVE-COST M2 M1) 2)
  (= (MOVE-COST TB12 TABLE-IN) 3)
  (= (MOVE-COST TB12 M2) 3)
  (= (MOVE-COST TB12 TB12) 1000)
  (= (MOVE-COST TB12 M4) 2)
  (= (MOVE-COST TB12 TB24) 2)
  (= (MOVE-COST TB12 T1) 3)
  (= (MOVE-COST TB12 T5) 4)
  (= (MOVE-COST TB12 T6) 5)
  (= (MOVE-COST TB12 TB-FOR-1) 5)
  (= (MOVE-COST TB12 TB-FOR-56) 4)
  (= (MOVE-COST TB12 TB45) 3)
  (= (MOVE-COST TB12 TB23) 2)
  (= (MOVE-COST TB12 TB35) 4)
  (= (MOVE-COST TB12 M5) 4)
  (= (MOVE-COST TB12 TABLE-OUT) 5)
  (= (MOVE-COST TB12 M3) 5)
  (= (MOVE-COST TB12 T3) 3)
  (= (MOVE-COST TB12 T2) 4)
  (= (MOVE-COST TB12 TB-FOR-234) 4)
  (= (MOVE-COST TB12 T4) 3)
  (= (MOVE-COST TB12 M1) 2)
  (= (MOVE-COST M4 TABLE-IN) 4)
  (= (MOVE-COST M4 M2) 4)
  (= (MOVE-COST M4 TB12) 2)
  (= (MOVE-COST M4 M4) 1000)
  (= (MOVE-COST M4 TB24) 3)
  (= (MOVE-COST M4 T1) 4)
  (= (MOVE-COST M4 T5) 5)
  (= (MOVE-COST M4 T6) 6)
  (= (MOVE-COST M4 TB-FOR-1) 6)
  (= (MOVE-COST M4 TB-FOR-56) 5)
  (= (MOVE-COST M4 TB45) 4)
  (= (MOVE-COST M4 TB23) 3)
  (= (MOVE-COST M4 TB35) 5)
  (= (MOVE-COST M4 M5) 5)
  (= (MOVE-COST M4 TABLE-OUT) 6)
  (= (MOVE-COST M4 M3) 6)
  (= (MOVE-COST M4 T3) 4)
  (= (MOVE-COST M4 T2) 5)
  (= (MOVE-COST M4 TB-FOR-234) 5)
  (= (MOVE-COST M4 T4) 4)
  (= (MOVE-COST M4 M1) 3)
  (= (MOVE-COST TB24 TABLE-IN) 4)
  (= (MOVE-COST TB24 M2) 4)
  (= (MOVE-COST TB24 TB12) 2)
  (= (MOVE-COST TB24 M4) 3)
  (= (MOVE-COST TB24 TB24) 1000)
  (= (MOVE-COST TB24 T1) 2)
  (= (MOVE-COST TB24 T5) 3)
  (= (MOVE-COST TB24 T6) 4)
  (= (MOVE-COST TB24 TB-FOR-1) 4)
  (= (MOVE-COST TB24 TB-FOR-56) 3)
  (= (MOVE-COST TB24 TB45) 2)
  (= (MOVE-COST TB24 TB23) 3)
  (= (MOVE-COST TB24 TB35) 3)
  (= (MOVE-COST TB24 M5) 3)
  (= (MOVE-COST TB24 TABLE-OUT) 4)
  (= (MOVE-COST TB24 M3) 4)
  (= (MOVE-COST TB24 T3) 4)
  (= (MOVE-COST TB24 T2) 5)
  (= (MOVE-COST TB24 TB-FOR-234) 5)
  (= (MOVE-COST TB24 T4) 4)
  (= (MOVE-COST TB24 M1) 3)
  (= (MOVE-COST T1 TABLE-IN) 5)
  (= (MOVE-COST T1 M2) 5)
  (= (MOVE-COST T1 TB12) 3)
  (= (MOVE-COST T1 M4) 4)
  (= (MOVE-COST T1 TB24) 2)
  (= (MOVE-COST T1 T1) 1000)
  (= (MOVE-COST T1 T5) 2)
  (= (MOVE-COST T1 T6) 3)
  (= (MOVE-COST T1 TB-FOR-1) 4)
  (= (MOVE-COST T1 TB-FOR-56) 4)
  (= (MOVE-COST T1 TB45) 3)
  (= (MOVE-COST T1 TB23) 4)
  (= (MOVE-COST T1 TB35) 4)
  (= (MOVE-COST T1 M5) 4)
  (= (MOVE-COST T1 TABLE-OUT) 5)
  (= (MOVE-COST T1 M3) 5)
  (= (MOVE-COST T1 T3) 5)
  (= (MOVE-COST T1 T2) 6)
  (= (MOVE-COST T1 TB-FOR-234) 6)
  (= (MOVE-COST T1 T4) 5)
  (= (MOVE-COST T1 M1) 4)
  (= (MOVE-COST T5 TABLE-IN) 6)
  (= (MOVE-COST T5 M2) 6)
  (= (MOVE-COST T5 TB12) 4)
  (= (MOVE-COST T5 M4) 5)
  (= (MOVE-COST T5 TB24) 3)
  (= (MOVE-COST T5 T1) 2)
  (= (MOVE-COST T5 T5) 1000)
  (= (MOVE-COST T5 T6) 2)
  (= (MOVE-COST T5 TB-FOR-1) 3)
  (= (MOVE-COST T5 TB-FOR-56) 4)
  (= (MOVE-COST T5 TB45) 4)
  (= (MOVE-COST T5 TB23) 5)
  (= (MOVE-COST T5 TB35) 5)
  (= (MOVE-COST T5 M5) 5)
  (= (MOVE-COST T5 TABLE-OUT) 6)
  (= (MOVE-COST T5 M3) 6)
  (= (MOVE-COST T5 T3) 6)
  (= (MOVE-COST T5 T2) 7)
  (= (MOVE-COST T5 TB-FOR-234) 7)
  (= (MOVE-COST T5 T4) 6)
  (= (MOVE-COST T5 M1) 5)
  (= (MOVE-COST T6 TABLE-IN) 7)
  (= (MOVE-COST T6 M2) 7)
  (= (MOVE-COST T6 TB12) 5)
  (= (MOVE-COST T6 M4) 6)
  (= (MOVE-COST T6 TB24) 4)
  (= (MOVE-COST T6 T1) 3)
  (= (MOVE-COST T6 T5) 2)
  (= (MOVE-COST T6 T6) 1000)
  (= (MOVE-COST T6 TB-FOR-1) 2)
  (= (MOVE-COST T6 TB-FOR-56) 3)
  (= (MOVE-COST T6 TB45) 4)
  (= (MOVE-COST T6 TB23) 6)
  (= (MOVE-COST T6 TB35) 5)
  (= (MOVE-COST T6 M5) 5)
  (= (MOVE-COST T6 TABLE-OUT) 6)
  (= (MOVE-COST T6 M3) 6)
  (= (MOVE-COST T6 T3) 6)
  (= (MOVE-COST T6 T2) 7)
  (= (MOVE-COST T6 TB-FOR-234) 8)
  (= (MOVE-COST T6 T4) 7)
  (= (MOVE-COST T6 M1) 6)
  (= (MOVE-COST TB-FOR-1 TABLE-IN) 7)
  (= (MOVE-COST TB-FOR-1 M2) 7)
  (= (MOVE-COST TB-FOR-1 TB12) 5)
  (= (MOVE-COST TB-FOR-1 M4) 6)
  (= (MOVE-COST TB-FOR-1 TB24) 4)
  (= (MOVE-COST TB-FOR-1 T1) 4)
  (= (MOVE-COST TB-FOR-1 T5) 3)
  (= (MOVE-COST TB-FOR-1 T6) 2)
  (= (MOVE-COST TB-FOR-1 TB-FOR-1) 1000)
  (= (MOVE-COST TB-FOR-1 TB-FOR-56) 2)
  (= (MOVE-COST TB-FOR-1 TB45) 3)
  (= (MOVE-COST TB-FOR-1 TB23) 6)
  (= (MOVE-COST TB-FOR-1 TB35) 4)
  (= (MOVE-COST TB-FOR-1 M5) 4)
  (= (MOVE-COST TB-FOR-1 TABLE-OUT) 5)
  (= (MOVE-COST TB-FOR-1 M3) 5)
  (= (MOVE-COST TB-FOR-1 T3) 5)
  (= (MOVE-COST TB-FOR-1 T2) 6)
  (= (MOVE-COST TB-FOR-1 TB-FOR-234) 7)
  (= (MOVE-COST TB-FOR-1 T4) 7)
  (= (MOVE-COST TB-FOR-1 M1) 6)
  (= (MOVE-COST TB-FOR-56 TABLE-IN) 6)
  (= (MOVE-COST TB-FOR-56 M2) 6)
  (= (MOVE-COST TB-FOR-56 TB12) 4)
  (= (MOVE-COST TB-FOR-56 M4) 5)
  (= (MOVE-COST TB-FOR-56 TB24) 3)
  (= (MOVE-COST TB-FOR-56 T1) 4)
  (= (MOVE-COST TB-FOR-56 T5) 4)
  (= (MOVE-COST TB-FOR-56 T6) 3)
  (= (MOVE-COST TB-FOR-56 TB-FOR-1) 2)
  (= (MOVE-COST TB-FOR-56 TB-FOR-56) 1000)
  (= (MOVE-COST TB-FOR-56 TB45) 2)
  (= (MOVE-COST TB-FOR-56 TB23) 5)
  (= (MOVE-COST TB-FOR-56 TB35) 3)
  (= (MOVE-COST TB-FOR-56 M5) 3)
  (= (MOVE-COST TB-FOR-56 TABLE-OUT) 4)
  (= (MOVE-COST TB-FOR-56 M3) 4)
  (= (MOVE-COST TB-FOR-56 T3) 4)
  (= (MOVE-COST TB-FOR-56 T2) 5)
  (= (MOVE-COST TB-FOR-56 TB-FOR-234) 6)
  (= (MOVE-COST TB-FOR-56 T4) 6)
  (= (MOVE-COST TB-FOR-56 M1) 5)
  (= (MOVE-COST TB45 TABLE-IN) 5)
  (= (MOVE-COST TB45 M2) 5)
  (= (MOVE-COST TB45 TB12) 3)
  (= (MOVE-COST TB45 M4) 4)
  (= (MOVE-COST TB45 TB24) 2)
  (= (MOVE-COST TB45 T1) 3)
  (= (MOVE-COST TB45 T5) 4)
  (= (MOVE-COST TB45 T6) 4)
  (= (MOVE-COST TB45 TB-FOR-1) 3)
  (= (MOVE-COST TB45 TB-FOR-56) 2)
  (= (MOVE-COST TB45 TB45) 1000)
  (= (MOVE-COST TB45 TB23) 4)
  (= (MOVE-COST TB45 TB35) 2)
  (= (MOVE-COST TB45 M5) 2)
  (= (MOVE-COST TB45 TABLE-OUT) 3)
  (= (MOVE-COST TB45 M3) 3)
  (= (MOVE-COST TB45 T3) 3)
  (= (MOVE-COST TB45 T2) 4)
  (= (MOVE-COST TB45 TB-FOR-234) 5)
  (= (MOVE-COST TB45 T4) 5)
  (= (MOVE-COST TB45 M1) 4)
  (= (MOVE-COST TB23 TABLE-IN) 4)
  (= (MOVE-COST TB23 M2) 4)
  (= (MOVE-COST TB23 TB12) 2)
  (= (MOVE-COST TB23 M4) 3)
  (= (MOVE-COST TB23 TB24) 3)
  (= (MOVE-COST TB23 T1) 4)
  (= (MOVE-COST TB23 T5) 5)
  (= (MOVE-COST TB23 T6) 6)
  (= (MOVE-COST TB23 TB-FOR-1) 6)
  (= (MOVE-COST TB23 TB-FOR-56) 5)
  (= (MOVE-COST TB23 TB45) 4)
  (= (MOVE-COST TB23 TB23) 1000)
  (= (MOVE-COST TB23 TB35) 3)
  (= (MOVE-COST TB23 M5) 5)
  (= (MOVE-COST TB23 TABLE-OUT) 5)
  (= (MOVE-COST TB23 M3) 4)
  (= (MOVE-COST TB23 T3) 2)
  (= (MOVE-COST TB23 T2) 3)
  (= (MOVE-COST TB23 TB-FOR-234) 3)
  (= (MOVE-COST TB23 T4) 2)
  (= (MOVE-COST TB23 M1) 3)
  (= (MOVE-COST TB35 TABLE-IN) 6)
  (= (MOVE-COST TB35 M2) 6)
  (= (MOVE-COST TB35 TB12) 4)
  (= (MOVE-COST TB35 M4) 5)
  (= (MOVE-COST TB35 TB24) 3)
  (= (MOVE-COST TB35 T1) 4)
  (= (MOVE-COST TB35 T5) 5)
  (= (MOVE-COST TB35 T6) 5)
  (= (MOVE-COST TB35 TB-FOR-1) 4)
  (= (MOVE-COST TB35 TB-FOR-56) 3)
  (= (MOVE-COST TB35 TB45) 2)
  (= (MOVE-COST TB35 TB23) 3)
  (= (MOVE-COST TB35 TB35) 1000)
  (= (MOVE-COST TB35 M5) 3)
  (= (MOVE-COST TB35 TABLE-OUT) 3)
  (= (MOVE-COST TB35 M3) 2)
  (= (MOVE-COST TB35 T3) 2)
  (= (MOVE-COST TB35 T2) 3)
  (= (MOVE-COST TB35 TB-FOR-234) 4)
  (= (MOVE-COST TB35 T4) 4)
  (= (MOVE-COST TB35 M1) 5)
  (= (MOVE-COST M5 TABLE-IN) 6)
  (= (MOVE-COST M5 M2) 6)
  (= (MOVE-COST M5 TB12) 4)
  (= (MOVE-COST M5 M4) 5)
  (= (MOVE-COST M5 TB24) 3)
  (= (MOVE-COST M5 T1) 4)
  (= (MOVE-COST M5 T5) 5)
  (= (MOVE-COST M5 T6) 5)
  (= (MOVE-COST M5 TB-FOR-1) 4)
  (= (MOVE-COST M5 TB-FOR-56) 3)
  (= (MOVE-COST M5 TB45) 2)
  (= (MOVE-COST M5 TB23) 5)
  (= (MOVE-COST M5 TB35) 3)
  (= (MOVE-COST M5 M5) 1000)
  (= (MOVE-COST M5 TABLE-OUT) 2)
  (= (MOVE-COST M5 M3) 3)
  (= (MOVE-COST M5 T3) 4)
  (= (MOVE-COST M5 T2) 5)
  (= (MOVE-COST M5 TB-FOR-234) 6)
  (= (MOVE-COST M5 T4) 6)
  (= (MOVE-COST M5 M1) 5)
  (= (MOVE-COST TABLE-OUT TABLE-IN) 7)
  (= (MOVE-COST TABLE-OUT M2) 7)
  (= (MOVE-COST TABLE-OUT TB12) 5)
  (= (MOVE-COST TABLE-OUT M4) 6)
  (= (MOVE-COST TABLE-OUT TB24) 4)
  (= (MOVE-COST TABLE-OUT T1) 5)
  (= (MOVE-COST TABLE-OUT T5) 6)
  (= (MOVE-COST TABLE-OUT T6) 6)
  (= (MOVE-COST TABLE-OUT TB-FOR-1) 5)
  (= (MOVE-COST TABLE-OUT TB-FOR-56) 4)
  (= (MOVE-COST TABLE-OUT TB45) 3)
  (= (MOVE-COST TABLE-OUT TB23) 5)
  (= (MOVE-COST TABLE-OUT TB35) 3)
  (= (MOVE-COST TABLE-OUT M5) 2)
  (= (MOVE-COST TABLE-OUT TABLE-OUT) 1000)
  (= (MOVE-COST TABLE-OUT M3) 2)
  (= (MOVE-COST TABLE-OUT T3) 4)
  (= (MOVE-COST TABLE-OUT T2) 5)
  (= (MOVE-COST TABLE-OUT TB-FOR-234) 6)
  (= (MOVE-COST TABLE-OUT T4) 6)
  (= (MOVE-COST TABLE-OUT M1) 6)
  (= (MOVE-COST M3 TABLE-IN) 7)
  (= (MOVE-COST M3 M2) 7)
  (= (MOVE-COST M3 TB12) 5)
  (= (MOVE-COST M3 M4) 6)
  (= (MOVE-COST M3 TB24) 4)
  (= (MOVE-COST M3 T1) 5)
  (= (MOVE-COST M3 T5) 6)
  (= (MOVE-COST M3 T6) 6)
  (= (MOVE-COST M3 TB-FOR-1) 5)
  (= (MOVE-COST M3 TB-FOR-56) 4)
  (= (MOVE-COST M3 TB45) 3)
  (= (MOVE-COST M3 TB23) 4)
  (= (MOVE-COST M3 TB35) 2)
  (= (MOVE-COST M3 M5) 3)
  (= (MOVE-COST M3 TABLE-OUT) 2)
  (= (MOVE-COST M3 M3) 1000)
  (= (MOVE-COST M3 T3) 3)
  (= (MOVE-COST M3 T2) 4)
  (= (MOVE-COST M3 TB-FOR-234) 5)
  (= (MOVE-COST M3 T4) 5)
  (= (MOVE-COST M3 M1) 6)
  (= (MOVE-COST T3 TABLE-IN) 5)
  (= (MOVE-COST T3 M2) 5)
  (= (MOVE-COST T3 TB12) 3)
  (= (MOVE-COST T3 M4) 4)
  (= (MOVE-COST T3 TB24) 4)
  (= (MOVE-COST T3 T1) 5)
  (= (MOVE-COST T3 T5) 6)
  (= (MOVE-COST T3 T6) 6)
  (= (MOVE-COST T3 TB-FOR-1) 5)
  (= (MOVE-COST T3 TB-FOR-56) 4)
  (= (MOVE-COST T3 TB45) 3)
  (= (MOVE-COST T3 TB23) 2)
  (= (MOVE-COST T3 TB35) 2)
  (= (MOVE-COST T3 M5) 4)
  (= (MOVE-COST T3 TABLE-OUT) 4)
  (= (MOVE-COST T3 M3) 3)
  (= (MOVE-COST T3 T3) 1000)
  (= (MOVE-COST T3 T2) 2)
  (= (MOVE-COST T3 TB-FOR-234) 3)
  (= (MOVE-COST T3 T4) 3)
  (= (MOVE-COST T3 M1) 4)
  (= (MOVE-COST T2 TABLE-IN) 6)
  (= (MOVE-COST T2 M2) 6)
  (= (MOVE-COST T2 TB12) 4)
  (= (MOVE-COST T2 M4) 5)
  (= (MOVE-COST T2 TB24) 5)
  (= (MOVE-COST T2 T1) 6)
  (= (MOVE-COST T2 T5) 7)
  (= (MOVE-COST T2 T6) 7)
  (= (MOVE-COST T2 TB-FOR-1) 6)
  (= (MOVE-COST T2 TB-FOR-56) 5)
  (= (MOVE-COST T2 TB45) 4)
  (= (MOVE-COST T2 TB23) 3)
  (= (MOVE-COST T2 TB35) 3)
  (= (MOVE-COST T2 M5) 5)
  (= (MOVE-COST T2 TABLE-OUT) 5)
  (= (MOVE-COST T2 M3) 4)
  (= (MOVE-COST T2 T3) 2)
  (= (MOVE-COST T2 T2) 1000)
  (= (MOVE-COST T2 TB-FOR-234) 2)
  (= (MOVE-COST T2 T4) 3)
  (= (MOVE-COST T2 M1) 5)
  (= (MOVE-COST TB-FOR-234 TABLE-IN) 6)
  (= (MOVE-COST TB-FOR-234 M2) 6)
  (= (MOVE-COST TB-FOR-234 TB12) 4)
  (= (MOVE-COST TB-FOR-234 M4) 5)
  (= (MOVE-COST TB-FOR-234 TB24) 5)
  (= (MOVE-COST TB-FOR-234 T1) 6)
  (= (MOVE-COST TB-FOR-234 T5) 7)
  (= (MOVE-COST TB-FOR-234 T6) 8)
  (= (MOVE-COST TB-FOR-234 TB-FOR-1) 7)
  (= (MOVE-COST TB-FOR-234 TB-FOR-56) 6)
  (= (MOVE-COST TB-FOR-234 TB45) 5)
  (= (MOVE-COST TB-FOR-234 TB23) 3)
  (= (MOVE-COST TB-FOR-234 TB35) 4)
  (= (MOVE-COST TB-FOR-234 M5) 6)
  (= (MOVE-COST TB-FOR-234 TABLE-OUT) 6)
  (= (MOVE-COST TB-FOR-234 M3) 5)
  (= (MOVE-COST TB-FOR-234 T3) 3)
  (= (MOVE-COST TB-FOR-234 T2) 2)
  (= (MOVE-COST TB-FOR-234 TB-FOR-234) 1000)
  (= (MOVE-COST TB-FOR-234 T4) 2)
  (= (MOVE-COST TB-FOR-234 M1) 5)
  (= (MOVE-COST T4 TABLE-IN) 5)
  (= (MOVE-COST T4 M2) 5)
  (= (MOVE-COST T4 TB12) 3)
  (= (MOVE-COST T4 M4) 4)
  (= (MOVE-COST T4 TB24) 4)
  (= (MOVE-COST T4 T1) 5)
  (= (MOVE-COST T4 T5) 6)
  (= (MOVE-COST T4 T6) 7)
  (= (MOVE-COST T4 TB-FOR-1) 7)
  (= (MOVE-COST T4 TB-FOR-56) 6)
  (= (MOVE-COST T4 TB45) 5)
  (= (MOVE-COST T4 TB23) 2)
  (= (MOVE-COST T4 TB35) 4)
  (= (MOVE-COST T4 M5) 6)
  (= (MOVE-COST T4 TABLE-OUT) 6)
  (= (MOVE-COST T4 M3) 5)
  (= (MOVE-COST T4 T3) 3)
  (= (MOVE-COST T4 T2) 3)
  (= (MOVE-COST T4 TB-FOR-234) 2)
  (= (MOVE-COST T4 T4) 1000)
  (= (MOVE-COST T4 M1) 4)
  (= (MOVE-COST M1 TABLE-IN) 2)
  (= (MOVE-COST M1 M2) 2)
  (= (MOVE-COST M1 TB12) 2)
  (= (MOVE-COST M1 M4) 3)
  (= (MOVE-COST M1 TB24) 3)
  (= (MOVE-COST M1 T1) 4)
  (= (MOVE-COST M1 T5) 5)
  (= (MOVE-COST M1 T6) 6)
  (= (MOVE-COST M1 TB-FOR-1) 6)
  (= (MOVE-COST M1 TB-FOR-56) 5)
  (= (MOVE-COST M1 TB45) 4)
  (= (MOVE-COST M1 TB23) 3)
  (= (MOVE-COST M1 TB35) 5)
  (= (MOVE-COST M1 M5) 5)
  (= (MOVE-COST M1 TABLE-OUT) 6)
  (= (MOVE-COST M1 M3) 6)
  (= (MOVE-COST M1 T3) 4)
  (= (MOVE-COST M1 T2) 5)
  (= (MOVE-COST M1 TB-FOR-234) 5)
  (= (MOVE-COST M1 T4) 4)
  (= (MOVE-COST M1 M1) 1000)
  (REACHABLE A5 TABLE-OUT)
  (REACHABLE A5 M5)
  (REACHABLE A5 M3)
  (REACHABLE A5 TB45)
  (REACHABLE A5 TB35)
  (REACHABLE A4 TB45)
  (REACHABLE A4 TB-FOR-56)
  (REACHABLE A4 TB-FOR-1)
  (REACHABLE A4 T6)
  (REACHABLE A4 T5)
  (REACHABLE A4 T1)
  (REACHABLE A4 TB24)
  (REACHABLE A3 TB35)
  (REACHABLE A3 TB-FOR-234)
  (REACHABLE A3 T4)
  (REACHABLE A3 T3)
  (REACHABLE A3 T2)
  (REACHABLE A3 TB23)
  (REACHABLE A2 M4)
  (REACHABLE A2 TB24)
  (REACHABLE A2 TB23)
  (REACHABLE A2 TB12)
  (REACHABLE A1 TB12)
  (REACHABLE A1 M2)
  (REACHABLE A1 M1)
  (REACHABLE A1 TABLE-IN)
  (= (LOADING-COST) 1)
  ;; (= (TOTAL-TIME) 0)
  (FINISHED NOTHING-DONE BASE0-9824)
  (FINISHED NOTHING-DONE BASE1-9823)
  (FINISHED NOTHING-DONE BASE2-9822)
  (FINISHED NOTHING-DONE BASE3-9821)
  (FINISHED NOTHING-DONE BASE4-9820)
  (FINISHED NOTHING-DONE BASE5-9819)
  (FINISHED NOTHING-DONE BASE6-9818)
  (FINISHED NOTHING-DONE BASE7-9817)
  (FINISHED NOTHING-DONE BASE8-9816)
  (FINISHED NOTHING-DONE BASE9-9815)
  (FINISHED NOTHING-DONE BASE10-9814)
  (FINISHED NOTHING-DONE BASE11-9813)
  (FINISHED NOTHING-DONE BASE12-9812)
  (FINISHED NOTHING-DONE BASE13-9811)
  (FINISHED NOTHING-DONE BASE14-9810)
  (FINISHED NOTHING-DONE BASE15-9809)
  (FINISHED NOTHING-DONE BASE16-9808)
  (FINISHED NOTHING-DONE BASE17-9807)
  (FINISHED NOTHING-DONE BASE18-9806)
  (FINISHED NOTHING-DONE BASE19-9805)
  (FINISHED NOTHING-DONE BASE20-9804)
  (FINISHED NOTHING-DONE BASE21-9803)
  (FINISHED NOTHING-DONE BASE22-9802)
  (FINISHED NOTHING-DONE BASE23-9801)
  (FINISHED NOTHING-DONE BASE24-9800)
  (FINISHED NOTHING-DONE BASE25-9799)
  (FINISHED NOTHING-DONE BASE26-9798)
  (FINISHED NOTHING-DONE BASE27-9797)
  (FINISHED NOTHING-DONE BASE28-9796)
  (FINISHED NOTHING-DONE BASE29-9795)
  (FINISHED NOTHING-DONE BASE30-9794)
  (FINISHED NOTHING-DONE BASE31-9793)
  (FINISHED NOTHING-DONE BASE32-9792)
  (FINISHED NOTHING-DONE BASE33-9791)
  (FINISHED NOTHING-DONE BASE34-9790)
  (FINISHED NOTHING-DONE BASE35-9789)
  (FINISHED NOTHING-DONE BASE36-9788)
  (FINISHED NOTHING-DONE BASE37-9787)
  (FINISHED NOTHING-DONE BASE38-9786)
  (FINISHED NOTHING-DONE BASE39-9785)
  (FINISHED NOTHING-DONE BASE40-9784)
  (FINISHED NOTHING-DONE BASE41-9783)
  (FINISHED NOTHING-DONE BASE42-9782)
  (FINISHED NOTHING-DONE BASE43-9781)
  (FINISHED NOTHING-DONE BASE44-9780)
  (FINISHED NOTHING-DONE BASE45-9779)
  (FINISHED NOTHING-DONE BASE46-9778)
  (FINISHED NOTHING-DONE BASE47-9777)
  (FINISHED NOTHING-DONE BASE48-9776)
  (FINISHED NOTHING-DONE BASE49-9775)
  (FINISHED NOTHING-DONE BASE50-9774)
  (FINISHED NOTHING-DONE BASE51-9773)
  (FINISHED NOTHING-DONE BASE52-9772)
  (FINISHED NOTHING-DONE BASE53-9771)
  (FINISHED NOTHING-DONE BASE54-9770)
  (FINISHED NOTHING-DONE BASE55-9769)
  (FINISHED NOTHING-DONE BASE56-9768)
  (FINISHED NOTHING-DONE BASE57-9767)
  (FINISHED NOTHING-DONE BASE58-9766)
  (FINISHED NOTHING-DONE BASE59-9765)
  (FINISHED NOTHING-DONE BASE60-9764)
  (FINISHED NOTHING-DONE BASE61-9763)
  (FINISHED NOTHING-DONE BASE62-9762)
  (FINISHED NOTHING-DONE BASE63-9761)
  (AT BASE0-9824 CARRY-IN)
  (AT BASE1-9823 CARRY-IN)
  (AT BASE2-9822 CARRY-IN)
  (AT BASE3-9821 CARRY-IN)
  (AT BASE4-9820 CARRY-IN)
  (AT BASE5-9819 CARRY-IN)
  (AT BASE6-9818 CARRY-IN)
  (AT BASE7-9817 CARRY-IN)
  (AT BASE8-9816 CARRY-IN)
  (AT BASE9-9815 CARRY-IN)
  (AT BASE10-9814 CARRY-IN)
  (AT BASE11-9813 CARRY-IN)
  (AT BASE12-9812 CARRY-IN)
  (AT BASE13-9811 CARRY-IN)
  (AT BASE14-9810 CARRY-IN)
  (AT BASE15-9809 CARRY-IN)
  (AT BASE16-9808 CARRY-IN)
  (AT BASE17-9807 CARRY-IN)
  (AT BASE18-9806 CARRY-IN)
  (AT BASE19-9805 CARRY-IN)
  (AT BASE20-9804 CARRY-IN)
  (AT BASE21-9803 CARRY-IN)
  (AT BASE22-9802 CARRY-IN)
  (AT BASE23-9801 CARRY-IN)
  (AT BASE24-9800 CARRY-IN)
  (AT BASE25-9799 CARRY-IN)
  (AT BASE26-9798 CARRY-IN)
  (AT BASE27-9797 CARRY-IN)
  (AT BASE28-9796 CARRY-IN)
  (AT BASE29-9795 CARRY-IN)
  (AT BASE30-9794 CARRY-IN)
  (AT BASE31-9793 CARRY-IN)
  (AT BASE32-9792 CARRY-IN)
  (AT BASE33-9791 CARRY-IN)
  (AT BASE34-9790 CARRY-IN)
  (AT BASE35-9789 CARRY-IN)
  (AT BASE36-9788 CARRY-IN)
  (AT BASE37-9787 CARRY-IN)
  (AT BASE38-9786 CARRY-IN)
  (AT BASE39-9785 CARRY-IN)
  (AT BASE40-9784 CARRY-IN)
  (AT BASE41-9783 CARRY-IN)
  (AT BASE42-9782 CARRY-IN)
  (AT BASE43-9781 CARRY-IN)
  (AT BASE44-9780 CARRY-IN)
  (AT BASE45-9779 CARRY-IN)
  (AT BASE46-9778 CARRY-IN)
  (AT BASE47-9777 CARRY-IN)
  (AT BASE48-9776 CARRY-IN)
  (AT BASE49-9775 CARRY-IN)
  (AT BASE50-9774 CARRY-IN)
  (AT BASE51-9773 CARRY-IN)
  (AT BASE52-9772 CARRY-IN)
  (AT BASE53-9771 CARRY-IN)
  (AT BASE54-9770 CARRY-IN)
  (AT BASE55-9769 CARRY-IN)
  (AT BASE56-9768 CARRY-IN)
  (AT BASE57-9767 CARRY-IN)
  (AT BASE58-9766 CARRY-IN)
  (AT BASE59-9765 CARRY-IN)
  (AT BASE60-9764 CARRY-IN)
  (AT BASE61-9763 CARRY-IN)
  (AT BASE62-9762 CARRY-IN)
  (AT BASE63-9761 CARRY-IN))
 (:GOAL
  (AND (FINISHED MJ5 BASE0-9824)
       (FINISHED MJ5 BASE1-9823)
       (FINISHED MJ5 BASE2-9822)
       (FINISHED MJ5 BASE3-9821)
       (FINISHED MJ5 BASE4-9820)
       (FINISHED MJ5 BASE5-9819)
       (FINISHED MJ5 BASE6-9818)
       (FINISHED MJ5 BASE7-9817)
       (FINISHED MJ5 BASE8-9816)
       (FINISHED MJ5 BASE9-9815)
       (FINISHED MJ5 BASE10-9814)
       (FINISHED MJ5 BASE11-9813)
       (FINISHED MJ5 BASE12-9812)
       (FINISHED MJ5 BASE13-9811)
       (FINISHED MJ5 BASE14-9810)
       (FINISHED MJ5 BASE15-9809)
       (FINISHED MJ5 BASE16-9808)
       (FINISHED MJ5 BASE17-9807)
       (FINISHED MJ5 BASE18-9806)
       (FINISHED MJ5 BASE19-9805)
       (FINISHED MJ5 BASE20-9804)
       (FINISHED MJ5 BASE21-9803)
       (FINISHED MJ5 BASE22-9802)
       (FINISHED MJ5 BASE23-9801)
       (FINISHED MJ5 BASE24-9800)
       (FINISHED MJ5 BASE25-9799)
       (FINISHED MJ5 BASE26-9798)
       (FINISHED MJ5 BASE27-9797)
       (FINISHED MJ5 BASE28-9796)
       (FINISHED MJ5 BASE29-9795)
       (FINISHED MJ5 BASE30-9794)
       (FINISHED MJ5 BASE31-9793)
       (FINISHED MJ5 BASE32-9792)
       (FINISHED MJ5 BASE33-9791)
       (FINISHED MJ5 BASE34-9790)
       (FINISHED MJ5 BASE35-9789)
       (FINISHED MJ5 BASE36-9788)
       (FINISHED MJ5 BASE37-9787)
       (FINISHED MJ5 BASE38-9786)
       (FINISHED MJ5 BASE39-9785)
       (FINISHED MJ5 BASE40-9784)
       (FINISHED MJ5 BASE41-9783)
       (FINISHED MJ5 BASE42-9782)
       (FINISHED MJ5 BASE43-9781)
       (FINISHED MJ5 BASE44-9780)
       (FINISHED MJ5 BASE45-9779)
       (FINISHED MJ5 BASE46-9778)
       (FINISHED MJ5 BASE47-9777)
       (FINISHED MJ5 BASE48-9776)
       (FINISHED MJ5 BASE49-9775)
       (FINISHED MJ5 BASE50-9774)
       (FINISHED MJ5 BASE51-9773)
       (FINISHED MJ5 BASE52-9772)
       (FINISHED MJ5 BASE53-9771)
       (FINISHED MJ5 BASE54-9770)
       (FINISHED MJ5 BASE55-9769)
       (FINISHED MJ5 BASE56-9768)
       (FINISHED MJ5 BASE57-9767)
       (FINISHED MJ5 BASE58-9766)
       (FINISHED MJ5 BASE59-9765)
       (FINISHED MJ5 BASE60-9764)
       (FINISHED MJ5 BASE61-9763)
       (FINISHED MJ5 BASE62-9762)
       (FINISHED MJ5 BASE63-9761)
       (AT BASE0-9824 CARRY-OUT)
       (AT BASE1-9823 CARRY-OUT)
       (AT BASE2-9822 CARRY-OUT)
       (AT BASE3-9821 CARRY-OUT)
       (AT BASE4-9820 CARRY-OUT)
       (AT BASE5-9819 CARRY-OUT)
       (AT BASE6-9818 CARRY-OUT)
       (AT BASE7-9817 CARRY-OUT)
       (AT BASE8-9816 CARRY-OUT)
       (AT BASE9-9815 CARRY-OUT)
       (AT BASE10-9814 CARRY-OUT)
       (AT BASE11-9813 CARRY-OUT)
       (AT BASE12-9812 CARRY-OUT)
       (AT BASE13-9811 CARRY-OUT)
       (AT BASE14-9810 CARRY-OUT)
       (AT BASE15-9809 CARRY-OUT)
       (AT BASE16-9808 CARRY-OUT)
       (AT BASE17-9807 CARRY-OUT)
       (AT BASE18-9806 CARRY-OUT)
       (AT BASE19-9805 CARRY-OUT)
       (AT BASE20-9804 CARRY-OUT)
       (AT BASE21-9803 CARRY-OUT)
       (AT BASE22-9802 CARRY-OUT)
       (AT BASE23-9801 CARRY-OUT)
       (AT BASE24-9800 CARRY-OUT)
       (AT BASE25-9799 CARRY-OUT)
       (AT BASE26-9798 CARRY-OUT)
       (AT BASE27-9797 CARRY-OUT)
       (AT BASE28-9796 CARRY-OUT)
       (AT BASE29-9795 CARRY-OUT)
       (AT BASE30-9794 CARRY-OUT)
       (AT BASE31-9793 CARRY-OUT)
       (AT BASE32-9792 CARRY-OUT)
       (AT BASE33-9791 CARRY-OUT)
       (AT BASE34-9790 CARRY-OUT)
       (AT BASE35-9789 CARRY-OUT)
       (AT BASE36-9788 CARRY-OUT)
       (AT BASE37-9787 CARRY-OUT)
       (AT BASE38-9786 CARRY-OUT)
       (AT BASE39-9785 CARRY-OUT)
       (AT BASE40-9784 CARRY-OUT)
       (AT BASE41-9783 CARRY-OUT)
       (AT BASE42-9782 CARRY-OUT)
       (AT BASE43-9781 CARRY-OUT)
       (AT BASE44-9780 CARRY-OUT)
       (AT BASE45-9779 CARRY-OUT)
       (AT BASE46-9778 CARRY-OUT)
       (AT BASE47-9777 CARRY-OUT)
       (AT BASE48-9776 CARRY-OUT)
       (AT BASE49-9775 CARRY-OUT)
       (AT BASE50-9774 CARRY-OUT)
       (AT BASE51-9773 CARRY-OUT)
       (AT BASE52-9772 CARRY-OUT)
       (AT BASE53-9771 CARRY-OUT)
       (AT BASE54-9770 CARRY-OUT)
       (AT BASE55-9769 CARRY-OUT)
       (AT BASE56-9768 CARRY-OUT)
       (AT BASE57-9767 CARRY-OUT)
       (AT BASE58-9766 CARRY-OUT)
       (AT BASE59-9765 CARRY-OUT)
       (AT BASE60-9764 CARRY-OUT)
       (AT BASE61-9763 CARRY-OUT)
       (AT BASE62-9762 CARRY-OUT)
       (AT BASE63-9761 CARRY-OUT)))
 (:METRIC MINIMIZE (TOTAL-TIME)))