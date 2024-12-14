CREATE TABLE CASA_EDITRICE (
    IdEditore INT PRIMARY KEY,  -- Identificatore univoco per ogni casa editrice
    Nome VARCHAR(255) NOT NULL,  -- Nome della casa editrice
    Sede VARCHAR(255) NOT NULL,  -- Sede della casa editrice
    PIva VARCHAR(20) NOT NULL  -- Partita IVA della casa editrice (unica)
);

CREATE TABLE LIBRO (
    ISBN VARCHAR(13) PRIMARY KEY, -- ISBN è una stringa di massimo 13 caratteri
    IdEditore INT NOT NULL,    -- FK verso CASA_EDITRICE
    Titolo VARCHAR(255) NOT NULL, -- Titolo del libro
    CONSTRAINT fk_IdEditore FOREIGN KEY (IdEditore) 
        REFERENCES CASA_EDITRICE(IdEditore)  -- La FK fa riferimento a CASA_EDITRICE
        ON DELETE NO ACTION      -- Non eliminare una casa editrice se ci sono libri associati
        ON UPDATE CASCADE        -- Se l'IdEditore cambia, si aggiorna automaticamente nei libri
);

CREATE TABLE EDIZIONE (
    IdEdizione INT NOT NULL,
    Libro VARCHAR(13) NOT NULL,
    NumeroPagine INT NOT NULL,
    Costo DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (IdEdizione, Libro), -- Chiave primaria
    FOREIGN KEY (Libro) REFERENCES LIBRO(ISBN) -- Relazione con la tabella LIBRO
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT chk_costo CHECK (Costo > 0) -- Costo deve essere positivo
);

CREATE TABLE AUTORE (
    IdAutore INT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Cognome VARCHAR(255) NOT NULL,
    Nazionalità VARCHAR(255),
    LuogoNascita VARCHAR(255),
    DataNascita  DATE
);

CREATE TABLE CATEGORIA (
    IdCategoria INT PRIMARY KEY, -- PK: IdCategoria
    Nome VARCHAR(100),
    Descrizione TEXT
);

CREATE TABLE COLLANA (
    Nome VARCHAR(100) PRIMARY KEY, -- PK: Nome
    Libro VARCHAR(13), -- FK: Libro
    Descrizione TEXT,
    CONSTRAINT fk_collana_libro FOREIGN KEY (Libro) 
        REFERENCES LIBRO(ISBN) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

CREATE TABLE BIBLIOTECA (
    IdBiblioteca INT PRIMARY KEY, -- PK: IdBiblioteca
    Nome VARCHAR(255),
    Città VARCHAR(100)
);

CREATE TABLE O_SETTIMANALI (
    IdBiblioteca INT NOT NULL,
    GiornoSettimana VARCHAR(3) NOT NULL CHECK (GiornoSettimana IN ('Lun', 'Mar', 'Mer', 'Gio', 'Ven', 'Sab', 'Dom')),
    OrarioApertura TIME,
    OrarioChiusura TIME,
    PRIMARY KEY (IdBiblioteca, GiornoSettimana),
    FOREIGN KEY (IdBiblioteca) 
        REFERENCES BIBLIOTECA(IdBiblioteca)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE COPIA (
    IdCopia INT,  -- PK: IdCopia
    IdEdizione INT NOT NULL,  -- FK: IdEdizione
    PRIMARY KEY (IdCopia, IdEdizione),  -- PK: IdCopia
    FOREIGN KEY (IdEdizione) 
        REFERENCES EDIZIONE(IdEdizione)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE FORNITORE (
    PIva VARCHAR(20) PRIMARY KEY,  -- PK: PIva
    Indirizzo VARCHAR(255),
    Telefono VARCHAR(15)
);

CREATE TABLE UTENTE (
    IdUtente INT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Cognome VARCHAR(255) NOT NULL,
    CodiceFiscale VARCHAR(16) NOT NULL UNIQUE,
    Email VARCHAR(255),
    Via VARCHAR(255),
    Cap VARCHAR(255),
    NCivico INT,
    DataRegistrazione DATE,
    -- Tipo di utente (studente, dottorando, docente, ricercatore, ecc.)
    TipoUtente VARCHAR(50) NOT NULL,  -- Colonna come VARCHAR
    CHECK (TipoUtente IN ('Studente', 'Dottorando', 'Docente', 'Ricercatore')),
    -- Campi opzionali per gli utenti specifici
    Matricola VARCHAR(50) NULL,                  -- Solo per gli studenti
    AnnoIscrizione YEAR NULL,                    -- Solo per studenti e dottorandi
    CorsoDottorato VARCHAR(255) NULL,             -- Solo per i dottorandi
    DocenteRelatore VARCHAR(255) NULL,            -- Solo per i dottorandi
    SettoreScientificoDisciplinare VARCHAR(255) NULL,  -- Solo per i docenti
    Ruolo VARCHAR(255) NULL,                     -- Solo per i docenti
);

CREATE TABLE PRESTITO (
    IdPrestito INT PRIMARY KEY,
    IdUtente INT,
    IdCopia INT,
    DataInizio DATE,
    DataRestituzione DATE,
    FOREIGN KEY (IdUtente) REFERENCES UTENTE(IdUtente),
    FOREIGN KEY (IdCopia) REFERENCES COPIA(IdCopia)
);

CREATE TABLE SCRIVE (
    IdAutore INT,
    IdLibro INT,
    PRIMARY KEY (IdAutore, IdLibro),
    FOREIGN KEY (IdAutore) REFERENCES AUTORE(IdAutore),
    FOREIGN KEY (IdLibro) REFERENCES LIBRO(IdLibro)
);
CREATE TABLE RIENTRA (
    IdCategoria INT,
    IdLibro INT,
    PRIMARY KEY (IdCategoria, IdLibro),
    FOREIGN KEY (IdCategoria) REFERENCES CATEGORIA(IdCategoria),
    FOREIGN KEY (IdLibro) REFERENCES LIBRO(IdLibro)
);

CREATE TABLE COLLOCAZIONE (
    IdCopia INT,
    IdBiblioteca INT,
    NumeroScaffale INT,
    NumeroPosto INT,
    FOREIGN KEY (IdCopia) REFERENCES COPIA(IdCopia),
    FOREIGN KEY (IdBiblioteca) REFERENCES BIBLIOTECA(IdBiblioteca),
    UNIQUE (IdBiblioteca, NumeroScaffale, NumeroPosto)  -- Garanzia di unicità della collocazione
);
    
CREATE TABLE ACQUISTO (
    IdFornitore INT,
    IdBiblioteca INT,
    IdEditore INT,
    PRIMARY KEY (IdFornitore, IdBiblioteca, IdEditore),
    FOREIGN KEY (IdFornitore) REFERENCES FORNITORE(IdFornitore),
    FOREIGN KEY (IdBiblioteca) REFERENCES BIBLIOTECA(IdBiblioteca),
    FOREIGN KEY (IdEditore) REFERENCES CASA_EDITRICE(IdEditore)
);