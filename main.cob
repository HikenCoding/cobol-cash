       identification division.
       program-id. bank-auswahl.

       data division.
       working-storage section.
       
       01 WAHL             PIC 9(1).


       procedure division.
           display "Willkommen bei der Erkan-Bank".
           display "Was möchtest du tun?".
           display "1 - EINZAHLEN".
           display "2 - AUSZAHLEN".

           

           if WAHL = 1 then
               display "Du hast du fuer EINZAHLEN entscheiden".
           else if WAHL = 2 then
               display "Du hast dich fuer AUSZAHLEN entschieden".
           else    
               display "Ungueltige Wahl! Bitte waehle 1 und 2".
           end-if.

           stop run.

           
