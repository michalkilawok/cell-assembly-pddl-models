(DEFINE (PROBLEM CELL-ASSEMBLY-MODEL2B-64)
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
           BASE0-6709 - BASE
           BASE1-6708 - BASE
           BASE2-6707 - BASE
           BASE3-6706 - BASE
           BASE4-6705 - BASE
           BASE5-6704 - BASE
           BASE6-6703 - BASE
           BASE7-6702 - BASE
           BASE8-6701 - BASE
           BASE9-6700 - BASE
           BASE10-6699 - BASE
           BASE11-6698 - BASE
           BASE12-6697 - BASE
           BASE13-6696 - BASE
           BASE14-6695 - BASE
           BASE15-6694 - BASE
           BASE16-6693 - BASE
           BASE17-6692 - BASE
           BASE18-6691 - BASE
           BASE19-6690 - BASE
           BASE20-6689 - BASE
           BASE21-6688 - BASE
           BASE22-6687 - BASE
           BASE23-6686 - BASE
           BASE24-6685 - BASE
           BASE25-6684 - BASE
           BASE26-6683 - BASE
           BASE27-6682 - BASE
           BASE28-6681 - BASE
           BASE29-6680 - BASE
           BASE30-6679 - BASE
           BASE31-6678 - BASE
           BASE32-6677 - BASE
           BASE33-6676 - BASE
           BASE34-6675 - BASE
           BASE35-6674 - BASE
           BASE36-6673 - BASE
           BASE37-6672 - BASE
           BASE38-6671 - BASE
           BASE39-6670 - BASE
           BASE40-6669 - BASE
           BASE41-6668 - BASE
           BASE42-6667 - BASE
           BASE43-6666 - BASE
           BASE44-6665 - BASE
           BASE45-6664 - BASE
           BASE46-6663 - BASE
           BASE47-6662 - BASE
           BASE48-6661 - BASE
           BASE49-6660 - BASE
           BASE50-6659 - BASE
           BASE51-6658 - BASE
           BASE52-6657 - BASE
           BASE53-6656 - BASE
           BASE54-6655 - BASE
           BASE55-6654 - BASE
           BASE56-6653 - BASE
           BASE57-6652 - BASE
           BASE58-6651 - BASE
           BASE59-6650 - BASE
           BASE60-6649 - BASE
           BASE61-6648 - BASE
           BASE62-6647 - BASE
           BASE63-6646 - BASE)

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
  (FINISHED NOTHING-DONE BASE0-6709)
  (FINISHED NOTHING-DONE BASE1-6708)
  (FINISHED NOTHING-DONE BASE2-6707)
  (FINISHED NOTHING-DONE BASE3-6706)
  (FINISHED NOTHING-DONE BASE4-6705)
  (FINISHED NOTHING-DONE BASE5-6704)
  (FINISHED NOTHING-DONE BASE6-6703)
  (FINISHED NOTHING-DONE BASE7-6702)
  (FINISHED NOTHING-DONE BASE8-6701)
  (FINISHED NOTHING-DONE BASE9-6700)
  (FINISHED NOTHING-DONE BASE10-6699)
  (FINISHED NOTHING-DONE BASE11-6698)
  (FINISHED NOTHING-DONE BASE12-6697)
  (FINISHED NOTHING-DONE BASE13-6696)
  (FINISHED NOTHING-DONE BASE14-6695)
  (FINISHED NOTHING-DONE BASE15-6694)
  (FINISHED NOTHING-DONE BASE16-6693)
  (FINISHED NOTHING-DONE BASE17-6692)
  (FINISHED NOTHING-DONE BASE18-6691)
  (FINISHED NOTHING-DONE BASE19-6690)
  (FINISHED NOTHING-DONE BASE20-6689)
  (FINISHED NOTHING-DONE BASE21-6688)
  (FINISHED NOTHING-DONE BASE22-6687)
  (FINISHED NOTHING-DONE BASE23-6686)
  (FINISHED NOTHING-DONE BASE24-6685)
  (FINISHED NOTHING-DONE BASE25-6684)
  (FINISHED NOTHING-DONE BASE26-6683)
  (FINISHED NOTHING-DONE BASE27-6682)
  (FINISHED NOTHING-DONE BASE28-6681)
  (FINISHED NOTHING-DONE BASE29-6680)
  (FINISHED NOTHING-DONE BASE30-6679)
  (FINISHED NOTHING-DONE BASE31-6678)
  (FINISHED NOTHING-DONE BASE32-6677)
  (FINISHED NOTHING-DONE BASE33-6676)
  (FINISHED NOTHING-DONE BASE34-6675)
  (FINISHED NOTHING-DONE BASE35-6674)
  (FINISHED NOTHING-DONE BASE36-6673)
  (FINISHED NOTHING-DONE BASE37-6672)
  (FINISHED NOTHING-DONE BASE38-6671)
  (FINISHED NOTHING-DONE BASE39-6670)
  (FINISHED NOTHING-DONE BASE40-6669)
  (FINISHED NOTHING-DONE BASE41-6668)
  (FINISHED NOTHING-DONE BASE42-6667)
  (FINISHED NOTHING-DONE BASE43-6666)
  (FINISHED NOTHING-DONE BASE44-6665)
  (FINISHED NOTHING-DONE BASE45-6664)
  (FINISHED NOTHING-DONE BASE46-6663)
  (FINISHED NOTHING-DONE BASE47-6662)
  (FINISHED NOTHING-DONE BASE48-6661)
  (FINISHED NOTHING-DONE BASE49-6660)
  (FINISHED NOTHING-DONE BASE50-6659)
  (FINISHED NOTHING-DONE BASE51-6658)
  (FINISHED NOTHING-DONE BASE52-6657)
  (FINISHED NOTHING-DONE BASE53-6656)
  (FINISHED NOTHING-DONE BASE54-6655)
  (FINISHED NOTHING-DONE BASE55-6654)
  (FINISHED NOTHING-DONE BASE56-6653)
  (FINISHED NOTHING-DONE BASE57-6652)
  (FINISHED NOTHING-DONE BASE58-6651)
  (FINISHED NOTHING-DONE BASE59-6650)
  (FINISHED NOTHING-DONE BASE60-6649)
  (FINISHED NOTHING-DONE BASE61-6648)
  (FINISHED NOTHING-DONE BASE62-6647)
  (FINISHED NOTHING-DONE BASE63-6646)
  (AT BASE0-6709 CARRY-IN)
  (AT BASE1-6708 CARRY-IN)
  (AT BASE2-6707 CARRY-IN)
  (AT BASE3-6706 CARRY-IN)
  (AT BASE4-6705 CARRY-IN)
  (AT BASE5-6704 CARRY-IN)
  (AT BASE6-6703 CARRY-IN)
  (AT BASE7-6702 CARRY-IN)
  (AT BASE8-6701 CARRY-IN)
  (AT BASE9-6700 CARRY-IN)
  (AT BASE10-6699 CARRY-IN)
  (AT BASE11-6698 CARRY-IN)
  (AT BASE12-6697 CARRY-IN)
  (AT BASE13-6696 CARRY-IN)
  (AT BASE14-6695 CARRY-IN)
  (AT BASE15-6694 CARRY-IN)
  (AT BASE16-6693 CARRY-IN)
  (AT BASE17-6692 CARRY-IN)
  (AT BASE18-6691 CARRY-IN)
  (AT BASE19-6690 CARRY-IN)
  (AT BASE20-6689 CARRY-IN)
  (AT BASE21-6688 CARRY-IN)
  (AT BASE22-6687 CARRY-IN)
  (AT BASE23-6686 CARRY-IN)
  (AT BASE24-6685 CARRY-IN)
  (AT BASE25-6684 CARRY-IN)
  (AT BASE26-6683 CARRY-IN)
  (AT BASE27-6682 CARRY-IN)
  (AT BASE28-6681 CARRY-IN)
  (AT BASE29-6680 CARRY-IN)
  (AT BASE30-6679 CARRY-IN)
  (AT BASE31-6678 CARRY-IN)
  (AT BASE32-6677 CARRY-IN)
  (AT BASE33-6676 CARRY-IN)
  (AT BASE34-6675 CARRY-IN)
  (AT BASE35-6674 CARRY-IN)
  (AT BASE36-6673 CARRY-IN)
  (AT BASE37-6672 CARRY-IN)
  (AT BASE38-6671 CARRY-IN)
  (AT BASE39-6670 CARRY-IN)
  (AT BASE40-6669 CARRY-IN)
  (AT BASE41-6668 CARRY-IN)
  (AT BASE42-6667 CARRY-IN)
  (AT BASE43-6666 CARRY-IN)
  (AT BASE44-6665 CARRY-IN)
  (AT BASE45-6664 CARRY-IN)
  (AT BASE46-6663 CARRY-IN)
  (AT BASE47-6662 CARRY-IN)
  (AT BASE48-6661 CARRY-IN)
  (AT BASE49-6660 CARRY-IN)
  (AT BASE50-6659 CARRY-IN)
  (AT BASE51-6658 CARRY-IN)
  (AT BASE52-6657 CARRY-IN)
  (AT BASE53-6656 CARRY-IN)
  (AT BASE54-6655 CARRY-IN)
  (AT BASE55-6654 CARRY-IN)
  (AT BASE56-6653 CARRY-IN)
  (AT BASE57-6652 CARRY-IN)
  (AT BASE58-6651 CARRY-IN)
  (AT BASE59-6650 CARRY-IN)
  (AT BASE60-6649 CARRY-IN)
  (AT BASE61-6648 CARRY-IN)
  (AT BASE62-6647 CARRY-IN)
  (AT BASE63-6646 CARRY-IN))
 (:GOAL
  (AND (FINISHED SCREW-C BASE0-6709)
       (FINISHED SCREW-C BASE1-6708)
       (FINISHED SCREW-C BASE2-6707)
       (FINISHED SCREW-C BASE3-6706)
       (FINISHED SCREW-C BASE4-6705)
       (FINISHED SCREW-C BASE5-6704)
       (FINISHED SCREW-C BASE6-6703)
       (FINISHED SCREW-C BASE7-6702)
       (FINISHED SCREW-C BASE8-6701)
       (FINISHED SCREW-C BASE9-6700)
       (FINISHED SCREW-C BASE10-6699)
       (FINISHED SCREW-C BASE11-6698)
       (FINISHED SCREW-C BASE12-6697)
       (FINISHED SCREW-C BASE13-6696)
       (FINISHED SCREW-C BASE14-6695)
       (FINISHED SCREW-C BASE15-6694)
       (FINISHED SCREW-C BASE16-6693)
       (FINISHED SCREW-C BASE17-6692)
       (FINISHED SCREW-C BASE18-6691)
       (FINISHED SCREW-C BASE19-6690)
       (FINISHED SCREW-C BASE20-6689)
       (FINISHED SCREW-C BASE21-6688)
       (FINISHED SCREW-C BASE22-6687)
       (FINISHED SCREW-C BASE23-6686)
       (FINISHED SCREW-C BASE24-6685)
       (FINISHED SCREW-C BASE25-6684)
       (FINISHED SCREW-C BASE26-6683)
       (FINISHED SCREW-C BASE27-6682)
       (FINISHED SCREW-C BASE28-6681)
       (FINISHED SCREW-C BASE29-6680)
       (FINISHED SCREW-C BASE30-6679)
       (FINISHED SCREW-C BASE31-6678)
       (FINISHED SCREW-C BASE32-6677)
       (FINISHED SCREW-C BASE33-6676)
       (FINISHED SCREW-C BASE34-6675)
       (FINISHED SCREW-C BASE35-6674)
       (FINISHED SCREW-C BASE36-6673)
       (FINISHED SCREW-C BASE37-6672)
       (FINISHED SCREW-C BASE38-6671)
       (FINISHED SCREW-C BASE39-6670)
       (FINISHED SCREW-C BASE40-6669)
       (FINISHED SCREW-C BASE41-6668)
       (FINISHED SCREW-C BASE42-6667)
       (FINISHED SCREW-C BASE43-6666)
       (FINISHED SCREW-C BASE44-6665)
       (FINISHED SCREW-C BASE45-6664)
       (FINISHED SCREW-C BASE46-6663)
       (FINISHED SCREW-C BASE47-6662)
       (FINISHED SCREW-C BASE48-6661)
       (FINISHED SCREW-C BASE49-6660)
       (FINISHED SCREW-C BASE50-6659)
       (FINISHED SCREW-C BASE51-6658)
       (FINISHED SCREW-C BASE52-6657)
       (FINISHED SCREW-C BASE53-6656)
       (FINISHED SCREW-C BASE54-6655)
       (FINISHED SCREW-C BASE55-6654)
       (FINISHED SCREW-C BASE56-6653)
       (FINISHED SCREW-C BASE57-6652)
       (FINISHED SCREW-C BASE58-6651)
       (FINISHED SCREW-C BASE59-6650)
       (FINISHED SCREW-C BASE60-6649)
       (FINISHED SCREW-C BASE61-6648)
       (FINISHED SCREW-C BASE62-6647)
       (FINISHED SCREW-C BASE63-6646)
       (AT BASE0-6709 CARRY-OUT)
       (AT BASE1-6708 CARRY-OUT)
       (AT BASE2-6707 CARRY-OUT)
       (AT BASE3-6706 CARRY-OUT)
       (AT BASE4-6705 CARRY-OUT)
       (AT BASE5-6704 CARRY-OUT)
       (AT BASE6-6703 CARRY-OUT)
       (AT BASE7-6702 CARRY-OUT)
       (AT BASE8-6701 CARRY-OUT)
       (AT BASE9-6700 CARRY-OUT)
       (AT BASE10-6699 CARRY-OUT)
       (AT BASE11-6698 CARRY-OUT)
       (AT BASE12-6697 CARRY-OUT)
       (AT BASE13-6696 CARRY-OUT)
       (AT BASE14-6695 CARRY-OUT)
       (AT BASE15-6694 CARRY-OUT)
       (AT BASE16-6693 CARRY-OUT)
       (AT BASE17-6692 CARRY-OUT)
       (AT BASE18-6691 CARRY-OUT)
       (AT BASE19-6690 CARRY-OUT)
       (AT BASE20-6689 CARRY-OUT)
       (AT BASE21-6688 CARRY-OUT)
       (AT BASE22-6687 CARRY-OUT)
       (AT BASE23-6686 CARRY-OUT)
       (AT BASE24-6685 CARRY-OUT)
       (AT BASE25-6684 CARRY-OUT)
       (AT BASE26-6683 CARRY-OUT)
       (AT BASE27-6682 CARRY-OUT)
       (AT BASE28-6681 CARRY-OUT)
       (AT BASE29-6680 CARRY-OUT)
       (AT BASE30-6679 CARRY-OUT)
       (AT BASE31-6678 CARRY-OUT)
       (AT BASE32-6677 CARRY-OUT)
       (AT BASE33-6676 CARRY-OUT)
       (AT BASE34-6675 CARRY-OUT)
       (AT BASE35-6674 CARRY-OUT)
       (AT BASE36-6673 CARRY-OUT)
       (AT BASE37-6672 CARRY-OUT)
       (AT BASE38-6671 CARRY-OUT)
       (AT BASE39-6670 CARRY-OUT)
       (AT BASE40-6669 CARRY-OUT)
       (AT BASE41-6668 CARRY-OUT)
       (AT BASE42-6667 CARRY-OUT)
       (AT BASE43-6666 CARRY-OUT)
       (AT BASE44-6665 CARRY-OUT)
       (AT BASE45-6664 CARRY-OUT)
       (AT BASE46-6663 CARRY-OUT)
       (AT BASE47-6662 CARRY-OUT)
       (AT BASE48-6661 CARRY-OUT)
       (AT BASE49-6660 CARRY-OUT)
       (AT BASE50-6659 CARRY-OUT)
       (AT BASE51-6658 CARRY-OUT)
       (AT BASE52-6657 CARRY-OUT)
       (AT BASE53-6656 CARRY-OUT)
       (AT BASE54-6655 CARRY-OUT)
       (AT BASE55-6654 CARRY-OUT)
       (AT BASE56-6653 CARRY-OUT)
       (AT BASE57-6652 CARRY-OUT)
       (AT BASE58-6651 CARRY-OUT)
       (AT BASE59-6650 CARRY-OUT)
       (AT BASE60-6649 CARRY-OUT)
       (AT BASE61-6648 CARRY-OUT)
       (AT BASE62-6647 CARRY-OUT)
       (AT BASE63-6646 CARRY-OUT)))
 (:METRIC MINIMIZE (TOTAL-COST)))