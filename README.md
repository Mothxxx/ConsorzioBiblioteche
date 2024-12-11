# Sistema Informativo per la Gestione di un Consorzio di Biblioteche Universitarie

## 1. Obiettivo del progetto
Il progetto prevede la realizzazione di un sistema informativo per un consorzio di biblioteche universitarie. Ogni biblioteca gestisce un insieme di libri e risorse, connessi tra loro tramite relazioni che devono essere modellate in un database relazionale.

## 2. Analisi dei Requisiti
- **Biblioteche**: Ogni biblioteca ha un codice univoco, una città di ubicazione, e orari di apertura variabili.
- **Libri**: Ogni libro è caratterizzato da titolo, autori, ISBN, e altre informazioni. I libri appartengono a categorie e possono avere più edizioni.
- **Edizioni e Copie**: Ogni edizione è identificata da un codice univoco e può avere più copie, ciascuna con una collocazione precisa.
- **Autori e Case Editrici**: Ogni autore è identificato da nome, cognome, e altre informazioni. Le case editrici sono identificate da partita IVA, capitale sociale e indirizzo.
- **Utenti**: Gli utenti sono studenti, docenti, dottorandi, e ricercatori, e sono registrati con i loro dati anagrafici e informazioni professionali.
- **Prestiti**: Ogni prestito è associato a un utente, una copia di libro, e una data di inizio e fine prestito.
- **Fornitori**: Ogni libro è acquistato tramite un fornitore, identificato da informazioni relative a partita IVA, capitale sociale, e indirizzo.

## 3. Fasi del Progetto

### 3.1. Progettazione dello schema ER
- Creazione di uno schema ER che descriva entità, associazioni, identificatori primari e vincoli di integrità.

### 3.2. Traduzione in modello relazionale
- Traduzione dello schema ER in un modello relazionale, includendo tabelle e vincoli di integrità.

### 3.3. Creazione e popolamento del database
- Scrittura dei comandi SQL per creare il database, le tabelle e inserire almeno 10 tuple per ogni tabella.

### 3.4. Sviluppo delle interrogazioni
- Scrittura delle interrogazioni SQL per soddisfare le operazioni richieste nel progetto.

### 3.5. Documentazione e Risultati
- Documentazione dettagliata delle operazioni e dei risultati ottenuti, compreso il diagramma ER e il file PDF con la relazione finale.

## 4. Requisiti per l'ambiente di lavoro
- **MySQL**: Il database deve essere sviluppato su MySQL.
- **Strumenti di sviluppo**: Utilizzo di Visual Studio o qualsiasi IDE preferito per scrivere il codice e gestire il progetto.

## 5. Come eseguire il progetto
1. Creare un database MySQL utilizzando il file `schema.sql` per definire la struttura.
2. Eseguire i comandi di inserimento dati dal file `dati.sql`.
3. Scrivere e eseguire le interrogazioni nel file `query.sql` per ottenere i risultati richiesti.
4. Salvare i risultati delle interrogazioni nel file `risultati/risultati_query.txt`.
5. Creare il diagramma ER e salvarlo in formato PNG (`ER_diagram.png`).
6. Scrivere la relazione finale del progetto in un file PDF (`relazione.pdf`).
