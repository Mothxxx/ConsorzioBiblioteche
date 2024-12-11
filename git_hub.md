# Comandi git hub 

1. Il Collaboratore si collega al Repository

Il tuo collaboratore dovrà seguire questi passaggi per clonare il repository e iniziare a lavorare sul progetto:    
- Clonare il repository remoto:  
    Se il tuo collaboratore ha già configurato Git, dovrà eseguire il comando per clonare il repository:  

    `git clone https://github.com/Mothxxx/ConsorzioBiblioteche.git`  

    In alternativa, può utilizzare l’interfaccia grafica di GitHub Desktop per fare questa operazione.  

2. Navigare nella cartella del progetto:
    Dopo aver clonato il repository, il collaboratore può entrare nella cartella del progetto:
    `cd nome_del_repo`

3.Aggiornare il progetto con le modifiche dal repository remoto:
    Prima di iniziare a lavorare, il collaboratore dovrebbe assicurarsi di avere l’ultima versione del progetto:
    `git pull origin main`

4. Quando fai modifiche:

- `git add .`: Aggiungi i file modificati o nuovi al tuo staging area.
- `git commit -m "Descrizione delle modifiche"`: Committi le modifiche (una versione del lavoro che hai fatto).
- `git push`: Spingi le modifiche nel repository remoto su GitHub, in modo che l’altro membro del team possa vederle o 
              `git push origin main`.
 

6. Flusso di lavoro giornaliero:

    1. Ogni membro lavora sul proprio computer e modifica i file.  
    2. Quando un membro finisce una parte del lavoro, fa un commit locale (git commit) e poi spinge le modifiche al repository remoto con git push.  
    3. L’altro membro, prima di iniziare a lavorare, esegue un git pull per ottenere l’ultima versione dei file aggiornati.  
    Se ci sono conflitti, Git lo avviserà, ma questi possono essere risolti facilmente.  
    4. Il processo continua iterativamente.    

7. In sintesi:

- `git add <nome_file>`: Per aggiungere le modifiche.    
- `git commit`: Per salvare le modifiche localmente.    
- `git push:` Per inviare le modifiche su GitHub.    
- `git pull`: Per ricevere le modifiche da GitHub prima di iniziare a lavorare.    
- `git status`: per controllare i file modificati che non sono ancora stati aggiunti al commit.