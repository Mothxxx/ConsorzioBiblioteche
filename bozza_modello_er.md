# Entità - Relazione:

1. **Biblioteca**:
    - IdBiblioteca (PK)
    - Città
    - Orario apertura
    - Orario chiusurass
    - Orari settimanali (questa entità potrebbe essere separata in un’altra tabella per gestire gli orari giornalieri)

   *Relazioni*:  
    - Biblioteca - copie (1:N)

2. **Consorzio**:
    - IdConsorzio (PK)
    - Nome

   *Relazioni*:  
    consorzio - biblioteca (1:N);

3. **Libro**:
    - ISBN (PK)
    - titolo
    - Casa editrice (FK)
    - Autore (FK)
    - Categoria (FK)
    - collana (FK)

   *Relazioni*:   
    Libro - autore(M:N);
    Libro - categorie(M:N);
    Libro - collana(1:N);
    Libro - casa editrice(N:1);
    Libro - fornitore(N:1);

4. **Autore**:
    - IdAutore (PK)
    - Nome
    - Cognome
    - Data di nascita
    - Nazionalità

  *Relazioni*:  
    Autore - Libro (FK);

5. **Categoria**:
    - IdCategoria (PK)
    - Nome
    - descrizione

   *Relazioni*:  
    Categoria - Libro (FK);

6. **Edizione**:
    - IdEdizone (FK)
    - numero di pagine
    - costo
    - ISBN (FK)
    PK = ISBN + IdEdizione

7. **Copia**:
    - Numero copia (FK)
    - libro (FK)
    - IdBiblioteca (FK)
    - IdEdizione (FK)
    - scaffale
    - posto
    PK = libro + numero copia 
   
8. **Collana**:
    - IdCollana (PK)
    - Nome
    - descrizione

   *Relazioni*:
   Collana - libro;

9. **Utente**:
    - IdUtente (PK)
    - Nome
    - Cognome
    - Codice Fiscale
    - email
    - indirizzo (via, cap, numero civico) 
    - Data registrazione 
    - Tipo utente 
    - dati aggiuntivi:
        - **studente**: matricola, anno di iscirzione
        - **dottorando**: corso di dottorato, anno di iscrizione, docente relatore
        - **docente**: settore scientifico disciplinare, ruolo

   *Relazioni*:
    utente - prestito;


10. **Prestito**:
    - data inizio prestito 
    - data fine prestito
    - copia libro (FK)
    - IdUtente (FK)
   *Relazioni*:  
   utente - copia - prestito;

11. **Casa editrice**:
    - IdCasaEditrice (PK)
    - Nome
    - sede
    - partita IVA

   *Relazioni*:  
    Casa editrice - libro;

12. **Fornitore**:  
    - IdFornitore (PK)
    - partita IVA 
    - capitale sociale
    - indirizzo

    *Relazioni*: 
    fornitore - libro
    fornitore - biblioteca