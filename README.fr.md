# Team Ajan

🌐 [Türkçe](README.md) · [English](README.en.md) · [All languages](LANGUAGES.md)

## À quoi ça sert

Il fait examiner un de vos travaux (code, calcul d'ingénierie, projet d'architecture, conception de produit / d'interface, devoir, recherche, texte, plan) non pas par un seul regard, mais par des « équipes » distinctes qui se contrôlent mutuellement ; si vous le souhaitez, il le fait corriger jusqu'à ce qu'il ne reste plus d'erreur. C'est un paquet de plugin pour Claude Code. Il contient deux sortes de fichiers : **agent** (instruction décrivant comment travaille une équipe) et **skill** (instruction décrivant comment Claude dirige les équipes).

Le guide des domaines (`skills/takim-dongu/sablonlar/alanlar.md`) indique aux équipes quoi regarder dans ces domaines : code, ingénierie, mécanique, mécatronique, électricité, industrie lourde, architecture, conception et design, explication de cours et devoirs, présentation, recherche, documentation, médecine, droit, politique, histoire, musique. En médecine et en droit, les équipes ne donnent ni diagnostic, ni traitement, ni avis juridique ; elles examinent seulement le texte et ses sources, et le résultat porte la mention « consulter un spécialiste ».

## Installation

1. Si vous avez reçu le paquet sous forme de fichier compressé (zip), extrayez-le d'abord dans un dossier.
2. Double-cliquez sur `kur.cmd`. Vous voyez le message « Kuruldu » (installé) à l'écran.
3. Fermez Claude et rouvrez-le.

`kur.cmd` copie seulement les fichiers d'agents et les trois dossiers de skills dans le dossier utilisateur de Claude (`%USERPROFILE%\.claude`) ; il remplace les anciens de même nom, ne mettez donc pas vos propres fichiers dans ces trois dossiers ni sous ces noms. Il affiche le dossier cible à l'écran. Quand une nouvelle version arrive, il suffit de relancer le même fichier. Les autres méthodes d'installation sont tout en bas.

## Votre première phrase après l'installation

Ouvrez Claude dans le dossier qui contient le fichier à examiner et tapez l'une des phrases suivantes. La phrase doit contenir le mot **« takım »** (équipe) ; sinon, les équipes ne s'activent pas.

| Ce que vous voulez | La phrase à taper |
|---|---|
| Examiner seulement, sans toucher à mon fichier | `fais examiner rapor.md par les équipes, sans y toucher` |
| Examiner et corriger | `que les équipes corrigent hesap.md jusqu'à ce qu'il ne reste plus d'erreur` |
| Se concentrer sur une seule question | `équipes, regardez seulement ceci : pourquoi ce test échoue-t-il de temps en temps ?` |
| L'avis d'une seule équipe | `équipe rouge, attaque ce devoir` · `regarde avec les yeux de l'équipe jaune` · `équipe turquoise, cherche le gaspillage` |
| Tenir compte aussi de ma note | `donne ceci aux équipes comme note : …` |
| Où elles en sont | `où en sont les équipes ?` |
| Reprendre là où elles se sont arrêtées · arrêter | `équipes, continuez` · `arrête les équipes` |

Les déclencheurs des skills sont écrits en turc ; les demandes contenant « takım » / « takımlar » les déclenchent de façon fiable ; les demandes dans d'autres langues peuvent fonctionner mais n'ont pas été testées.

Claude donne d'abord un court résumé (ce qu'il a compris, ce qu'il a supposé, combien d'équipes travailleront pendant au plus combien de tours) et commence. Pendant le travail, il peut demander la permission d'écrire des fichiers et d'exécuter des commandes ; le nombre de fois qu'il le demandera n'a pas encore été mesuré. Vous pouvez dire oui aux permissions d'écriture dans le dossier `takim` ; si vous n'êtes pas sûr d'une permission de commande, dites non, et cette vérification sera signalée comme « n'a pas pu être vérifiée ».

## Ce qui arrive à votre fichier

- **Si vous dites « examiner », votre fichier ne change pas.** Les équipes ont pour consigne d'écrire rapports et journaux seulement dans leur propre dossier `takim` (« examen seul ») ; une copie de votre fichier est quand même placée dans le dossier `takim\yedek\`.
- **Si vous dites « corriger »,** Claude place d'abord une copie de votre fichier dans le dossier `takim\yedek\` et vous dit « votre fichier va changer, la sauvegarde est ici ». Seule l'équipe Bleue écrit dans votre fichier.
- Si votre demande est ambiguë, Claude ne touche pas à votre fichier.
- Il n'a pas été vérifié que les équipes peuvent lire les fichiers Word ou PDF ; Claude le dit au début et travaille sur une copie convertie en texte.

## Quand ça se termine

Si vous avez dit « examiner », cela se termine après un seul tour d'examen : Claude explique ce qu'il a trouvé et demande s'il faut corriger. Si vous avez dit « corriger », cela se termine quand les erreurs trouvées ont été corrigées et les corrections revérifiées, et quand la façon de clore chaque point inachevé a été écrite. Cela peut aussi s'arrêter avant la fin (par exemple quand le nombre maximal de tours, le « plafond de tours », est atteint, ou quand surgit quelque chose que vous devez décider) ; quand cela s'arrête, Claude explique pourquoi et pose la question. La liste des cas d'arrêt se trouve dans la section 8 des règles.

La durée d'un tour n'a pas été mesurée ; plus il y a d'équipes, plus la durée et l'usage augmentent.

## Les équipes

| Équipe | Agent | Ce qu'elle fait |
|---|---|---|
| 🔵 Bleue | `mavi-yazar` | Écrit l'œuvre, mène chaque objection à une conclusion |
| 🔴 Rouge | `kirmizi-saldirgan` | Tente de démolir les affirmations de l'œuvre |
| 🩷 Rose | `pembe-denetci` | Contrôle les constats, clôt le décompte |
| 🟣 Violette | `mor-sorgucu` | Contrôle la compréhension, pose des questions difficiles, enquête sur la cause |
| 🟢 Verte | `yesil-gercek` | Vérifie les informations externes à la source primaire, fait la recherche préalable |
| 🟠 Orange | `turuncu-deneyci` | Exécute de ses propres mains, recalcule |
| 🩶 Grise | `gri-sadelestirici` | Demande « est-ce vraiment nécessaire », garde le cap |
| ⚫ Noire | `siyah-hafiza` | Attrape l'oublié et ce qui a régressé ; c'est la porte |
| ⚪ Blanche | `beyaz-kayitci` | Vérifie ce qui a été fait, enregistre le travail sans responsable et la trace |
| 🟡 Jaune | `sari-kullanici` | Essaie l'œuvre avec les yeux de la personne qui l'utilisera |
| 🩵 Turquoise | `turkuaz-verimlilik` | Trouve le gaspillage de tokens, de lectures et d'appels et le réduit au minimum (ajoutée à une taille) |

L'« œuvre » est votre fichier ou travail examiné. L'écran de Claude ne reconnaît que huit couleurs pour les équipes ; c'est pourquoi la Grise apparaît en cyan, et la Noire et la Blanche n'ont pas de couleur. Reconnaissez une équipe à son nom.

## Tailles et modes

La **taille** est le nombre d'équipes qui travaillent. Si vous ne la précisez pas, Claude la choisit selon l'ampleur du travail et l'annonce.

| Taille | Équipes | Plafond de tours | Pour quoi |
|---|---|---|---|
| Rapide | Bleue, Rouge, Rose | 2 | Petit travail, un seul fichier, contrôle rapide |
| Normale | + Verte, Grise, Orange | 5 | La plupart des travaux |
| Complète | + Violette, Jaune, Noire, Blanche | 10 | Travail critique, durable ou coûteux à annuler |

On peut ajouter des équipes une à une à une taille (« taille rapide, ajoute aussi l'équipe jaune ») ; Claude ajoute de lui-même la Jaune pour les devoirs et les textes, et l'Orange pour un travail qui demande une exécution, et le dit. Les plafonds de tours sont des valeurs de départ non testées ; il suffit de le dire pour les changer.

Le **mode** est ce qui est regardé : **large** (tout le travail) ou **focalisé** (une seule question). Si vous posez une seule question, Claude choisit le mode focalisé.

## Où est le résultat

- Claude vous présente le résultat dans la conversation : une seule phrase en haut, un court résumé en dessous ; ce qui est **prouvé** et ce qui est *estimé* est dit séparément ; sa question éventuelle est tout en bas.
- Un dossier `takim` est créé dans le dossier où vous travaillez. C'est le journal propre des équipes ; vous n'avez pas besoin de le lire. La version initiale de votre fichier est aussi dans ce dossier (`takim\yedek\`) ; si les corrections vous satisfont, vous pouvez la supprimer une fois le travail terminé.
- Pour donner une note ou un rapport aux équipes, vous pouvez déposer le fichier dans le dossier `takim\gelen\`.
- Si vous lancez un nouveau travail dans le même dossier, les anciens enregistrements ne sont pas supprimés ; ils sont déplacés sous `takim\arsiv\`.

Texte complet des règles : `skills/takim-dongu/sablonlar/kurallar.md`.

## Désinstallation

- Si vous avez installé avec `kur.cmd` : double-cliquez sur `kaldir.cmd`. Il supprime seulement les fichiers d'agents du paquet et les trois dossiers de skills ; il ne touche pas aux dossiers `takim` de vos projets. S'il reste un fichier qu'il n'a pas pu supprimer, il le dit à l'écran.
- Si vous l'avez installé comme plugin : tapez `/plugin` dans Claude Code et supprimez le plugin depuis la fenêtre qui s'ouvre (cette étape n'a pas été vérifiée).
- Si vous l'avez copié dans un seul projet : supprimez les fichiers copiés du dossier `.claude` de ce projet.

## Autres méthodes d'installation (avancé)

N'en utilisez qu'une. Si vous utilisez la voie plugin en plus de `kur.cmd`, les équipes apparaissent deux fois dans la liste.

**Comme plugin.** Là où il est écrit `<takim-ajan klasörünün yolu>` ci-dessous, mettez le chemin complet de ce dossier sur votre ordinateur. Dans Claude Code :

```
/plugin marketplace add <takim-ajan klasörünün yolu>
/plugin install takim-ajan@takim-ajan-yerel
```

La seconde commande ne termine pas l'installation d'elle-même : elle ouvre une fenêtre ; vous y choisissez la portée utilisateur. Il n'a pas été vérifié qu'un chemin Windows est lu correctement dans cette commande. Une fois installé comme plugin, les noms d'agents et de skills sont précédés de `takim-ajan:`.

**Dans un seul projet.** Copiez le contenu du dossier `agents` dans le dossier `.claude\agents` du projet, et les trois dossiers contenus dans le dossier `skills` dans le dossier `.claude\skills` du projet. Les trois dossiers de skills doivent être copiés ensemble.

## Contenu du paquet

| Emplacement | Contenu |
|---|---|
| `agents/` | Les fichiers d'instructions des équipes |
| `skills/` | Trois skills : `takim-dongu` (boucle et modèles), `takim-tek` (équipe unique), `takim-durum` (état) |
| `tests/` | Le contrôle propre du paquet (`tests/denetle.ps1`), des scénarios de pression et trois essais à blanc |
| `docs/` | `docs/koken.md` (d'où il vient), `docs/arastirma.md` (les méthodes sur lesquelles il s'appuie) |
| `kur.cmd`, `kaldir.cmd` | Installer / désinstaller par double-clic |

Version 0.3.0. Ce qui n'a pas encore été testé est listé à la fin de `docs/koken.md`.

Licence : MIT (LICENSE)
