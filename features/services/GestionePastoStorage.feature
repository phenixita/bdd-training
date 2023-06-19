# language: it
Funzionalità: Gestione del pasto nello storage
Definizione dell'adapter di salvataggio del pasto nello storage.

Seguirà il `repository pattern`.

  Contesto: 
    Dato l'adapter MealStorage esistente

  Scenario: Salvataggio del pasto
    Dato il pasto contenente i seguenti dati
      | Name        | Value                                                        | Type                                                                   |
      | date        |                                                   10/03/2022 | Date                                                                   |
      | time        |                                                        14:02 | Time                                                                   |
      | mealKind    | pranzo                                                       | Enum con valori ammissibili "colazione", "pranzo", "spuntino" o "cena" |
      | foodList    | [ "Pasta integrale 100g", "formaggio 25g", "zucchine 150g" ] | string[]                                                               |
      | annotations | pranzo da amici                                              | string                                                                 |
    Quando il metodo save viene chiamato
    Allora nella tabella Meal viene inserito il pasto con id auto-generato
      | Id | Timestamp                   | Kind   | Annotations     |
      |  2 | 20220310T14:02:00.000+02:00 | pranzo | pranzo da amici |
    Allora nella tabella MealFoods vengono inseriti i valori
      | Id | MealId | Food            | Quantity | UoM |
      |  5 |      2 | Pasta integrale |      100 | g   |
      |  6 |      2 | Formaggio       |       25 | g   |
      |  7 |      2 | Zucchine        |      150 | g   |
