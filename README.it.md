# Team Ajan

🌐 [Türkçe](README.md) · [English](README.en.md) · [All languages](LANGUAGES.md)

## A cosa serve

Fa esaminare un vostro lavoro (codice, calcolo ingegneristico, progetto architettonico, design di prodotto / interfaccia, compito, ricerca, testo, piano) non da un solo sguardo, ma da "team" separati che si controllano a vicenda; se volete, lo fa correggere finché non restano errori. È un pacchetto di plugin per Claude Code. Contiene due tipi di file: **agente** (istruzioni che descrivono come lavora un team) e **skill** (istruzioni che descrivono a Claude come gestire i team).

## Installazione

1. Se avete ricevuto il pacchetto come file compresso (zip), estraetelo prima in una cartella.
2. Fate doppio clic sul file `kur.cmd`. Sullo schermo deve comparire la scritta "Kuruldu".
3. Chiudete e riaprite Claude.

`kur.cmd` copia solo i file degli agenti e le tre cartelle delle skill nella cartella utente di Claude (`%USERPROFILE%\.claude`); sovrascrive le versioni precedenti con lo stesso nome, quindi non mettete file vostri in quelle tre cartelle né con quei nomi. Mostra la cartella di destinazione sullo schermo. Quando esce una nuova versione basta eseguire di nuovo lo stesso file. Gli altri metodi di installazione sono in fondo.

## La vostra prima frase dopo l'installazione

Aprite Claude nella cartella in cui si trova il file da esaminare e scrivete una delle frasi seguenti. Nella frase deve comparire la parola **"team"**; altrimenti i team non entrano in azione.

| Cosa volete | La frase da scrivere |
|---|---|
| Che si limitino a esaminare, senza toccare il mio file | `fai esaminare rapor.md ai team, senza toccarlo` |
| Che esaminino e correggano | `i team correggano hesap.md finché non restano errori` |
| Che si concentrino su una sola domanda | `i team guardino solo questo: perché questo test fallisce ogni tanto?` |
| Il parere di un solo team | `il team rosso attacchi questo compito` · `guarda con gli occhi del team giallo` · `il team turchese cerchi gli sprechi` |
| Che tengano conto anche di una mia nota | `dai questo ai team come nota: …` |
| A che punto sono | `a che punto sono i team?` |
| Che riprendano da dove erano rimasti · che si fermino | `i team continuino` · `ferma i team` |

I trigger delle skill sono scritti in turco; le richieste che contengono "takım" / "takımlar" li attivano in modo affidabile; le richieste in altre lingue possono funzionare, ma non sono state verificate.

Claude dà prima un breve riepilogo (cosa ha capito, cosa ha presupposto, quanti team lavoreranno per al massimo quanti giri) e poi inizia. Durante il lavoro può chiedere il permesso di scrivere file ed eseguire comandi; quante volte lo chiederà non è ancora stato misurato. Potete dire sì ai permessi di scrittura nella cartella `takim`; se non siete sicuri di un permesso per un comando, dite no: quella verifica verrà segnalata come "non è stato possibile controllare".

## Cosa succede al vostro file

- **Se dite "fai esaminare", il vostro file non cambia.** Ai team viene detto di scrivere rapporti e registri solo nella loro cartella `takim` ("solo esame"); una copia del vostro file viene comunque salvata nella cartella `takim\yedek\`.
- **Se dite "correggano"**, Claude salva prima una copia del vostro file nella cartella `takim\yedek\` e vi dice "il vostro file cambierà, la copia di sicurezza è qui". Sul vostro file scrive solo il team Blu.
- Se la richiesta è ambigua, Claude non tocca il vostro file.
- Non è stato verificato che i team riescano a leggere file Word o PDF; Claude lo dice all'inizio e lavora su una copia convertita in testo.

## Quando finisce

Se avete detto "fai esaminare", finisce dopo un solo giro di esame: Claude racconta cosa è stato trovato e chiede se correggere. Se avete detto "correggano", finisce quando gli errori trovati sono stati corretti e la correzione è stata riverificata, e quando per ogni cosa rimasta in sospeso è scritto come verrà chiusa. Può anche fermarsi prima (per esempio quando si raggiunge il numero massimo di giri, il "tetto dei giri", o quando emerge qualcosa su cui dovete decidere voi); quando si ferma, Claude spiega il motivo e chiede. L'elenco dei casi di arresto è nella sezione 8 delle regole.

Quanto dura un giro non è stato misurato; con più team aumentano durata e consumo.

## I team

| Team | Agente | Cosa fa |
|---|---|---|
| 🔵 Blu | `mavi-yazar` | Scrive l'opera, porta ogni obiezione a una conclusione |
| 🔴 Rosso | `kirmizi-saldirgan` | Cerca di smontare le affermazioni dell'opera |
| 🩷 Rosa | `pembe-denetci` | Controlla i rilievi, chiude il conteggio |
| 🟣 Viola | `mor-sorgucu` | Verifica la comprensione, fa domande difficili, indaga sulle cause |
| 🟢 Verde | `yesil-gercek` | Verifica le informazioni esterne alla fonte primaria, fa ricerca preliminare |
| 🟠 Arancione | `turuncu-deneyci` | Esegue con le proprie mani, ricalcola |
| 🩶 Grigio | `gri-sadelestirici` | Chiede "è davvero necessario?", mantiene il focus |
| ⚫ Nero | `siyah-hafiza` | Coglie ciò che è stato dimenticato e ciò che si è rotto di nuovo; è il cancello |
| ⚪ Bianco | `beyaz-kayitci` | Verifica ciò che è stato fatto, registra il lavoro senza responsabile e la traccia |
| 🟡 Giallo | `sari-kullanici` | Prova l'opera con gli occhi di chi la userà |
| 🩵 Turchese | `turkuaz-verimlilik` | Trova gli sprechi di token, letture e chiamate e li riduce al minimo (si aggiunge alla dimensione) |

L'"opera" è il file o il lavoro che viene esaminato. Lo schermo di Claude riconosce solo otto colori per i team; per questo il Grigio appare ciano, e Nero e Bianco non hanno colore. Riconoscete il team dal nome.

## Dimensioni e modalità

La **dimensione** è il numero di team che lavoreranno. Se non la indicate, Claude la sceglie in base alla grandezza del lavoro e ve la comunica.

| Dimensione | Team | Tetto dei giri | Per cosa |
|---|---|---|---|
| Rapida | Blu, Rosso, Rosa | 2 | Lavoro piccolo, un solo file, controllo veloce |
| Normale | + Verde, Grigio, Arancione | 5 | La maggior parte dei lavori |
| Completa | + Viola, Giallo, Nero, Bianco | 10 | Lavoro critico, di lunga durata o costoso da annullare |

Si possono aggiungere singoli team a una dimensione ("dimensione rapida, aggiungi anche il team giallo"); per compiti e testi Claude aggiunge da solo il Giallo, per i lavori che richiedono esecuzione l'Arancione, e lo dice. I tetti dei giri sono valori iniziali non verificati; per cambiarli basta dirlo.

La **modalità** è ciò che si guarda: **ampia** (l'intero lavoro) o **focalizzata** (una sola domanda). Se fate una sola domanda, Claude sceglie la modalità focalizzata.

## Dove si trova il risultato

- Claude vi racconta il risultato in chat: in cima una sola frase, sotto un breve riepilogo; ciò che è **dimostrato** e ciò che è *stima* viene detto separatamente; se ha una domanda, sta in fondo.
- Nella cartella in cui lavorate viene creata una cartella `takim`. È il registro dei team; non serve che lo leggiate. Anche la versione originale del vostro file si trova qui (`takim\yedek\`); se le correzioni vi soddisfano, potete cancellarla a lavoro finito.
- Per dare una nota o un rapporto ai team potete lasciare il file nella cartella `takim\gelen\`.
- Se avviate un nuovo lavoro nella stessa cartella, i vecchi registri non vengono cancellati; vengono spostati in `takim\arsiv\`.

Testo completo delle regole: `skills/takim-dongu/sablonlar/kurallar.md`.

## Disinstallazione

- Se avete installato con `kur.cmd`: fate doppio clic sul file `kaldir.cmd`. Cancella solo i file degli agenti del pacchetto e le tre cartelle delle skill; non tocca le cartelle `takim` nei vostri progetti. Se resta un file che non è riuscito a cancellare, lo dice sullo schermo.
- Se avete installato come plugin: in Claude Code scrivete `/plugin` e rimuovete il plugin dalla finestra che si apre (questo passaggio non è stato verificato).
- Se avete copiato in un singolo progetto: cancellate i file copiati dalla cartella `.claude` di quel progetto.

## Altri metodi di installazione (avanzati)

Usatene uno solo. Se usate sia `kur.cmd` sia il metodo plugin, i team compaiono due volte nell'elenco.

**Come plugin.** Dove sotto c'è scritto `<takim-ajan klasörünün yolu>`, mettete il percorso completo di questa cartella sul vostro computer. In Claude Code:

```
/plugin marketplace add <takim-ajan klasörünün yolu>
/plugin install takim-ajan@takim-ajan-yerel
```

Il secondo comando non completa l'installazione da solo: apre una finestra in cui scegliete l'ambito utente. Non è stato verificato che il percorso Windows venga letto correttamente in questo comando. Con l'installazione come plugin, ai nomi degli agenti e delle skill si antepone `takim-ajan:`.

**In un singolo progetto.** Copiate il contenuto della cartella `agents` nella cartella `.claude\agents` del progetto e le tre cartelle dentro `skills` nella cartella `.claude\skills` del progetto. Le tre cartelle delle skill vanno copiate insieme.

## Contenuto del pacchetto

| Posizione | Cosa contiene |
|---|---|
| `agents/` | I file di istruzioni dei team |
| `skills/` | Tre skill: `takim-dongu` (ciclo e modelli), `takim-tek` (team singolo), `takim-durum` (stato) |
| `tests/` | Il controllo interno del pacchetto (`tests/denetle.ps1`), scenari di pressione e tre prove a secco |
| `docs/` | `docs/koken.md` (da dove viene), `docs/arastirma.md` (i metodi su cui si basa) |
| `kur.cmd`, `kaldir.cmd` | Installa / disinstalla con doppio clic |

Versione 0.2.4. Ciò che non è ancora stato verificato è elencato alla fine di `docs/koken.md`.
