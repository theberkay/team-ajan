🌐 [Türkçe](README.md) · [English](README.en.md) · [All languages](LANGUAGES.md)

# Team Ajan

## À quoi ça sert

Il fait examiner votre travail (code, calcul d'ingénierie, projet d'architecture, conception de produit / d'interface, devoir, recherche, texte, plan) non par un seul regard, mais par des « équipes » distinctes qui se contrôlent mutuellement ; si vous le souhaitez, il le fait corriger jusqu'à ce qu'il ne reste plus d'erreur. C'est un paquet d'extension pour Claude Code. Il contient deux types de fichiers : les **agents** (instructions décrivant comment une équipe travaille) et les **compétences** (instructions décrivant comment Claude gère les équipes).

## Installation

1. Si vous avez reçu le paquet sous forme de fichier compressé (zip), extrayez-le d'abord dans un dossier.
2. Double-cliquez sur le fichier `kur.cmd`. Vous devez voir « Kuruldu » à l'écran.
3. Fermez Claude, puis rouvrez-le.

`kur.cmd` copie uniquement les fichiers d'agents et les trois dossiers de compétences dans le dossier utilisateur de Claude (`%USERPROFILE%\.claude`) ; il remplace les anciens fichiers portant le même nom, donc ne placez pas vos propres fichiers dans ces trois dossiers ni sous ces noms. Il affiche le dossier cible à l'écran. Lorsqu'une nouvelle version sort, il suffit de relancer le même fichier. Les autres méthodes d'installation se trouvent tout en bas.

## Votre première phrase après l'installation

Ouvrez Claude dans le dossier qui contient le fichier à examiner et tapez l'une des phrases suivantes. La phrase doit contenir le mot **« takım »** (équipe) ; sinon, les équipes ne s'activent pas.

| Ce que vous voulez | La phrase à taper |
|---|---|
| Qu'elles examinent seulement, sans toucher à mon fichier | `fais examiner rapport.md par les équipes, sans qu'elles y touchent` |
| Qu'elles examinent et corrigent | `que les équipes corrigent calcul.md jusqu'à ce qu'il ne reste plus d'erreur` |
| Qu'elles se concentrent sur une seule question | `que les équipes regardent seulement ceci : pourquoi ce test échoue-t-il de temps en temps ?` |
| L'avis d'une seule équipe | `que l'équipe rouge attaque ce devoir` · `regarde avec les yeux de l'équipe jaune` · `que l'équipe turquoise cherche le gaspillage` |
| Qu'elles tiennent compte de ma note | `donne ceci aux équipes comme note : …` |
| Où elles en sont | `où en sont les équipes ?` |
| Reprendre là où elles se sont arrêtées · s'arrêter | `que les équipes continuent` · `arrête les équipes` |

Les déclencheurs des compétences sont rédigés en turc ; les demandes contenant « takım » / « takımlar » les déclenchent de façon fiable ; les demandes dans d'autres langues peuvent fonctionner mais n'ont pas été testées.

Claude donne d'abord un court résumé (ce qu'il a compris, ce qu'il a supposé, combien d'équipes travailleront pendant au plus combien de tours), puis commence. Pendant le travail, il peut demander l'autorisation d'écrire des fichiers et d'exécuter des commandes ; le nombre de demandes n'a pas encore été mesuré. Vous pouvez accepter les autorisations d'écriture dans le dossier `takim` ; si vous avez un doute sur une autorisation de commande, refusez, et cette vérification sera signalée comme « n'a pas pu être vérifiée ».

## Ce qui arrive à votre fichier

- **Si vous dites « examiner », votre fichier ne change pas.** Il est demandé aux équipes d'écrire leurs rapports et leur journal uniquement dans leur propre dossier `takim` (« examen seul ») ; une copie de votre fichier est tout de même placée dans le dossier `takim\yedek\`.
- **Si vous dites « corriger »,** Claude place d'abord une copie de votre fichier dans le dossier `takim\yedek\` et vous dit « votre fichier va changer, la sauvegarde est ici ». Seule l'équipe Bleue écrit dans votre fichier.
- Si votre demande est ambiguë, Claude ne touche pas à votre fichier.
- Il n'a pas été vérifié que les équipes peuvent lire les fichiers Word ou PDF ; Claude le dit au début et travaille sur une copie convertie en texte.

## Quand ça se termine

Si vous avez dit « examiner », cela se termine après un seul tour d'examen : Claude explique ce qui a été trouvé et demande s'il faut corriger. Si vous avez dit « corriger », cela se termine quand les erreurs trouvées ont été corrigées, que les corrections ont été revérifiées et que la manière de clore chaque point resté inachevé a été écrite. Cela peut aussi s'arrêter avant la fin (par exemple quand le nombre maximal de tours, le « plafond de tours », est atteint, ou quand surgit une question que vous devez trancher) ; dans ce cas, Claude explique pourquoi et vous demande. La liste des cas d'arrêt se trouve dans la section 8 des règles.

La durée d'un tour n'a pas été mesurée ; plus il y a d'équipes, plus la durée et la consommation augmentent.

## Les équipes

| Équipe | Agent | Ce qu'elle fait |
|---|---|---|
| 🔵 Bleue | `mavi-yazar` | Écrit l'œuvre, mène chaque objection à une conclusion |
| 🔴 Rouge | `kirmizi-saldirgan` | Essaie de mettre en défaut les affirmations de l'œuvre |
| 🩷 Rose | `pembe-denetci` | Contrôle les constats, clôt le décompte |
| 🟣 Violette | `mor-sorgucu` | Contrôle la compréhension, pose des questions difficiles, enquête sur les causes |
| 🟢 Verte | `yesil-gercek` | Vérifie les informations extérieures auprès de sources primaires, fait des recherches préalables |
| 🟠 Orange | `turuncu-deneyci` | Exécute elle-même, recalcule |
| 🩶 Grise | `gri-sadelestirici` | Demande « est-ce vraiment nécessaire ? », préserve l'objectif |
| ⚫ Noire | `siyah-hafiza` | Repère ce qui a été oublié et ce qui s'est de nouveau dégradé ; c'est la porte |
| ⚪ Blanche | `beyaz-kayitci` | Vérifie ce qui a été fait, consigne le travail sans responsable et la traçabilité |
| 🟡 Jaune | `sari-kullanici` | Essaie l'œuvre avec les yeux de la personne qui l'utilisera |
| 🩵 Turquoise | `turkuaz-verimlilik` | Trouve le gaspillage de tokens, de lectures et d'appels et le réduit au minimum (ajoutée à une taille) |

L'« œuvre » est le fichier ou le travail examiné. L'écran de Claude ne reconnaît que huit couleurs pour les équipes ; c'est pourquoi la Grise apparaît en cyan et la Noire et la Blanche n'ont pas de couleur. Reconnaissez une équipe à son nom.

## Tailles et modes

La **taille** correspond au nombre d'équipes qui travailleront. Si vous ne la précisez pas, Claude la choisit selon l'ampleur du travail et vous l'indique.

| Taille | Équipes | Plafond de tours | Pour |
|---|---|---|---|
| Rapide | Bleue, Rouge, Rose | 2 | Petit travail, un seul fichier, contrôle rapide |
| Normale | + Verte, Grise, Orange | 5 | La plupart des travaux |
| Complète | + Violette, Jaune, Noire, Blanche | 10 | Travail critique, durable ou coûteux à annuler |

On peut ajouter des équipes une à une à une taille (« taille rapide, ajoute aussi l'équipe jaune ») ; Claude ajoute de lui-même la Jaune pour les devoirs et les textes, et l'Orange pour les travaux qui nécessitent une exécution, et le signale. Les plafonds de tours sont des valeurs de départ non testées ; pour les changer, il suffit de le dire.

Le **mode** correspond à ce qui sera examiné : **large** (l'ensemble du travail) ou **ciblé** (une seule question). Si vous posez une seule question, Claude choisit le mode ciblé.

## Où se trouve le résultat

- Claude vous présente le résultat dans la conversation : une phrase en haut, un court résumé en dessous ; ce qui est **prouvé** et ce qui est *une estimation* sont indiqués séparément ; s'il a une question, elle figure tout en bas.
- Un dossier `takim` est créé dans le dossier où vous travaillez. C'est le journal propre aux équipes ; vous n'avez pas besoin de le lire. La version initiale de votre fichier se trouve aussi dans ce dossier (`takim\yedek\`) ; si les corrections vous conviennent, vous pouvez la supprimer une fois le travail terminé.
- Pour transmettre une note ou un rapport aux équipes, vous pouvez déposer le fichier dans le dossier `takim\gelen\`.
- Si vous lancez un nouveau travail dans le même dossier, les anciens enregistrements ne sont pas supprimés ; ils sont déplacés sous `takim\arsiv\`.

Texte complet des règles : `skills/takim-dongu/sablonlar/kurallar.md`.

## Désinstallation

- Si vous avez installé avec `kur.cmd` : double-cliquez sur le fichier `kaldir.cmd`. Il supprime uniquement les fichiers d'agents du paquet et les trois dossiers de compétences ; il ne touche pas aux dossiers `takim` de vos projets. S'il reste un fichier qu'il n'a pas pu supprimer, il l'indique à l'écran.
- Si vous l'avez installé comme extension : tapez `/plugin` dans Claude Code et retirez l'extension depuis la fenêtre qui s'ouvre (cette étape n'a pas été vérifiée).
- Si vous l'avez copié dans un seul projet : supprimez les fichiers copiés du dossier `.claude` de ce projet.

## Autres méthodes d'installation (avancé)

N'en utilisez qu'une. Si vous utilisez aussi la méthode par extension en plus de `kur.cmd`, les équipes apparaissent deux fois dans la liste.

**Comme extension.** À l'endroit où figure `<takim-ajan klasörünün yolu>` ci-dessous, mettez le chemin complet de ce dossier sur votre ordinateur. Dans Claude Code :

```
/plugin marketplace add <takim-ajan klasörünün yolu>
/plugin install takim-ajan@takim-ajan-yerel
```

La deuxième commande ne termine pas l'installation à elle seule : elle ouvre une fenêtre où vous choisissez la portée utilisateur. Il n'a pas été vérifié qu'un chemin Windows est correctement lu dans cette commande. Une fois installé comme extension, les noms des agents et des compétences sont précédés de `takim-ajan:`.

**Dans un seul projet.** Copiez le contenu du dossier `agents` dans le dossier `.claude\agents` du projet, et les trois dossiers contenus dans le dossier `skills` dans le dossier `.claude\skills` du projet. Les trois dossiers de compétences doivent être copiés ensemble.

## Contenu du paquet

| Emplacement | Contenu |
|---|---|
| `agents/` | Les fichiers d'instructions des équipes |
| `skills/` | Trois compétences : `takim-dongu` (boucle et modèles), `takim-tek` (une seule équipe), `takim-durum` (état) |
| `tests/` | Le contrôle propre au paquet (`tests/denetle.ps1`), des scénarios de pression et trois essais à blanc |
| `docs/` | `docs/koken.md` (d'où il vient), `docs/arastirma.md` (les méthodes sur lesquelles il repose) |
| `kur.cmd`, `kaldir.cmd` | Installer / désinstaller par double-clic |

Version 0.2.4. Ce qui n'a pas encore été testé est listé à la fin de `docs/koken.md`.
