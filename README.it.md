# Team Ajan

🌐 [Türkçe](README.md) · [English](README.en.md) · [All languages](LANGUAGES.md)

## A cosa serve

Fa esaminare un tuo lavoro (codice, calcolo ingegneristico, progetto architettonico, design di prodotto / interfaccia, compito, ricerca, testo, piano) non da un solo occhio, ma da «squadre» separate che si controllano a vicenda; se vuoi, lo fa correggere finché non resta alcun errore. È un pacchetto plugin per Claude Code. Contiene due tipi di file: **agente** (istruzione che descrive come lavora una squadra) e **skill** (istruzione che descrive come Claude gestisce le squadre).

La guida agli ambiti (`skills/takim-dongu/sablonlar/alanlar.md`) dice alle squadre cosa guardare in questi ambiti: codice, ingegneria, meccanica, meccatronica, elettrotecnica, industria pesante, architettura, progettazione e design, spiegazione di argomenti e compiti, presentazione, ricerca, documentazione, medicina, diritto, politica, storia, musica. In medicina e diritto le squadre non danno diagnosi, cure né pareri legali; esaminano solo il testo e le sue fonti, e il risultato porta la nota «consultare un esperto».

## Installazione

1. Se hai ricevuto il pacchetto come file compresso (zip), estrailo prima in una cartella.
2. Fai doppio clic su `kur.cmd`. Vedrai a schermo il messaggio «Kuruldu» (installato).
3. Chiudi Claude e riaprilo.

`kur.cmd` copia solo i file degli agenti e le tre cartelle delle skill nella cartella utente di Claude (`%USERPROFILE%\.claude`); sovrascrive i vecchi con lo stesso nome, quindi non mettere file tuoi in quelle tre cartelle né con quei nomi. Mostra a schermo la cartella di destinazione. Quando arriva una nuova versione, basta eseguire di nuovo lo stesso file. Altri metodi di installazione sono in fondo.

## La tua prima frase dopo l'installazione

Apri Claude nella cartella che contiene il file da esaminare e scrivi una delle frasi seguenti. La frase deve contenere la parola **«takım»** (squadra); altrimenti le squadre non si attivano.

| Cosa vuoi | La frase da scrivere |
|---|---|
| Solo esaminare, senza toccare il mio file | `fai esaminare rapor.md alle squadre, senza toccarlo` |
| Esaminare e correggere | `le squadre correggano hesap.md finché non resta alcun errore` |
| Concentrarsi su una sola domanda | `squadre, guardate solo questo: perché questo test ogni tanto fallisce?` |
| Il parere di una sola squadra | `squadra rossa, attacca questo compito` · `guardalo con gli occhi della squadra gialla` · `squadra turchese, cerca gli sprechi` |
| Tenere conto anche della mia nota | `dai questo alle squadre come nota: …` |
| A che punto sono | `a che punto sono le squadre?` |
| Riprendere da dove si sono fermate · fermarsi | `squadre, continuate` · `ferma le squadre` |

I trigger delle skill sono scritti in turco; le richieste che contengono «takım» / «takımlar» li attivano in modo affidabile; le richieste in altre lingue possono funzionare ma non sono state testate.

Claude dà prima un breve riepilogo (cosa ha capito, cosa ha presupposto, quante squadre lavoreranno al massimo per quanti turni) e inizia. Mentre lavora può chiedere il permesso di scrivere file ed eseguire comandi; quante volte lo chiederà non è ancora stato misurato. Puoi dire sì ai permessi di scrittura nella cartella `takim`; se non sei sicuro di un permesso di comando, di' no, e quella verifica viene riportata come «non è stato possibile verificare».

## Cosa succede al tuo file

- **Se dici «esaminare», il tuo file non cambia.** Alle squadre viene detto di scrivere rapporti e registri solo nella propria cartella `takim` («solo esame»); una copia del tuo file viene comunque salvata nella cartella `takim\yedek\`.
- **Se dici «correggere»,** Claude salva prima una copia del tuo file nella cartella `takim\yedek\` e ti dice «il tuo file cambierà, il backup è qui». Solo la squadra Blu scrive nel tuo file.
- Se la tua richiesta è ambigua, Claude non tocca il tuo file.
- Non è stato verificato che le squadre sappiano leggere file Word o PDF; Claude lo dice all'inizio e lavora su una copia convertita in testo.

## Quando finisce

Se hai detto «esaminare», finisce dopo un solo turno di esame: Claude spiega cosa ha trovato e chiede se correggere. Se hai detto «correggere», finisce quando gli errori trovati sono stati corretti e le correzioni ricontrollate, e quando è stato scritto come verrà chiusa ogni cosa rimasta a metà. Può anche fermarsi prima di finire (per esempio quando si raggiunge il numero massimo di turni, il «tetto di turni», o quando emerge qualcosa che devi decidere tu); quando si ferma, Claude spiega il motivo e chiede. L'elenco dei casi di arresto è nella sezione 8 delle regole.

Quanto dura un turno non è stato misurato; più squadre ci sono, più crescono durata e consumo.

## Squadre

| Squadra | Agente | Cosa fa |
|---|---|---|
| 🔵 Blu | `mavi-yazar` | Scrive l'opera, porta ogni obiezione a una conclusione |
| 🔴 Rossa | `kirmizi-saldirgan` | Cerca di smontare le affermazioni dell'opera |
| 🩷 Rosa | `pembe-denetci` | Controlla i rilievi, chiude il conteggio |
| 🟣 Viola | `mor-sorgucu` | Verifica la comprensione, fa domande difficili, indaga sulla causa |
| 🟢 Verde | `yesil-gercek` | Verifica le informazioni esterne alla fonte primaria, fa la ricerca preliminare |
| 🟠 Arancione | `turuncu-deneyci` | Esegue con le proprie mani, ricalcola |
| 🩶 Grigia | `gri-sadelestirici` | Chiede «è davvero necessario», mantiene il focus |
| ⚫ Nera | `siyah-hafiza` | Coglie ciò che è stato dimenticato e ciò che si è rotto di nuovo; è il cancello |
| ⚪ Bianca | `beyaz-kayitci` | Verifica ciò che è stato fatto, registra il lavoro senza responsabile e la traccia |
| 🟡 Gialla | `sari-kullanici` | Prova l'opera con gli occhi di chi la userà |
| 🩵 Turchese | `turkuaz-verimlilik` | Trova lo spreco di token, letture e chiamate e lo riduce al minimo (si aggiunge a una taglia) |

L'«opera» è il tuo file o lavoro in esame. Lo schermo di Claude riconosce solo otto colori per le squadre; per questo la Grigia appare ciano, e la Nera e la Bianca non hanno colore. Riconosci la squadra dal nome.

## Taglie e modalità

La **taglia** è quante squadre lavoreranno. Se non lo dici, Claude la sceglie in base alla dimensione del lavoro e te lo comunica.

| Taglia | Squadre | Tetto di turni | Per cosa |
|---|---|---|---|
| Rapida | Blu, Rossa, Rosa | 2 | Lavoro piccolo, un solo file, controllo rapido |
| Normale | + Verde, Grigia, Arancione | 5 | La maggior parte dei lavori |
| Completa | + Viola, Gialla, Nera, Bianca | 10 | Lavoro critico, di lunga durata o costoso da annullare |

Si possono aggiungere squadre una alla volta a una taglia («taglia rapida, aggiungi anche la squadra gialla»); per compiti e testi Claude aggiunge da sé la Gialla, e per lavori che richiedono esecuzione l'Arancione, e lo dice. I tetti di turni sono valori iniziali non testati; per cambiarli basta dirlo.

La **modalità** è cosa si guarda: **ampia** (tutto il lavoro) o **focus** (una sola domanda). Se fai una sola domanda, Claude sceglie la modalità focus.

## Dov'è il risultato

- Claude ti racconta il risultato in chat: una sola frase in cima, un breve riepilogo sotto; cosa è **provato** e cosa è *stima* viene detto separatamente; la sua eventuale domanda sta in fondo.
- Nella cartella in cui lavori viene creata una cartella `takim`. È il registro proprio delle squadre; non devi leggerlo. Anche la versione originale del tuo file è in questa cartella (`takim\yedek\`); se le correzioni ti soddisfano, puoi cancellarla a lavoro finito.
- Per dare una nota o un rapporto alle squadre, puoi lasciare il file nella cartella `takim\gelen\`.
- Se avvii un nuovo lavoro nella stessa cartella, i vecchi registri non vengono cancellati; vengono spostati sotto `takim\arsiv\`.

Testo completo delle regole: `skills/takim-dongu/sablonlar/kurallar.md`.

## Disinstallazione

- Se hai installato con `kur.cmd`: fai doppio clic su `kaldir.cmd`. Cancella solo i file degli agenti del pacchetto e le tre cartelle delle skill; non tocca le cartelle `takim` nei tuoi progetti. Se resta un file che non è riuscito a cancellare, lo dice a schermo.
- Se l'hai installato come plugin: scrivi `/plugin` in Claude Code e rimuovi il plugin dalla finestra che si apre (questo passaggio non è stato verificato).
- Se l'hai copiato in un solo progetto: cancella i file copiati dalla cartella `.claude` di quel progetto.

## Altri metodi di installazione (avanzato)

Usane uno solo. Se usi la via plugin insieme a `kur.cmd`, le squadre compaiono due volte nell'elenco.

**Come plugin.** Dove sotto c'è scritto `<takim-ajan klasörünün yolu>`, metti il percorso completo di questa cartella sul tuo computer. In Claude Code:

```
/plugin marketplace add <takim-ajan klasörünün yolu>
/plugin install takim-ajan@takim-ajan-yerel
```

Il secondo comando non completa da solo l'installazione: apre una finestra; lì scegli l'ambito utente. Non è stato verificato che un percorso Windows venga letto correttamente in questo comando. Quando è installato come plugin, i nomi di agenti e skill sono preceduti da `takim-ajan:`.

**In un solo progetto.** Copia il contenuto della cartella `agents` nella cartella `.claude\agents` del progetto, e le tre cartelle dentro la cartella `skills` nella cartella `.claude\skills` del progetto. Le tre cartelle delle skill vanno copiate insieme.

## Contenuto del pacchetto

| Posizione | Cosa contiene |
|---|---|
| `agents/` | I file di istruzioni delle squadre |
| `skills/` | Tre skill: `takim-dongu` (ciclo e modelli), `takim-tek` (squadra singola), `takim-durum` (stato) |
| `tests/` | Il controllo interno del pacchetto (`tests/denetle.ps1`), scenari di pressione e tre prove a secco |
| `docs/` | `docs/koken.md` (da dove viene), `docs/arastirma.md` (i metodi su cui si basa) |
| `kur.cmd`, `kaldir.cmd` | Installa / disinstalla con doppio clic |

Versione 0.3.0. Ciò che non è ancora stato testato è elencato alla fine di `docs/koken.md`.

Licenza: MIT (LICENSE)
