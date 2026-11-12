# Team Ajan

🌐 [Türkçe](README.md) · [English](README.en.md) · [All languages](LANGUAGES.md)

## Wozu es dient

Es lässt eine Arbeit von Ihnen (Code, technische Berechnung, Architekturprojekt, Produkt- / Oberflächendesign, Hausaufgabe, Recherche, Text, Plan) nicht mit einem einzigen Auge prüfen, sondern von getrennten „Teams“, die einander kontrollieren; auf Wunsch lässt es sie korrigieren, bis kein Fehler mehr bleibt. Es ist ein Plugin-Paket für Claude Code. Es enthält zwei Arten von Dateien: **Agent** (Anweisung, wie ein Team arbeitet) und **Skill** (Anweisung, wie Claude die Teams steuert).

Der Fachgebietsleitfaden (`skills/takim-dongu/sablonlar/alanlar.md`) sagt den Teams, worauf sie in diesen Gebieten achten sollen: Code, Ingenieurwesen, Maschinenbau, Mechatronik, Elektrotechnik, Schwerindustrie, Architektur, Gestaltung und Design, Stofferklärung und Hausaufgaben, Präsentation, Recherche, Dokumentation, Medizin, Recht, Politik, Geschichte, Musik. In Medizin und Recht stellen die Teams keine Diagnose, keine Behandlung und keine Rechtsauskunft; sie prüfen nur den Text und seine Quellen, und das Ergebnis trägt den Hinweis „Fachperson konsultieren“.

## Installieren

1. Wenn Sie das Paket als komprimierte Datei (zip) erhalten haben, entpacken Sie es zuerst in einen Ordner.
2. Doppelklicken Sie auf `kur.cmd`. Sie sehen auf dem Bildschirm die Meldung „Kuruldu“ (installiert).
3. Schließen Sie Claude und öffnen Sie es erneut.

`kur.cmd` kopiert nur die Agent-Dateien und die drei Skill-Ordner in Claudes Benutzerordner (`%USERPROFILE%\.claude`); gleichnamige ältere Dateien werden überschrieben, legen Sie daher keine eigenen Dateien in diese drei Ordner oder unter diesen Namen ab. Der Zielordner wird auf dem Bildschirm angezeigt. Wenn eine neue Version kommt, führen Sie einfach dieselbe Datei erneut aus. Weitere Installationswege stehen ganz unten.

## Ihr erster Satz nach der Installation

Öffnen Sie Claude in dem Ordner, in dem die zu prüfende Datei liegt, und schreiben Sie einen der folgenden Sätze. Der Satz muss das Wort **„takım“** (Team) enthalten; sonst werden die Teams nicht aktiv.

| Was Sie wollen | Der zu schreibende Satz |
|---|---|
| Nur prüfen, meine Datei nicht anfassen | `lass die Teams rapor.md prüfen, ohne sie anzufassen` |
| Prüfen und korrigieren | `die Teams sollen hesap.md korrigieren, bis kein Fehler bleibt` |
| Auf eine einzige Frage konzentrieren | `Teams, schaut nur darauf: warum schlägt dieser Test ab und zu fehl?` |
| Die Meinung eines einzelnen Teams | `rotes Team, greif diese Hausaufgabe an` · `sieh es mit den Augen des gelben Teams` · `türkises Team, such nach Verschwendung` |
| Meine Notiz auch berücksichtigen | `gib das den Teams als Notiz: …` |
| Wo sie stehen | `wie steht es um die Teams?` |
| Dort weitermachen, wo sie aufgehört haben · anhalten | `Teams, macht weiter` · `halte die Teams an` |

Die Skill-Auslöser sind auf Türkisch geschrieben; Anfragen mit „takım“ / „takımlar“ lösen sie zuverlässig aus; Anfragen in anderen Sprachen können funktionieren, sind aber nicht getestet.

Claude gibt zuerst eine kurze Zusammenfassung (was es verstanden hat, was es angenommen hat, wie viele Teams höchstens wie viele Runden arbeiten) und beginnt. Während der Arbeit kann es um Erlaubnis zum Schreiben von Dateien und Ausführen von Befehlen bitten; wie oft es fragen wird, wurde noch nicht gemessen. Schreibrechten für den Ordner `takim` können Sie zustimmen; wenn Sie bei einer Befehlserlaubnis unsicher sind, sagen Sie nein, dann wird diese Prüfung als „konnte nicht geprüft werden“ gemeldet.

## Was mit Ihrer Datei geschieht

- **Wenn Sie „prüfen“ sagen, ändert sich Ihre Datei nicht.** Den Teams wird gesagt, Berichte und Protokolle nur in ihren eigenen Ordner `takim` zu schreiben („nur Prüfung“); eine Kopie Ihrer Datei wird trotzdem im Ordner `takim\yedek\` abgelegt.
- **Wenn Sie „korrigieren“ sagen,** legt Claude zuerst eine Kopie Ihrer Datei im Ordner `takim\yedek\` ab und sagt Ihnen „Ihre Datei wird sich ändern, die Sicherung liegt hier“. Nur das Blaue Team schreibt in Ihre Datei.
- Ist Ihre Anfrage unklar, fasst Claude Ihre Datei nicht an.
- Dass die Teams Word- oder PDF-Dateien lesen können, wurde nicht überprüft; Claude sagt das zu Beginn und arbeitet an einer in Text umgewandelten Kopie.

## Wann es endet

Wenn Sie „prüfen“ gesagt haben, endet es nach einer einzigen Prüfrunde: Claude erklärt, was es gefunden hat, und fragt, ob korrigiert werden soll. Wenn Sie „korrigieren“ gesagt haben, endet es, wenn die gefundenen Fehler korrigiert und die Korrekturen erneut geprüft sind und für alles Unerledigte aufgeschrieben ist, wie es abgeschlossen wird. Es kann auch vorher anhalten (zum Beispiel wenn die Höchstzahl an Runden, die „Rundenobergrenze“, erreicht ist oder wenn etwas auftaucht, das Sie entscheiden müssen); wenn es anhält, erklärt Claude den Grund und fragt. Die Liste der Haltefälle steht in Abschnitt 8 der Regeln.

Wie lange eine Runde dauert, wurde nicht gemessen; mit der Zahl der Teams steigen Dauer und Verbrauch.

## Teams

| Team | Agent | Was es tut |
|---|---|---|
| 🔵 Blau | `mavi-yazar` | Schreibt das Werk, führt jeden Einwand zu einem Ergebnis |
| 🔴 Rot | `kirmizi-saldirgan` | Versucht, die Behauptungen des Werks zu widerlegen |
| 🩷 Rosa | `pembe-denetci` | Prüft die Befunde, schließt die Zählung ab |
| 🟣 Lila | `mor-sorgucu` | Prüft das Verständnis, stellt schwierige Fragen, ermittelt die Ursache |
| 🟢 Grün | `yesil-gercek` | Überprüft externe Informationen an Primärquellen, macht Vorrecherche |
| 🟠 Orange | `turuncu-deneyci` | Führt selbst aus, rechnet nach |
| 🩶 Grau | `gri-sadelestirici` | Fragt „ist das wirklich nötig“, hält den Fokus |
| ⚫ Schwarz | `siyah-hafiza` | Fängt Vergessenes und Rückfälle ab; es ist das Tor |
| ⚪ Weiß | `beyaz-kayitci` | Überprüft Erledigtes, erfasst herrenlose Arbeit und die Spur |
| 🟡 Gelb | `sari-kullanici` | Probiert das Werk mit den Augen der Person aus, die es nutzen wird |
| 🩵 Türkis | `turkuaz-verimlilik` | Findet Token-, Lese- und Aufrufverschwendung und minimiert sie (wird zu einer Größe hinzugefügt) |

Das „Werk“ ist Ihre geprüfte Datei oder Arbeit. Claudes Bildschirm kennt für die Teams nur acht Farben; deshalb erscheint Grau cyan, und Schwarz und Weiß haben keine Farbe. Erkennen Sie ein Team an seinem Namen.

## Größen und Modi

**Größe** ist, wie viele Teams arbeiten. Wenn Sie nichts sagen, wählt Claude sie nach dem Umfang der Arbeit und teilt sie mit.

| Größe | Teams | Rundenobergrenze | Wofür |
|---|---|---|---|
| Schnell | Blau, Rot, Rosa | 2 | Kleine Arbeit, eine Datei, schnelle Kontrolle |
| Normal | + Grün, Grau, Orange | 5 | Die meisten Arbeiten |
| Voll | + Lila, Gelb, Schwarz, Weiß | 10 | Kritische, langlebige oder teuer rückgängig zu machende Arbeit |

Einer Größe können einzelne Teams hinzugefügt werden („schnelle Größe, füge auch das gelbe Team hinzu“); bei Hausaufgaben und Texten fügt Claude Gelb von selbst hinzu, bei Arbeit, die Ausführung erfordert, Orange, und sagt es. Die Rundenobergrenzen sind ungetestete Startwerte; zum Ändern genügt es, es zu sagen.

**Modus** ist, worauf geschaut wird: **breit** (die ganze Arbeit) oder **Fokus** (eine einzige Frage). Wenn Sie eine einzige Frage stellen, wählt Claude den Fokusmodus.

## Wo das Ergebnis ist

- Das Ergebnis erzählt Ihnen Claude im Chat: oben ein einziger Satz, darunter eine kurze Zusammenfassung; was **belegt** und was *geschätzt* ist, wird getrennt gesagt; eine eventuelle Frage steht ganz unten.
- In dem Ordner, in dem Sie arbeiten, wird ein Ordner `takim` angelegt. Das ist das eigene Protokoll der Teams; Sie müssen es nicht lesen. Auch der ursprüngliche Stand Ihrer Datei liegt in diesem Ordner (`takim\yedek\`); wenn Sie mit den Korrekturen zufrieden sind, können Sie ihn nach Abschluss der Arbeit löschen.
- Um den Teams eine Notiz oder einen Bericht zu geben, können Sie die Datei in den Ordner `takim\gelen\` legen.
- Wenn Sie im selben Ordner eine neue Arbeit beginnen, werden alte Aufzeichnungen nicht gelöscht; sie werden nach `takim\arsiv\` verschoben.

Vollständiger Text der Regeln: `skills/takim-dongu/sablonlar/kurallar.md`.

## Deinstallieren

- Wenn Sie mit `kur.cmd` installiert haben: Doppelklicken Sie auf `kaldir.cmd`. Es löscht nur die Agent-Dateien des Pakets und die drei Skill-Ordner; die `takim`-Ordner in Ihren Projekten fasst es nicht an. Bleibt eine Datei übrig, die es nicht löschen konnte, sagt es das auf dem Bildschirm.
- Wenn Sie es als Plugin installiert haben: Schreiben Sie in Claude Code `/plugin` und entfernen Sie das Plugin im sich öffnenden Fenster (dieser Schritt wurde nicht überprüft).
- Wenn Sie es in ein einzelnes Projekt kopiert haben: Löschen Sie die kopierten Dateien aus dem Ordner `.claude` dieses Projekts.

## Andere Installationswege (fortgeschritten)

Verwenden Sie nur einen. Wenn Sie zusätzlich zu `kur.cmd` den Plugin-Weg verwenden, erscheinen die Teams zweimal in der Liste.

**Als Plugin.** Setzen Sie unten an die Stelle `<takim-ajan klasörünün yolu>` den vollständigen Pfad dieses Ordners auf Ihrem Computer. In Claude Code:

```
/plugin marketplace add <takim-ajan klasörünün yolu>
/plugin install takim-ajan@takim-ajan-yerel
```

Der zweite Befehl schließt die Installation nicht von selbst ab: Er öffnet ein Fenster; dort wählen Sie den Benutzerbereich. Dass ein Windows-Pfad in diesem Befehl richtig gelesen wird, wurde nicht überprüft. Bei Installation als Plugin wird den Agent- und Skill-Namen `takim-ajan:` vorangestellt.

**In ein einzelnes Projekt.** Kopieren Sie den Inhalt des Ordners `agents` in den Ordner `.claude\agents` des Projekts und die drei Ordner im Ordner `skills` in den Ordner `.claude\skills` des Projekts. Die drei Skill-Ordner müssen zusammen kopiert werden.

## Inhalt des Pakets

| Ort | Was darin ist |
|---|---|
| `agents/` | Die Anweisungsdateien der Teams |
| `skills/` | Drei Skills: `takim-dongu` (Schleife und Vorlagen), `takim-tek` (einzelnes Team), `takim-durum` (Status) |
| `tests/` | Die eigene Prüfung des Pakets (`tests/denetle.ps1`), Druckszenarien und drei Trockenläufe |
| `docs/` | `docs/koken.md` (woher es stammt), `docs/arastirma.md` (die Methoden, auf denen es beruht) |
| `kur.cmd`, `kaldir.cmd` | Per Doppelklick installieren / deinstallieren |

Version 0.3.0. Was noch nicht getestet ist, steht am Ende von `docs/koken.md`.

Lizenz: MIT (LICENSE)
