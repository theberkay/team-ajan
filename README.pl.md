# Team Ajan

🌐 [Türkçe](README.md) · [English](README.en.md) · [All languages](LANGUAGES.md)

## Do czego służy

Sprawia, że Twoja praca (kod, obliczenia inżynierskie, projekt architektoniczny, projekt produktu / interfejsu, zadanie domowe, badanie, tekst, plan) jest sprawdzana nie jednym okiem, lecz przez osobne „zespoły”, które kontrolują się nawzajem; jeśli chcesz, zleca poprawianie, aż nie zostanie żaden błąd. To pakiet wtyczki dla Claude Code. Zawiera dwa rodzaje plików: **agent** (instrukcja opisująca, jak pracuje zespół) i **umiejętność** (skill, instrukcja opisująca, jak Claude kieruje zespołami).

Przewodnik po dziedzinach (`skills/takim-dongu/sablonlar/alanlar.md`) mówi zespołom, na co patrzeć w tych dziedzinach: kod, inżynieria, mechanika, mechatronika, elektrotechnika, przemysł ciężki, architektura, projektowanie i design, objaśnianie tematu i zadania domowe, prezentacja, badania, dokumentacja, medycyna, prawo, polityka, historia, muzyka. W medycynie i prawie zespoły nie stawiają diagnozy, nie zalecają leczenia ani nie wydają opinii prawnej; sprawdzają tylko tekst i jego źródła, a wynik zawiera uwagę „należy skonsultować się ze specjalistą”.

## Instalacja

1. Jeśli pakiet otrzymałeś jako plik skompresowany (zip), najpierw rozpakuj go do folderu.
2. Kliknij dwukrotnie `kur.cmd`. Na ekranie zobaczysz napis „Kuruldu” (zainstalowano).
3. Zamknij Claude i otwórz go ponownie.

`kur.cmd` kopiuje tylko pliki agentów i trzy foldery umiejętności do folderu użytkownika Claude (`%USERPROFILE%\.claude`); starsze pliki o tych samych nazwach nadpisuje, więc nie umieszczaj własnych plików w tych trzech folderach ani pod tymi nazwami. Pokazuje folder docelowy na ekranie. Gdy pojawi się nowa wersja, wystarczy ponownie uruchomić ten sam plik. Inne sposoby instalacji są na samym dole.

## Twoje pierwsze zdanie po instalacji

Otwórz Claude w folderze, w którym jest plik do sprawdzenia, i wpisz jedno z poniższych zdań. Zdanie musi zawierać słowo **„takım”** (zespół); inaczej zespoły się nie włączą.

| Czego chcesz | Zdanie do wpisania |
|---|---|
| Tylko sprawdzić, nie ruszając mojego pliku | `niech zespoły sprawdzą rapor.md, nie ruszając go` |
| Sprawdzić i poprawić | `niech zespoły poprawiają hesap.md, aż nie zostanie błąd` |
| Skupić się na jednym pytaniu | `zespoły, spójrzcie tylko na to: dlaczego ten test czasem nie przechodzi?` |
| Opinia jednego zespołu | `czerwony zespół, zaatakuj to zadanie` · `spójrz oczami żółtego zespołu` · `turkusowy zespół, poszukaj marnotrawstwa` |
| Uwzględnić też moją notatkę | `przekaż to zespołom jako notatkę: …` |
| Na czym stanęły | `jak idzie zespołom?` |
| Kontynuować od miejsca, w którym przerwały · zatrzymać | `zespoły, kontynuujcie` · `zatrzymaj zespoły` |

Wyzwalacze umiejętności są napisane po turecku; prośby zawierające „takım” / „takımlar” uruchamiają je niezawodnie; prośby w innych językach mogą działać, ale nie zostały przetestowane.

Claude najpierw podaje krótkie podsumowanie (co zrozumiał, co założył, ile zespołów będzie pracować przez najwyżej ile rund) i zaczyna. W trakcie pracy może prosić o pozwolenie na zapis plików i uruchamianie poleceń; ile razy zapyta, nie zostało jeszcze zmierzone. Na pozwolenia zapisu do folderu `takim` możesz odpowiadać „tak”; jeśli nie masz pewności co do pozwolenia na polecenie, odpowiedz „nie”, a ta kontrola zostanie zgłoszona jako „nie udało się sprawdzić”.

## Co się stanie z Twoim plikiem

- **Jeśli powiesz „sprawdź”, Twój plik się nie zmieni.** Zespoły mają polecenie zapisywać raporty i dzienniki tylko we własnym folderze `takim` („tylko przegląd”); kopia Twojego pliku i tak trafia do folderu `takim\yedek\`.
- **Jeśli powiesz „popraw”,** Claude najpierw zapisuje kopię Twojego pliku w folderze `takim\yedek\` i mówi Ci: „Twój plik się zmieni, kopia zapasowa jest tutaj”. Do Twojego pliku pisze tylko zespół Niebieski.
- Jeśli Twoja prośba jest niejasna, Claude nie rusza Twojego pliku.
- Nie zweryfikowano, czy zespoły potrafią czytać pliki Word lub PDF; Claude mówi o tym na początku i pracuje na kopii przekonwertowanej na tekst.

## Kiedy się kończy

Jeśli powiedziałeś „sprawdź”, kończy się po jednej rundzie przeglądu: Claude opowiada, co znalazł, i pyta, czy poprawić. Jeśli powiedziałeś „popraw”, kończy się, gdy znalezione błędy zostały poprawione, a poprawki ponownie sprawdzone, i gdy dla wszystkiego, co zostało niedokończone, zapisano, jak zostanie zamknięte. Może też zatrzymać się wcześniej (na przykład po osiągnięciu maksymalnej liczby rund, „limitu rund”, albo gdy pojawi się coś, o czym musisz zdecydować Ty); gdy się zatrzymuje, Claude wyjaśnia przyczynę i pyta. Lista przypadków zatrzymania jest w rozdziale 8 zasad.

Ile trwa runda, nie zmierzono; im więcej zespołów, tym dłuższy czas i większe zużycie.

## Zespoły

| Zespół | Agent | Co robi |
|---|---|---|
| 🔵 Niebieski | `mavi-yazar` | Pisze dzieło, każdy zarzut doprowadza do rozstrzygnięcia |
| 🔴 Czerwony | `kirmizi-saldirgan` | Próbuje obalić twierdzenia dzieła |
| 🩷 Różowy | `pembe-denetci` | Kontroluje ustalenia, zamyka liczenie |
| 🟣 Fioletowy | `mor-sorgucu` | Sprawdza zrozumienie, zadaje trudne pytania, bada przyczynę |
| 🟢 Zielony | `yesil-gercek` | Weryfikuje informacje zewnętrzne u źródła pierwotnego, prowadzi wstępne badanie |
| 🟠 Pomarańczowy | `turuncu-deneyci` | Uruchamia własnoręcznie, przelicza ponownie |
| 🩶 Szary | `gri-sadelestirici` | Pyta „czy to naprawdę potrzebne”, pilnuje skupienia |
| ⚫ Czarny | `siyah-hafiza` | Wyłapuje zapomniane i to, co znów się zepsuło; jest bramą |
| ⚪ Biały | `beyaz-kayitci` | Weryfikuje wykonane, rejestruje bezpańską pracę i ślad |
| 🟡 Żółty | `sari-kullanici` | Wypróbowuje dzieło oczami osoby, która będzie z niego korzystać |
| 🩵 Turkusowy | `turkuaz-verimlilik` | Znajduje marnotrawstwo tokenów, odczytów i wywołań i ogranicza je do minimum (dodawany do rozmiaru) |

„Dzieło” to Twój sprawdzany plik lub praca. Ekran Claude rozpoznaje dla zespołów tylko osiem kolorów; dlatego Szary wyświetla się jako cyjan, a Czarny i Biały nie mają koloru. Rozpoznawaj zespół po nazwie.

## Rozmiary i tryby

**Rozmiar** to liczba pracujących zespołów. Jeśli go nie podasz, Claude wybierze go według wielkości pracy i poinformuje.

| Rozmiar | Zespoły | Limit rund | Do czego |
|---|---|---|---|
| Szybki | Niebieski, Czerwony, Różowy | 2 | Mała praca, jeden plik, szybka kontrola |
| Normalny | + Zielony, Szary, Pomarańczowy | 5 | Większość prac |
| Pełny | + Fioletowy, Żółty, Czarny, Biały | 10 | Praca krytyczna, długowieczna lub kosztowna do cofnięcia |

Do rozmiaru można dodawać zespoły pojedynczo („szybki rozmiar, dodaj też żółty zespół”); przy zadaniach domowych i tekstach Claude sam dodaje Żółty, a przy pracy wymagającej uruchamiania Pomarańczowy, i mówi o tym. Limity rund to nieprzetestowane wartości początkowe; aby je zmienić, wystarczy powiedzieć.

**Tryb** to to, na co się patrzy: **szeroki** (cała praca) lub **skupiony** (jedno pytanie). Jeśli zadasz jedno pytanie, Claude wybierze tryb skupiony.

## Gdzie jest wynik

- Wynik Claude przedstawia Ci na czacie: na górze jedno zdanie, pod nim krótkie podsumowanie; co jest **udowodnione**, a co *szacunkiem*, mówi osobno; jego ewentualne pytanie jest na samym dole.
- W folderze, w którym pracujesz, tworzony jest folder `takim`. To własny dziennik zespołów; nie musisz go czytać. Pierwotna wersja Twojego pliku też jest w tym folderze (`takim\yedek\`); jeśli poprawki Cię zadowalają, po zakończeniu pracy możesz ją usunąć.
- Aby przekazać zespołom notatkę lub raport, możesz wrzucić plik do folderu `takim\gelen\`.
- Jeśli w tym samym folderze zaczniesz nową pracę, stare zapisy nie są usuwane; są przenoszone do `takim\arsiv\`.

Pełny tekst zasad: `skills/takim-dongu/sablonlar/kurallar.md`.

## Odinstalowanie

- Jeśli instalowałeś przez `kur.cmd`: kliknij dwukrotnie `kaldir.cmd`. Usuwa tylko pliki agentów pakietu i trzy foldery umiejętności; nie rusza folderów `takim` w Twoich projektach. Jeśli zostanie plik, którego nie zdołał usunąć, powie o tym na ekranie.
- Jeśli instalowałeś jako wtyczkę: wpisz `/plugin` w Claude Code i usuń wtyczkę w otwartym oknie (ten krok nie został zweryfikowany).
- Jeśli skopiowałeś do jednego projektu: usuń skopiowane pliki z folderu `.claude` tego projektu.

## Inne sposoby instalacji (zaawansowane)

Używaj tylko jednego. Jeśli razem z `kur.cmd` użyjesz też drogi wtyczki, zespoły pojawią się na liście dwa razy.

**Jako wtyczka.** Poniżej w miejsce `<takim-ajan klasörünün yolu>` wstaw pełną ścieżkę tego folderu na Twoim komputerze. W Claude Code:

```
/plugin marketplace add <takim-ajan klasörünün yolu>
/plugin install takim-ajan@takim-ajan-yerel
```

Drugie polecenie samo nie kończy instalacji: otwiera okno; tam wybierasz zakres użytkownika. Nie zweryfikowano, czy ścieżka Windows jest w tym poleceniu poprawnie odczytywana. Po instalacji jako wtyczka nazwy agentów i umiejętności dostają przedrostek `takim-ajan:`.

**Do jednego projektu.** Skopiuj zawartość folderu `agents` do folderu `.claude\agents` projektu, a trzy foldery z folderu `skills` do folderu `.claude\skills` projektu. Trzy foldery umiejętności trzeba kopiować razem.

## Zawartość pakietu

| Miejsce | Co zawiera |
|---|---|
| `agents/` | Pliki instrukcji zespołów |
| `skills/` | Trzy umiejętności: `takim-dongu` (pętla i szablony), `takim-tek` (pojedynczy zespół), `takim-durum` (stan) |
| `tests/` | Własna kontrola pakietu (`tests/denetle.ps1`), scenariusze presji i trzy próby na sucho |
| `docs/` | `docs/koken.md` (skąd pochodzi), `docs/arastirma.md` (metody, na których się opiera) |
| `kur.cmd`, `kaldir.cmd` | Instalacja / odinstalowanie podwójnym kliknięciem |

Wersja 0.3.0. To, co nie zostało jeszcze przetestowane, wymieniono na końcu `docs/koken.md`.

Licencja: MIT (LICENSE)
