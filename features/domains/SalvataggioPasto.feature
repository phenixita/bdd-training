# language: it
Funzionalità: Salvataggio del pasto
Definizione dell'endpoint che consente il salvataggio del pasto.

  Contesto: 
    Data la web API "/api/meal" con il metodo "POST" esistente

  Scenario: Salvataggio andato a buon fine
    Dato il pasto contenente i seguenti dati
      | Name        | Value                                                        | Type                                                                   |
      | date        |                                                   10/03/2022 | Date                                                                   |
      | time        |                                                        14:02 | Time                                                                   |
      | mealKind    | pranzo                                                       | Enum con valori ammissibili "colazione", "pranzo", "spuntino" o "cena" |
      | foodList    | [ "Pasta integrale 100g", "formaggio 25g", "zucchine 150g" ] | string[]                                                               |
      | annotations | pranzo da amici                                              | string                                                                 |
    Quando la web API "/api/meal" con il metodo "POST" viene chiamata
    Allora viene ricevuta la risposta con status code 200

  Scenario: Salvataggio fallito, dati mancanti
    Dato il pasto contenente i seguenti dati
      | Name        | Value                                                        | Type     |
      | date        |                                                   10/03/2022 | Date     |
      | time        |                                                        14:02 | Time     |
      | foodList    | [ "Pasta integrale 100g", "formaggio 25g", "zucchine 150g" ] | string[] |
      | annotations | pranzo da amici                                              | string   |
    Quando la web API "/api/meal" con il metodo "POST" viene chiamata
    Allora viene ricevuta la risposta con status code 400 e messaggio "missing mealKind"
