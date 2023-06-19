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

  Scenario: Tooltip contenente gli errori

  Scenario: Attivazione pulsante save

  Scenario: Salvataggio dei dati
