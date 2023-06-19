# language: it
Funzionalità: Pagina tabella pasti inseriti
Come persona a dieta
Voglio una pagina contenente la lista dei miei pasti
Per poter consultare i dati dei pasti inseriti

> Nota: la funzionalità viene descritta usando il metodo deduttivo, partendo quindi dal want
# step deduttivo 1: cosa voglio?

  Scenario: Pagina contenente la lista dei miei pasti
    Data la pagina «i miei pasti»
    Allora conterrà la lista dei pasti effettuati
    #Allora conterrà pulsante di apertura della pagina di inserimento nuovo pasto
# step deduttivo 2: com'è fatta la tabella?

  Scenario: Tabella dei pasti
    Dati i seguenti pasti
      | data       | ora   | tipo di pasto | lista alimenti                                     |
      | 10/03/2023 | 13:05 | pranzo        | pasta integrale 100g, formaggio 25g, zucchine 150g |
      | 10/03/2023 | 20:12 | cena          | pesce spada 120g, pane 80g, erbette 200g           |
    Quando la pagina «i miei pasti» viene caricata
    Allora conterrà una riga per ogni pasto
# step deduttivo 3: cosa succede per gli alimenti di uno stesso pasto?

  Scenario: Alimenti del pasto nella tabella
  ![Alimenti pasto](../features/users/alimenti_pasto.png)
  - pasta integrale 100g
  - formaggio 25g
  - zucchine 150g
    Dati i seguenti pasti
      | data       | ora   | tipo di pasto | lista alimenti                                     |
      | 10/03/2023 | 13:05 | pranzo        | pasta integrale 100g, formaggio 25g, zucchine 150g |
    Allora gli alimenti verranno visualizzati in una sola cella della tabella, come lista
