# Team Ajan

🌐 [Türkçe](README.md) · [English](README.en.md) · [All languages](LANGUAGES.md)

## Do czego służy

Sprawia, że Twoja praca (kod, obliczenia inżynierskie, projekt architektoniczny, projekt produktu / interfejsu, zadanie domowe, badanie, tekst, plan) jest sprawdzana nie jednym okiem, lecz przez oddzielne, wzajemnie się kontrolujące „zespoły”; jeśli chcesz, poprawiana aż do usunięcia wszystkich błędów. To pakiet wtyczek dla Claude Code. Zawiera dwa rodzaje plików: **agent** (instrukcja opisująca, jak pracuje zespół) i **umiejętność** (instrukcja opisująca, jak Claude zarządza zespołami).

## Instalacja

1. Jeśli pakiet otrzymałeś jako plik skompresowany (zip), najpierw rozpakuj go do folderu.
2. Kliknij dwukrotnie plik `kur.cmd`. Na ekranie powinien pojawić się napis „Kuruldu”.
3. Zamknij i ponownie otwórz Claude.

`kur.cmd` kopiuje tylko pliki agentów i trzy foldery umiejętności do folderu użytkownika Claude (`%USERPROFILE%\.claude`); nadpisuje starsze wersje o tych samych nazwach, więc nie umieszczaj własnych plików w tych trzech folderach ani pod tymi nazwami. Pokazuje folder docelowy na ekranie. Gdy pojawi się nowa wersja, wystarczy ponownie uruchomić ten sam plik. Inne sposoby instalacji znajdują się na samym dole.

## Twoje pierwsze zdanie po instalacji

Otwórz Claude w folderze, w którym znajduje się plik do sprawdzenia, i wpisz jedno z poniższych zdań. W zdaniu musi paść słowo **„zespół”**; bez niego zespoły nie wkroczą do akcji.

| Czego chcesz | Zdanie do wpisania |
|---|---|
| Żeby tylko sprawdziły, bez ruszania mojego pliku | `niech zespoły sprawdzą plik rapor.md, bez zmieniania go` |
| Żeby sprawdziły i poprawiły | `niech zespoły poprawiają plik hesap.md, aż nie zostanie żaden błąd` |
| Żeby skupiły się na jednym pytaniu | `niech zespoły zajmą się tylko tym: dlaczego ten test czasem nie przechodzi?` |
| Opinia jednego zespołu | `niech czerwony zespół zaatakuje to zadanie` · `spójrz oczami żółtego zespołu` · `niech turkusowy zespół poszuka marnotrawstwa` |
| Żeby uwzględniły też moją notatkę | `przekaż to zespołom jako notatkę: …` |
| Na jakim są etapie | `co z zespołami?` |
| Żeby kontynuowały od miejsca, w którym skończyły · żeby się zatrzymały | `niech zespoły kontynuują` · `zatrzymaj zespoły` |

Wyzwalacze umiejętności są napisane po turecku; prośby zawierające słowo „takım” / „takımlar” uruchamiają je niezawodnie; prośby w innych językach mogą działać, ale nie zostały przetestowane.

Claude najpierw podaje krótkie podsumowanie (co zrozumiał, co założył, ile zespołów będzie pracować przez maksymalnie ile rund) i zaczyna. W trakcie pracy może prosić o pozwolenie na zapis plików i uruchamianie poleceń; ile razy zapyta, nie zostało jeszcze zmierzone. Na pozwolenia zapisu w folderze `takim` możesz odpowiadać tak; jeśli nie masz pewności co do pozwolenia na polecenie, odpowiedz nie — ta weryfikacja zostanie zgłoszona jako „nie dało się sprawdzić”.

## Co się dzieje z Twoim plikiem

- **Jeśli powiesz „niech sprawdzą”, Twój plik się nie zmienia.** Zespoły dostają polecenie zapisywania raportów i dzienników wyłącznie we własnym folderze `takim` („tylko przegląd”); mimo to kopia Twojego pliku zostaje zapisana w folderze `takim\yedek\`.
- **Jeśli powiesz „niech poprawią”**, Claude najpierw zapisuje kopię Twojego pliku w folderze `takim\yedek\` i mówi Ci: „Twój plik się zmieni, kopia zapasowa jest tutaj”. Do Twojego pliku pisze tylko Niebieski zespół.
- Jeśli prośba jest niejasna, Claude nie dotyka Twojego pliku.
- Nie zweryfikowano, czy zespoły potrafią czytać pliki Word lub PDF; Claude mówi o tym na początku i pracuje na kopii przekształconej w tekst.

## Kiedy to się kończy

Jeśli powiedziałeś „niech sprawdzą”, praca kończy się po jednej rundzie przeglądu: Claude opowiada, co znaleziono, i pyta, czy poprawić. Jeśli powiedziałeś „niech poprawią”, praca kończy się, gdy znalezione błędy zostaną poprawione, a poprawki ponownie sprawdzone, i gdy dla każdej niedokończonej rzeczy zostanie zapisane, jak zostanie zamknięta. Może też zatrzymać się wcześniej (na przykład po osiągnięciu maksymalnej liczby rund, „limitu rund”, albo gdy pojawi się coś, o czym musisz zdecydować Ty); gdy się zatrzyma, Claude wyjaśnia powód i pyta. Lista sytuacji zatrzymania znajduje się w sekcji 8 zasad.

Nie zmierzono, ile trwa jedna runda; im więcej zespołów, tym dłuższy czas i większe zużycie.

## Zespoły

| Zespół | Agent | Co robi |
|---|---|---|
| 🔵 Niebieski | `mavi-yazar` | Pisze dzieło, każdy zarzut doprowadza do rozstrzygnięcia |
| 🔴 Czerwony | `kirmizi-saldirgan` | Próbuje obalić twierdzenia dzieła |
| 🩷 Różowy | `pembe-denetci` | Kontroluje ustalenia, zamyka rachunek |
| 🟣 Fioletowy | `mor-sorgucu` | Sprawdza zrozumienie, zadaje trudne pytania, bada przyczyny |
| 🟢 Zielony | `yesil-gercek` | Weryfikuje informacje zewnętrzne w źródle pierwotnym, prowadzi wstępne badania |
| 🟠 Pomarańczowy | `turuncu-deneyci` | Uruchamia własnoręcznie, przelicza od nowa |
| 🩶 Szary | `gri-sadelestirici` | Pyta „czy to naprawdę potrzebne”, pilnuje skupienia |
| ⚫ Czarny | `siyah-hafiza` | Wyłapuje to, co zapomniane, i to, co znów się zepsuło; jest bramką |
| ⚪ Biały | `beyaz-kayitci` | Weryfikuje to, co zrobiono, rejestruje prace bez właściciela i ślad |
| 🟡 Żółty | `sari-kullanici` | Testuje dzieło oczami osoby, która będzie z niego korzystać |
| 🩵 Turkusowy | `turkuaz-verimlilik` | Znajduje marnotrawstwo tokenów, odczytów i wywołań i ogranicza je do minimum (dodawany do rozmiaru) |

„Dzieło” to sprawdzany plik lub Twoja praca. Ekran Claude rozpoznaje tylko osiem kolorów dla zespołów; dlatego Szary wyświetla się jako cyjan, a Czarny i Biały nie mają koloru. Rozpoznawaj zespół po nazwie.

## Rozmiary i tryby

**Rozmiar** to liczba zespołów, które będą pracować. Jeśli go nie podasz, Claude wybierze go według wielkości pracy i Cię poinformuje.

| Rozmiar | Zespoły | Limit rund | Do czego |
|---|---|---|---|
| Szybki | Niebieski, Czerwony, Różowy | 2 | Mała praca, jeden plik, szybka kontrola |
| Normalny | + Zielony, Szary, Pomarańczowy | 5 | Większość prac |
| Pełny | + Fioletowy, Żółty, Czarny, Biały | 10 | Praca krytyczna, długowieczna lub kosztowna do cofnięcia |

Do rozmiaru można dodawać pojedyncze zespoły („rozmiar szybki, dodaj też żółty zespół”); przy zadaniach domowych i tekstach Claude sam dodaje Żółty, a przy pracy wymagającej uruchamiania — Pomarańczowy, i o tym mówi. Limity rund to nieprzetestowane wartości początkowe; aby je zmienić, wystarczy powiedzieć.

**Tryb** to to, na co się patrzy: **szeroki** (cała praca) lub **skupiony** (jedno pytanie). Jeśli zadasz jedno pytanie, Claude wybierze tryb skupiony.

## Gdzie jest wynik

- Claude przedstawia wynik w czacie: na górze jedno zdanie, pod nim krótkie podsumowanie; osobno mówi, co jest **udowodnione**, a co jest *szacunkiem*; jeśli ma pytanie, znajduje się ono na samym dole.
- W folderze, w którym pracujesz, powstaje folder `takim`. To dziennik zespołów; nie musisz go czytać. Pierwotna wersja Twojego pliku też jest w tym folderze (`takim\yedek\`); jeśli poprawki Cię zadowalają, możesz ją usunąć po zakończeniu pracy.
- Aby przekazać zespołom notatkę lub raport, możesz umieścić plik w folderze `takim\gelen\`.
- Jeśli rozpoczniesz nową pracę w tym samym folderze, stare zapisy nie zostaną usunięte; zostaną przeniesione do `takim\arsiv\`.

Pełny tekst zasad: `skills/takim-dongu/sablonlar/kurallar.md`.

## Odinstalowanie

- Jeśli instalowałeś przez `kur.cmd`: kliknij dwukrotnie plik `kaldir.cmd`. Usuwa tylko pliki agentów pakietu i trzy foldery umiejętności; nie dotyka folderów `takim` w Twoich projektach. Jeśli zostanie plik, którego nie udało się usunąć, poinformuje o tym na ekranie.
- Jeśli instalowałeś jako wtyczkę: w Claude Code wpisz `/plugin` i usuń wtyczkę w otwartym oknie (ten krok nie został zweryfikowany).
- Jeśli skopiowałeś do jednego projektu: usuń skopiowane pliki z folderu `.claude` tego projektu.

## Inne sposoby instalacji (zaawansowane)

Używaj tylko jednego. Jeśli razem z `kur.cmd` użyjesz też sposobu z wtyczką, zespoły pojawią się na liście dwukrotnie.

**Jako wtyczka.** W miejscu, gdzie poniżej jest napisane `<takim-ajan klasörünün yolu>`, wstaw pełną ścieżkę tego folderu na Twoim komputerze. W Claude Code:

```
/plugin marketplace add <takim-ajan klasörünün yolu>
/plugin install takim-ajan@takim-ajan-yerel
```

Drugie polecenie nie kończy instalacji samo: otwiera okno, w którym wybierasz zakres użytkownika. Nie zweryfikowano, czy ścieżka Windows jest w tym poleceniu poprawnie odczytywana. Po instalacji jako wtyczka nazwy agentów i umiejętności otrzymują przedrostek `takim-ajan:`.

**Do jednego projektu.** Skopiuj zawartość folderu `agents` do folderu `.claude\agents` projektu, a trzy foldery znajdujące się w `skills` do folderu `.claude\skills` projektu. Trzy foldery umiejętności trzeba skopiować razem.

## Zawartość pakietu

| Miejsce | Co zawiera |
|---|---|
| `agents/` | Pliki instrukcji zespołów |
| `skills/` | Trzy umiejętności: `takim-dongu` (pętla i szablony), `takim-tek` (pojedynczy zespół), `takim-durum` (stan) |
| `tests/` | Własna kontrola pakietu (`tests/denetle.ps1`), scenariusze presji i trzy próby na sucho |
| `docs/` | `docs/koken.md` (skąd pochodzi), `docs/arastirma.md` (metody, na których się opiera) |
| `kur.cmd`, `kaldir.cmd` | Instalacja / odinstalowanie dwuklikiem |

Wersja 0.2.4. To, co jeszcze nie zostało przetestowane, jest wymienione na końcu `docs/koken.md`.
