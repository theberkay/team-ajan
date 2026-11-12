# Team Ajan

🌐 [Türkçe](README.md) · [English](README.en.md) · [All languages](LANGUAGES.md)

## La ce folosește

Pune o lucrare de-a dumneavoastră (cod, calcul de inginerie, proiect de arhitectură, design de produs / interfață, temă, cercetare, text, plan) să fie examinată nu de un singur ochi, ci de „echipe” separate care se verifică reciproc; dacă doriți, o pune să fie corectată până nu mai rămâne nicio eroare. Este un pachet de extensie pentru Claude Code. Conține două tipuri de fișiere: **agent** (instrucțiuni care descriu cum lucrează o echipă) și **abilitate** (instrucțiuni care descriu cum conduce Claude echipele).

## Instalare

1. Dacă ați primit pachetul ca fișier arhivat (zip), dezarhivați-l mai întâi într-un folder.
2. Faceți dublu clic pe fișierul `kur.cmd`. Așteptați să vedeți pe ecran textul „Kuruldu”.
3. Închideți Claude și deschideți-l din nou.

`kur.cmd` copiază doar fișierele de agent și cele trei foldere de abilități în folderul de utilizator al lui Claude (`%USERPROFILE%\.claude`); suprascrie versiunile vechi cu același nume, de aceea nu puneți fișiere proprii în acele trei foldere sau cu acele nume. Afișează folderul țintă pe ecran. Când apare o versiune nouă, este suficient să rulați din nou același fișier. Alte metode de instalare se află la final.

## Prima frază după instalare

Deschideți Claude în folderul în care se află fișierul de examinat și scrieți una dintre frazele de mai jos. Fraza trebuie să conțină cuvântul **„echipă”**; altfel echipele nu intră în acțiune.

| Ce doriți | Fraza pe care o scrieți |
|---|---|
| Doar să examineze, fără să-mi atingă fișierul | `pune echipele să examineze fișierul rapor.md, fără să-l atingă` |
| Să examineze și să corecteze | `echipele să corecteze fișierul hesap.md până nu mai rămâne nicio eroare` |
| Să se concentreze pe o singură întrebare | `echipele să se uite doar la asta: de ce pică testul acesta din când în când?` |
| Părerea unei singure echipe | `echipa roșie să atace tema aceasta` · `privește cu ochii echipei galbene` · `echipa turcoaz să caute risipa` |
| Să țină cont și de nota mea | `dă asta echipelor ca notă: …` |
| Unde au rămas | `în ce stadiu sunt echipele?` |
| Să continue de unde au rămas · să se oprească | `echipele să continue` · `oprește echipele` |

Declanșatoarele abilităților sunt scrise în turcă; cererile care conțin cuvântul „takım” / „takımlar” declanșează în mod fiabil; cererile în alte limbi pot funcționa, dar nu au fost testate.

Claude dă mai întâi un scurt rezumat (ce a înțeles, ce a presupus, câte echipe vor lucra cel mult câte runde) și începe. În timpul lucrului poate cere permisiunea de a scrie fișiere și de a rula comenzi; de câte ori va cere încă nu s-a măsurat. Puteți spune da la permisiunile de scriere în folderul `takim`; dacă nu sunteți sigur de o permisiune de comandă, spuneți nu, iar acea verificare va fi raportată ca „nu s-a putut verifica”.

## Ce se întâmplă cu fișierul dumneavoastră

- **Dacă spuneți „examinează”, fișierul nu se schimbă.** Echipelor li se spune să scrie rapoarte și registre doar în propriul folder `takim` („doar examinare”); o copie a fișierului este totuși făcută în folderul `takim\yedek\`.
- **Dacă spuneți „corectează”,** Claude face mai întâi o copie a fișierului în folderul `takim\yedek\` și vă spune „fișierul se va schimba, copia de rezervă este aici”. În fișierul dumneavoastră scrie doar echipa Albastră.
- Dacă cererea este neclară, Claude nu vă atinge fișierul.
- Nu s-a verificat dacă fișierele Word sau PDF pot fi citite de echipe; Claude spune acest lucru de la început și lucrează pe o copie convertită în text.

## Când se termină

Dacă ați spus „examinează”, se termină după o singură rundă de examinare: Claude explică ce a găsit și întreabă dacă să corecteze. Dacă ați spus „corectează”, se termină când erorile găsite au fost corectate, corectura a fost verificată din nou și s-a scris cum se va închide tot ce a rămas neterminat. Se poate opri și înainte (de exemplu când se atinge numărul maxim de runde, „plafonul de runde”, sau când apare ceva ce trebuie să decideți dumneavoastră); când se oprește, Claude explică motivul și întreabă. Lista situațiilor de oprire se află în secțiunea 8 a regulilor.

Cât durează o rundă nu s-a măsurat; pe măsură ce crește numărul de echipe, cresc durata și consumul.

## Echipele

| Echipă | Agent | Ce face |
|---|---|---|
| 🔵 Albastră | `mavi-yazar` | Scrie lucrarea, duce fiecare obiecție la o concluzie |
| 🔴 Roșie | `kirmizi-saldirgan` | Încearcă să dărâme afirmațiile lucrării |
| 🩷 Roz | `pembe-denetci` | Verifică constatările, închide numărătoarea |
| 🟣 Mov | `mor-sorgucu` | Verifică înțelegerea, pune întrebări grele, investighează cauza |
| 🟢 Verde | `yesil-gercek` | Verifică informațiile externe din sursa primară, face cercetare preliminară |
| 🟠 Portocalie | `turuncu-deneyci` | Rulează cu mâna ei, recalculează |
| 🩶 Gri | `gri-sadelestirici` | Întreabă „chiar e necesar?”, păstrează focusul |
| ⚫ Neagră | `siyah-hafiza` | Prinde ce s-a uitat și ce s-a stricat din nou; este poarta |
| ⚪ Albă | `beyaz-kayitci` | Verifică ce s-a făcut, înregistrează munca fără responsabil și urma |
| 🟡 Galbenă | `sari-kullanici` | Încearcă lucrarea cu ochii celui care o va folosi |
| 🩵 Turcoaz | `turkuaz-verimlilik` | Găsește și reduce la minimum risipa de tokeni, citiri și apeluri (se adaugă la mărime) |

„Lucrarea” este fișierul sau munca dumneavoastră examinată. Ecranul lui Claude recunoaște doar opt culori pentru echipe; de aceea Gri apare ca cyan, iar Neagră și Albă nu au culoare. Recunoașteți echipa după nume.

## Mărimi și moduri

**Mărimea** înseamnă câte echipe vor lucra. Dacă nu o spuneți, Claude o alege după amploarea lucrării și vă anunță.

| Mărime | Echipe | Plafon de runde | Pentru ce |
|---|---|---|---|
| Rapidă | Albastră, Roșie, Roz | 2 | Lucrare mică, un singur fișier, verificare rapidă |
| Normală | + Verde, Gri, Portocalie | 5 | Majoritatea lucrărilor |
| Completă | + Mov, Galbenă, Neagră, Albă | 10 | Lucrare critică, de lungă durată sau scumpă de anulat |

La o mărime se pot adăuga echipe una câte una („mărime rapidă, adaugă și echipa galbenă”); la teme și texte Claude adaugă de la sine echipa Galbenă, iar la lucrările care trebuie rulate echipa Portocalie, și vă spune. Plafoanele de runde sunt valori inițiale netestate; pentru a le schimba e suficient să spuneți.

**Modul** înseamnă la ce se uită: **larg** (întreaga lucrare) sau **focus** (o singură întrebare). Dacă puneți o singură întrebare, Claude alege modul focus.

## Unde este rezultatul

- Rezultatul vi-l explică Claude în conversație: sus o singură frază, dedesubt un scurt rezumat; se spune separat ce este **dovedit** și ce este *estimare*; dacă are o întrebare, aceasta stă la final.
- În folderul în care lucrați se creează un folder `takim`. Acesta este registrul propriu al echipelor; nu trebuie să-l citiți. Și forma inițială a fișierului dumneavoastră se află în acest folder (`takim\yedek\`); dacă sunteți mulțumit de corecturi, o puteți șterge după terminarea lucrului.
- Pentru a da echipelor o notă sau un raport, puteți lăsa fișierul în folderul `takim\gelen\`.
- Dacă începeți o lucrare nouă în același folder, înregistrările vechi nu se șterg; sunt mutate în `takim\arsiv\`.

Textul complet al regulilor: `skills/takim-dongu/sablonlar/kurallar.md`.

## Dezinstalare

- Dacă ați instalat cu `kur.cmd`: faceți dublu clic pe fișierul `kaldir.cmd`. Șterge doar fișierele de agent ale pachetului și cele trei foldere de abilități; nu atinge folderele `takim` din proiectele dumneavoastră. Dacă rămâne un fișier pe care nu l-a putut șterge, spune acest lucru pe ecran.
- Dacă ați instalat ca extensie: în Claude Code scrieți `/plugin` și eliminați extensia din fereastra care se deschide (acest pas nu a fost verificat).
- Dacă ați copiat într-un singur proiect: ștergeți fișierele copiate din folderul `.claude` al acelui proiect.

## Alte metode de instalare (avansat)

Folosiți doar una. Dacă folosiți și metoda extensiei împreună cu `kur.cmd`, echipele apar de două ori în listă.

**Ca extensie.** Mai jos, în locul unde scrie `<takim-ajan klasörünün yolu>`, puneți calea completă a acestui folder pe calculatorul dumneavoastră. În Claude Code:

```
/plugin marketplace add <takim-ajan klasörünün yolu>
/plugin install takim-ajan@takim-ajan-yerel
```

A doua comandă nu finalizează instalarea de la sine: deschide o fereastră; acolo alegeți domeniul utilizator. Nu s-a verificat dacă o cale Windows este citită corect în această comandă. După instalarea ca extensie, numele agenților și abilităților primesc prefixul `takim-ajan:`.

**Într-un singur proiect.** Copiați conținutul folderului `agents` în folderul `.claude\agents` al proiectului, iar cele trei foldere din interiorul folderului `skills` în folderul `.claude\skills` al proiectului. Cele trei foldere de abilități trebuie copiate împreună.

## Conținutul pachetului

| Loc | Ce conține |
|---|---|
| `agents/` | Fișierele de instrucțiuni ale echipelor |
| `skills/` | Trei abilități: `takim-dongu` (ciclul și șabloanele), `takim-tek` (o singură echipă), `takim-durum` (stare) |
| `tests/` | Verificarea proprie a pachetului (`tests/denetle.ps1`), scenarii de presiune și trei repetiții pe uscat |
| `docs/` | `docs/koken.md` (de unde provine), `docs/arastirma.md` (metodele pe care se bazează) |
| `kur.cmd`, `kaldir.cmd` | Instalare / dezinstalare cu dublu clic |

Versiunea 0.2.4. Ce nu a fost încă testat este listat la sfârșitul `docs/koken.md`.
