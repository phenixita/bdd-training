# language: it
Funzionalità: Endpoint di salvataggio del pasto
Definizione dell'endpoint che consente il salvataggio del pasto.

  Scenario: Validazione dei dati
    Dato il pasto contenente i seguenti dati
      | Name        | Value                                                        | Type                                                                   |
      | date        |                                                   10/03/2022 | Date                                                                   |
      | time        |                                                        14:02 | Time                                                                   |
      | mealKind    | pranzo                                                       | Enum con valori ammissibili "colazione", "pranzo", "spuntino" o "cena" |
      | foodList    | [ "Pasta integrale 100g", "formaggio 25g", "zucchine 150g" ] | string[]                                                               |
      | annotations | pranzo da amici                                              | string                                                                 |
    Quando la web API "/api/meal" con il metodo "POST" viene chiamata
    Allora il servizio MealValidation viene chiamato

  Scenario: Validazione fallita
    Data la web API "/api/meal" con il metodo "POST" viene chiamata
    Quando la validazione restituisce un errore NotValidException e il messaggio "failure"
    Allora la web API risponde con status code 400 e messaggio "failure"

  Scenario: Salvataggio dati
    Data la web API "/api/meal" con il metodo "POST" viene chiamata
    Quando la validazione consente esecuzione senza errori
    Allora il metodo Save di MealStorage viene chiamato
