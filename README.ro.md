# Team Ajan

🌐 [Türkçe](README.md) · [English](README.en.md) · [All languages](LANGUAGES.md)

## La ce folosește

Face ca o lucrare a dumneavoastră (cod, calcul ingineresc, proiect de arhitectură, design de produs / interfață, temă, cercetare, text, plan) să fie examinată nu de un singur ochi, ci de „echipe” separate care se controlează reciproc; dacă doriți, o face corectată până nu mai rămâne nicio eroare. Este un pachet de plugin pentru Claude Code. Conține două tipuri de fișiere: **agent** (instrucțiune care descrie cum lucrează o echipă) și **skill** (instrucțiune care descrie cum conduce Claude echipele).

Ghidul de domenii (`skills/takim-dongu/sablonlar/alanlar.md`) le spune echipelor la ce să se uite în aceste domenii: cod, inginerie, mecanică, mecatronică, electrotehnică, industrie grea, arhitectură, proiectare și design, explicarea materiei și teme, prezentare, cercetare, documentare, medicină, drept, politică, istorie, muzică. În medicină și drept echipele nu pun diagnostic, nu recomandă tratament și nu dau opinie juridică; examinează doar textul și sursele lui, iar rezultatul poartă nota „consultați un specialist”.

## Instalare

1. Dacă ați primit pachetul ca fișier comprimat (zip), extrageți-l mai întâi într-un dosar.
2. Faceți dublu clic pe `kur.cmd`. Pe ecran apare mesajul „Kuruldu” (instalat).
3. Închideți Claude și deschideți-l din nou.

`kur.cmd` copiază doar fișierele agenților și cele trei dosare de skill-uri în dosarul de utilizator al lui Claude (`%USERPROFILE%\.claude`); suprascrie fișierele vechi cu același nume, așa că nu puneți fișiere proprii în aceste trei dosare sau sub aceste nume. Afișează pe ecran dosarul țintă. Când apare o versiune nouă, ajunge să rulați din nou același fișier. Alte metode de instalare sunt la final.

## Prima dumneavoastră frază după instalare

Deschideți Claude în dosarul în care se află fișierul de examinat și scrieți una dintre frazele următoare. Fraza trebuie să conțină cuvântul **„takım”** (echipă); altfel echipele nu se activează.

| Ce doriți | Fraza de scris |
|---|---|
| Doar examinare, fără să-mi atingă fișierul | `pune echipele să examineze rapor.md, fără să-l atingă` |
| Examinare și corectare | `echipele să corecteze hesap.md până nu mai rămâne nicio eroare` |
| Concentrare pe o singură întrebare | `echipe, uitați-vă doar la asta: de ce acest test pică din când în când?` |
| Părerea unei singure echipe | `echipa roșie, atacă această temă` · `privește cu ochii echipei galbene` · `echipa turcoaz, caută risipa` |
| Să țină cont și de nota mea | `dă asta echipelor ca notă: …` |
| Unde au ajuns | `ce fac echipele?` |
| Să continue de unde au rămas · să se oprească | `echipe, continuați` · `oprește echipele` |

Declanșatoarele skill-urilor sunt scrise în turcă; cererile care conțin „takım” / „takımlar” le declanșează în mod fiabil; cererile în alte limbi pot funcționa, dar nu au fost testate.

Claude dă mai întâi un scurt rezumat (ce a înțeles, ce a presupus, câte echipe vor lucra cel mult câte runde) și începe. În timpul lucrului poate cere permisiunea de a scrie fișiere și de a rula comenzi; de câte ori va cere nu s-a măsurat încă. Puteți spune da permisiunilor de scriere în dosarul `takim`; dacă nu sunteți sigur de o permisiune de comandă, spuneți nu, iar acea verificare va fi raportată ca „nu a putut fi verificată”.

## Ce se întâmplă cu fișierul dumneavoastră

- **Dacă spuneți „examinare”, fișierul nu se schimbă.** Echipelor li se spune să scrie rapoarte și jurnale doar în propriul dosar `takim` („doar examinare”); o copie a fișierului este totuși pusă în dosarul `takim\yedek\`.
- **Dacă spuneți „corectare”,** Claude pune mai întâi o copie a fișierului în dosarul `takim\yedek\` și vă spune „fișierul se va schimba, copia de siguranță este aici”. Doar echipa Albastră scrie în fișierul dumneavoastră.
- Dacă cererea este ambiguă, Claude nu vă atinge fișierul.
- Nu s-a verificat că echipele pot citi fișiere Word sau PDF; Claude spune acest lucru la început și lucrează pe o copie convertită în text.

## Când se termină

Dacă ați spus „examinare”, se termină după o singură rundă de examinare: Claude explică ce a găsit și întreabă dacă să corecteze. Dacă ați spus „corectare”, se termină când erorile găsite au fost corectate și corecturile reverificate, și când s-a scris cum se va închide fiecare lucru rămas neterminat. Se poate opri și înainte de final (de exemplu când se atinge numărul maxim de runde, „plafonul de runde”, sau când apare ceva ce trebuie să decideți dumneavoastră); când se oprește, Claude explică motivul și întreabă. Lista cazurilor de oprire este în secțiunea 8 a regulilor.

Cât durează o rundă nu s-a măsurat; cu cât sunt mai multe echipe, cu atât cresc durata și consumul.

## Echipe

| Echipă | Agent | Ce face |
|---|---|---|
| 🔵 Albastră | `mavi-yazar` | Scrie lucrarea, duce fiecare obiecție la o concluzie |
| 🔴 Roșie | `kirmizi-saldirgan` | Încearcă să dărâme afirmațiile lucrării |
| 🩷 Roz | `pembe-denetci` | Verifică constatările, închide numărătoarea |
| 🟣 Mov | `mor-sorgucu` | Verifică înțelegerea, pune întrebări grele, investighează cauza |
| 🟢 Verde | `yesil-gercek` | Verifică informațiile externe la sursa primară, face cercetare preliminară |
| 🟠 Portocalie | `turuncu-deneyci` | Rulează cu mâna ei, recalculează |
| 🩶 Gri | `gri-sadelestirici` | Întreabă „chiar e necesar”, păstrează focusul |
| ⚫ Neagră | `siyah-hafiza` | Prinde ce s-a uitat și ce s-a stricat din nou; este poarta |
| ⚪ Albă | `beyaz-kayitci` | Verifică ce s-a făcut, înregistrează munca fără stăpân și urma |
| 🟡 Galbenă | `sari-kullanici` | Încearcă lucrarea cu ochii celui care o va folosi |
| 🩵 Turcoaz | `turkuaz-verimlilik` | Găsește risipa de tokeni, citiri și apeluri și o reduce la minimum (se adaugă la o mărime) |

„Lucrarea” este fișierul sau munca dumneavoastră examinată. Ecranul lui Claude recunoaște doar opt culori pentru echipe; de aceea Gri apare cyan, iar Neagră și Albă nu au culoare. Recunoașteți echipa după nume.

## Mărimi și moduri

**Mărimea** este câte echipe vor lucra. Dacă nu o spuneți, Claude o alege după amploarea lucrării și vă anunță.

| Mărime | Echipe | Plafon de runde | Pentru ce |
|---|---|---|---|
| Rapidă | Albastră, Roșie, Roz | 2 | Lucrare mică, un singur fișier, verificare rapidă |
| Normală | + Verde, Gri, Portocalie | 5 | Majoritatea lucrărilor |
| Completă | + Mov, Galbenă, Neagră, Albă | 10 | Lucrare critică, de lungă durată sau scump de anulat |

La o mărime se pot adăuga echipe una câte una („mărime rapidă, adaugă și echipa galbenă”); la teme și texte Claude adaugă singur Galbena, iar la lucrări care necesită rulare Portocalia, și spune acest lucru. Plafoanele de runde sunt valori de pornire netestate; pentru a le schimba ajunge să spuneți.

**Modul** este la ce se uită: **larg** (toată lucrarea) sau **focus** (o singură întrebare). Dacă puneți o singură întrebare, Claude alege modul focus.

## Unde este rezultatul

- Rezultatul vi-l spune Claude în conversație: sus o singură frază, dedesubt un scurt rezumat; ce este **dovedit** și ce este *estimare* se spune separat; întrebarea lui, dacă există, stă la final.
- În dosarul în care lucrați se creează un dosar `takim`. Acesta este jurnalul propriu al echipelor; nu e nevoie să-l citiți. Versiunea inițială a fișierului dumneavoastră este tot în acest dosar (`takim\yedek\`); dacă sunteți mulțumit de corecturi, o puteți șterge după terminarea lucrării.
- Pentru a da echipelor o notă sau un raport, puteți lăsa fișierul în dosarul `takim\gelen\`.
- Dacă porniți o lucrare nouă în același dosar, înregistrările vechi nu se șterg; sunt mutate în `takim\arsiv\`.

Textul complet al regulilor: `skills/takim-dongu/sablonlar/kurallar.md`.

## Dezinstalare

- Dacă ați instalat cu `kur.cmd`: faceți dublu clic pe `kaldir.cmd`. Șterge doar fișierele agenților din pachet și cele trei dosare de skill-uri; nu atinge dosarele `takim` din proiectele dumneavoastră. Dacă rămâne un fișier pe care nu l-a putut șterge, spune acest lucru pe ecran.
- Dacă l-ați instalat ca plugin: scrieți `/plugin` în Claude Code și eliminați pluginul din fereastra care se deschide (acest pas nu a fost verificat).
- Dacă l-ați copiat într-un singur proiect: ștergeți fișierele copiate din dosarul `.claude` al acelui proiect.

## Alte metode de instalare (avansat)

Folosiți doar una. Dacă folosiți calea de plugin împreună cu `kur.cmd`, echipele apar de două ori în listă.

**Ca plugin.** Mai jos, în locul unde scrie `<takim-ajan klasörünün yolu>`, puneți calea completă a acestui dosar pe computerul dumneavoastră. În Claude Code:

```
/plugin marketplace add <takim-ajan klasörünün yolu>
/plugin install takim-ajan@takim-ajan-yerel
```

A doua comandă nu încheie singură instalarea: deschide o fereastră; acolo alegeți domeniul de utilizator. Nu s-a verificat că o cale Windows este citită corect în această comandă. La instalarea ca plugin, numele agenților și skill-urilor primesc prefixul `takim-ajan:`.

**Într-un singur proiect.** Copiați conținutul dosarului `agents` în dosarul `.claude\agents` al proiectului, iar cele trei dosare din dosarul `skills` în dosarul `.claude\skills` al proiectului. Cele trei dosare de skill-uri trebuie copiate împreună.

## Conținutul pachetului

| Loc | Ce conține |
|---|---|
| `agents/` | Fișierele de instrucțiuni ale echipelor |
| `skills/` | Trei skill-uri: `takim-dongu` (bucla și șabloanele), `takim-tek` (o singură echipă), `takim-durum` (stare) |
| `tests/` | Verificarea proprie a pachetului (`tests/denetle.ps1`), scenarii de presiune și trei repetiții pe uscat |
| `docs/` | `docs/koken.md` (de unde provine), `docs/arastirma.md` (metodele pe care se sprijină) |
| `kur.cmd`, `kaldir.cmd` | Instalare / dezinstalare cu dublu clic |

Versiunea 0.3.0. Ce nu a fost încă testat este listat la finalul `docs/koken.md`.

Licență: MIT (LICENSE)
