       identification division.
        program-id. bank-auswahl.

       environment division.
       configuration section.
       special-names.
           decimal-point is comma. 

       data division.
       working-storage section.
       
       01 WAHL                                PIC 9(1).
       01 Betrag                              PIC 9(7),99.                           
       01 Betrag-Formatiert                   PIC Z.ZZZ.ZZ9,99.

       01 Guthaben                            PIC 9(7)V99 VALUE 1000,00.

       01 Guthaben-Display                    PIC Z.ZZZ.ZZ9,99.


       procedure division.
           display "Willkommen bei der Erkan-Bank".
           display "Was möchtest du tun?".
           display "1 - EINZAHLEN".
           display "2 - AUSZAHLEN".    
           display "3 - KONTOSTAND".       
           Accept WAHL.



           if WAHL = 1 then
               display "Du hast du fuer EINZAHLEN entscheiden"
               display "Bitte gib den Betrag an, die du einzahlen willst"
               Accept Betrag
               display "Der Bertrag von" Betrag-Formatiert " eingezahlt"
           else if WAHL = 2 then
               display "Du hast dich fuer AUSZAHLEN entschieden"
               display "Wie viel moechtest du den auszahlen?"
               accept Betrag
               display " Du hast " Betrag-Formatiert " ausgezahlt"

           else if WAHL = 3 then
               move Guthaben to Guthaben-Display
               display "Dein Kontostand liegt bei " Guthaben " Euro"
           else    
               display "Ungueltige Wahl! Bitte waehle 1 und 2"
           end-if.

           stop run.

           
