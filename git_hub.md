Quando fai modifiche:
- `git add .`: Aggiungi i file modificati o nuovi al tuo staging area.
- `git commit -m "Descrizione delle modifiche"`: Committi le modifiche (una versione del lavoro che hai fatto).
- `git push`: Spingi le modifiche nel repository remoto su GitHub, in modo che l’altro membro del team possa vederle.

2. Quando l’altro membro vuole vedere le modifiche:
- `git pull`: Prima di lavorare, l’altro membro fa un git pull per scaricare l’ultima versione del progetto dal repository remoto. Questo aggiorna la sua copia locale con tutte le modifiche fatte da entrambi.

Flusso di lavoro giornaliero:

1. Ogni membro lavora sul proprio computer e modifica i file.
2. Quando un membro finisce una parte del lavoro, fa un commit locale (git commit) e poi spinge le modifiche al repository remoto con git push.
3. L’altro membro, prima di iniziare a lavorare, esegue un git pull per ottenere l’ultima versione dei file aggiornati. Se ci sono conflitti, Git lo avviserà, ma questi possono essere risolti facilmente.
4. Il processo continua iterativamente.

In sintesi:

• `git add .`: Per aggiungere le modifiche.
• `git commit`: Per salvare le modifiche localmente.
• `git push:` Per inviare le modifiche su GitHub.
• `git pull`: Per ricevere le modifiche da GitHub prima di iniziare a lavorare.