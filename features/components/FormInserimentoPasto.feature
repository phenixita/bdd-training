# language: it
Funzionalità: Form inserimento pasto
Definizione del form contenente i campi di inserimento dati per un pasto.

  Contesto: 
    Dato il form di inserimento dati

  Scenario: Campi del form
    Allora il form di inserimento del pasto conterrà i seguenti campi
      | Name        | Mandatory | Type                                                                   |
      | date        | Sì        | Date                                                                   |
      | time        | Sì        | Time                                                                   |
      | mealKind    | Sì        | Enum con valori ammissibili "colazione", "pranzo", "spuntino" o "cena" |
      | foodList    | Sì        | string[]                                                               |
      | annotations | No        | string                                                                 |
      | save        | Sì        | Pulsante di salvataggio                                                |

  Scenario: Disattivazione pulsante save
    Dati i campi obbligatori mancanti
    Allora il pulsante save è disattivato

  Scenario: Tooltip contenente gli errori
    Dato il pulsante save è disattivato
    Quando mouse hover (o touch) sul pulsante save
    Allora viene mostrato tooltip contenente errori

  Scenario: Attivazione pulsante save
    Dati i campi obbligatori compilati
    Allora viene attivato il pulsante di save

  Scenario: Salvataggio dei dati
    Dato il pasto contenente i seguenti dati
      | Name        | Value                                                        | Type                                                                   |
      | date        |                                                   10/03/2022 | Date                                                                   |
      | time        |                                                        14:02 | Time                                                                   |
      | mealKind    | pranzo                                                       | Enum con valori ammissibili "colazione", "pranzo", "spuntino" o "cena" |
      | foodList    | [ "Pasta integrale 100g", "formaggio 25g", "zucchine 150g" ] | string[]                                                               |
      | annotations | pranzo da amici                                              | string                                                                 |
    Dato il pulsante save attivato
    Quando click (o touch) su pulsante save
    Allora la web API "/api/meal" con il metodo "POST" viene chiamata
