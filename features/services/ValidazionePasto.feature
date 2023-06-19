# language: it
Funzionalità: Validazione pasto
Definisce il servizio di validazione del pasto, che verifica la completezza dei dati inseriti prima di trasferirli allo storage.

Contesto:
    Dato il servizio MealValidation esistente

Regola: Pasto valido
  Scenario: Pasto con dati completi e validi
    Dato il pasto contenente i seguenti dati
      | Name        | Value                                                        | Type                                                                   |
      | date        |                                                   10/03/2022 | Date                                                                   |
      | time        |                                                        14:02 | Time                                                                   |
      | mealKind    | pranzo                                                       | Enum con valori ammissibili "colazione", "pranzo", "spuntino" o "cena" |
      | foodList    | [ "Pasta integrale 100g", "formaggio 25g", "zucchine 150g" ] | string[]                                                               |
      | annotations | pranzo da amici                                              | string                                                                 |
    Quando viene effettuata la verifica dei dati del pasto
    Allora il processo continua senza errori

Regola: Pasto non valido
  Scenario: Pasto con data nel futuro
    Dato il pasto contenente una data nel futuro
    Quando viene effettuata la verifica dei dati del pasto
    Allora il processo viene interrotto con l'errore NotValidException e messaggio "cannot insert a meal in a future date"

  Scenario: Pasto senza mealKind
    Dato il pasto senza mealKind
    Quando viene effettuata la verifica dei dati del pasto
    Allora il processo viene interrotto con l'errore NotValidException e messaggio "missing mealKind"

  Scenario: Pasto senza foodList
    Dato il pasto senza foodList
    Quando viene effettuata la verifica dei dati del pasto
    Allora il processo viene interrotto con l'errore NotValidException e messaggio "missing foodList"
