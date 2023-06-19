# language: it
Funzionalità: Pagina inserimento pasto
Come persona a dieta
Voglio una pagina di inserimento pasti
Per poter salvare i dati del pasto effettuato

> Nota: la funzionalità viene descritta usando il metodo induttivo, partendo quindi dal need
# step induttivo 1: di cosa ho bisogno?

  Scenario: Salvataggio dei dati del pasto
    #Dato un pasto completo
    Quando salvo il pasto
    Allora il nuovo pasto conterrà tutti i dati
    # step induttivo 2: cos'è "pasto"?

  Scenario: Composizione del pasto
    Allora il pasto sarà composto da
      | Campo                | Valore                                             | Valori ammissibili                 |
      | data                 |                                         10/03/2022 | Tutte le date                      |
      | ora                  |                                              14:02 | Orario, in formato 24h             |
      | tipo di pasto        | pranzo                                             | Colazione, pranzo, spuntino o cena |
      | lista degli alimenti | Pasta integrale 100g, formaggio 25g, zucchine 150g | Lista con nome e quantità          |
      | note                 | pranzo da amici                                    | Qualsiasi nota correlata al pasto  |
    # step induttivo 3: come li inserisco questi dati?

  Scenario: Inserimento dati del pasto
    Data la pagina di inserimento del pasto
    Quando visito la pagina
    Allora vengono visualizzati i campi per inserire i dati del pasto
    # ma posso anche definire questo ubiquitous language: campi di inserimento = form

  Scenario: Inserimento dati del pasto - ALTERNATIVO
  Non c'è uno standard: l'importante è che sia comprensibile a tutti quelli coinvolti in questa stesura.
  In questa fase, chi sono coinvolti?
  - PO
  - Analisti/tester
  - Developer
  - Architects

    Data la pagina di inserimento del pasto
    Quando visito la pagina
    Allora viene visualizzato il form di inserimento del pasto
