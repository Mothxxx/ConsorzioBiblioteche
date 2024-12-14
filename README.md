# SISTEMA INFORMATIVO PER LA GESTIONE DI UN CONSORZIO DI BIBLIOTECHE UNIVERSITARIE
## 1. **Specifica delle operazioni sui dati**
Le operazioni sulla base di dati, oltre a quelle eventualmente ed implicitamente definite nel testo precedente, sono:

1. **Fornire le istruzioni per la creazione del DB e degli oggetti che lo costituiscono**

2. **Per ogni relazione individuata, fornire le istruzioni di inserimento (almeno 10 tuple per ogni relazione individuata), di modifica ed eliminazione di almeno un’istanza.**

3. **Eliminare i dati relativi ad un utente per cui è stato memorizzato almeno un prestito, avendo specificato opportune politiche di rimedio alle violazioni (individuare prima un utente che ha almeno un prestito e poi eliminare la tupla corrispondente).**

4. **Estrarre le biblioteche in cui il giorno 1 novembre 2024 si è svolto il numero massimo di prestiti.**

5. **Estrarre, per ogni biblioteca, l’elenco degli utenti che nell’anno 2023 hanno preso in prestito più di 10 libri.**

6. **Estrarre i docenti che hanno preso in prestito solo libri di informatica della casa editrice “Zanichelli”.**

7. **Estrarre per ogni libro il numero totale di volte in cui è stato prestato, mantenendo nel risultato con numero associato pari a 0 anche i libri che non sono stati mai dati in prestito.**

8. **Estrarre gli utenti per cui c’è più di una biblioteca in cui preso in prestito più di due libri.**

**NOTA IMPORTANTE:**  
Tutte le operazioni di manipolazione dei dati (punti 1-3) devono essere scritte e valutate sulla base di dati il cui schema è definitivo, ovvero sulla base di dati su cui sono già state effettuate le operazioni di definizione dei dati stessi.   
**NON SI PUÒ USARE IL DUMP DELLO SCHEMA.**

## 2. INDICAZIONI GENERALI
Le specifiche fornite sono da considerarsi specifiche minime. Laddove lo studente lo reputi necessario, è possibile ampliarle, in modo che la base di dati mantenga anche informazioni attualmente non previste.

Il progetto dovrà prevedere le seguenti fasi:

1. **Progettare uno schema ER comprensivo di:**
   - (a) Nomi di entità e associazioni
   - (b) Elenco di attributi di entità e associazioni
   - (c) Identificatori primari delle entità
   - (d) Cardinalità delle associazioni
   - (e) Eventuali generalizzazioni

2. **Produrre lo schema ER derivante dalla eliminazione delle eventuali generalizzazioni.**

3. **Tradurre lo schema ER ottenuto al punto precedente nel modello relazionale**, specificando per ciascuna tabella ottenuta:
   - Nome della tabella
   - Attributi con relativi tipi di dati
   - Identificatori primari
   - Vincoli di integrità (ad esempio, NOT NULL, UNIQUE, CHECK)
   - Vincoli di integrità referenziale (relazioni tra tabelle, FOREIGN KEY)

   La traduzione deve essere fedele allo schema ER progettato.

4. **Specificare dettagliatamente TUTTI i vincoli di integrità referenziale** che devono essere inseriti all’interno della base di 
    dati al fine di garantirne la consistenza, prima di effettuare l’inserimento delle tuple.     
    Questo include la definizione di chiavi esterne (FOREIGN KEY) e le azioni da intraprendere in caso di violazione del vincolo (ad esempio, azioni ON DELETE CASCADE, ON UPDATE RESTRICT).    
    **NON SI POSSONO DEFINIRE OPERAZIONI DI MANIPOLAZIONE DI DATI SU TABELLE LA CUI STRUTTURA VIENE MODIFICATA SUCCESSIVAMENTE.**  

5. **Indicare se devono essere inseriti vincoli aggiuntivi non previsti dal modello.**    
    Se il modello relazionale richiede l’aggiunta di vincoli non previsti dal modello ER, ad esempio un vincolo di unicità su un attributo, devi specificarli.    

6. **Produrre il database in MySQL.**    
   Il database deve contenere tutte le tabelle individuate nella fase di progetto.    
   **LA STRUTTURA DEL DATABASE VA COMPLETAMENTE SPECIFICATA PRIMA DELL’INSERZIONE, CANCELLAZIONE E AGGIORNAMENTO DELLE TUPLE.**        
   In particolare, devono essere definiti tutti i vincoli di integrità necessari affinché la base di dati modelli correttamente la realtà e per i vincoli di integrità referenziale vanno definite opportune politiche di rimedio alle violazioni.    
   Il database va consegnato sotto forma di un unico file di testo contenente tutti i comandi SQL necessari per formare le tabelle, inserire i dati in queste ultime ed effettuare tutte le operazioni richieste.    
   **NEL CASO IN CUI LA COMPILAZIONE DEL FILE DIA LUOGO AD ERRORE, IL PROGETTO NON VERRÀ CORRETTO.**  

7. **Le interrogazioni vanno scritte in un file separato.**    
   Si verifichi che le interrogazioni restituiscano i risultati aspettati.    
   **NEL CASO IN CUI LA COMPILAZIONE DEL FILE DIA LUOGO AD ERRORE, IL PROGETTO NON VERRÀ CORRETTO.**    
   In particolare, dovranno essere restituiti tutti i risultati delle interrogazioni sul database realizzato.     
   Ci dovrà quindi essere uno o più file che contengono il risultato dell’esecuzione delle istruzioni `SELECT`.    
   Nomi di tabelle, campi, etc. possono essere scelti a piacere.
