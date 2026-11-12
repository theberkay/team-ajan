# Team Ajan

🌐 [Türkçe](README.md) · [English](README.en.md) · [All languages](LANGUAGES.md)

## Wozu es dient

Es lässt eine Arbeit von Ihnen (Code, technische Berechnung, Architekturprojekt, Produkt-/Oberflächendesign, Hausaufgabe, Recherche, Text, Plan) nicht mit nur einem Blick prüfen, sondern von getrennten, sich gegenseitig kontrollierenden „Teams“; auf Wunsch lässt es sie korrigieren, bis kein Fehler mehr bleibt. Es ist ein Erweiterungspaket für Claude Code. Es enthält zwei Arten von Dateien: **Agent** (eine Anweisung, die beschreibt, wie ein Team arbeitet) und **Skill** (eine Anweisung, die beschreibt, wie Claude die Teams steuert).

## Installieren

1. Wenn Sie das Paket als komprimierte Datei (zip) erhalten haben, entpacken Sie es zuerst in einen Ordner.
2. Doppelklicken Sie auf die Datei `kur.cmd`. Auf dem Bildschirm sollte „Kuruldu“ erscheinen.
3. Schließen Sie Claude und öffnen Sie es erneut.

`kur.cmd` kopiert nur die Agentendateien und die drei Skill-Ordner in Claudes Benutzerordner (`%USERPROFILE%\.claude`); gleichnamige ältere Dateien werden überschrieben, legen Sie daher keine eigenen Dateien in diese drei Ordner oder unter diesen Namen ab. Der Zielordner wird auf dem Bildschirm angezeigt. Wenn eine neue Version erscheint, genügt es, dieselbe Datei erneut auszuführen. Andere Installationswege stehen ganz unten.

## Ihr erster Satz nach der Installation

Öffnen Sie Claude in dem Ordner, in dem die zu prüfende Datei liegt, und schreiben Sie einen der folgenden Sätze. Im Satz muss das Wort **„Team“** vorkommen; sonst werden die Teams nicht aktiv.

| Was Sie möchten | Der Satz, den Sie schreiben |
|---|---|
| Nur prüfen, meine Datei nicht anfassen | `lass die Teams rapor.md prüfen, sie sollen nichts ändern` |
| Prüfen und korrigieren | `die Teams sollen hesap.md korrigieren, bis kein Fehler mehr bleibt` |
| Auf eine einzige Frage konzentrieren | `die Teams sollen sich nur das ansehen: warum schlägt dieser Test manchmal fehl?` |
| Die Meinung eines einzelnen Teams | `das rote Team soll diese Hausaufgabe angreifen` · `schau mit den Augen des gelben Teams` · `das türkise Team soll nach Verschwendung suchen` |
| Auch meine Notiz berücksichtigen | `gib das den Teams als Notiz: …` |
| Wo sie stehen | `wie ist der Stand der Teams?` |
| Weitermachen, wo sie aufgehört haben · aufhören | `die Teams sollen weitermachen` · `stopp die Teams` |

Die Skill-Auslöser sind auf Türkisch geschrieben; Anfragen, in denen „takım“ / „takımlar“ vorkommt, lösen zuverlässig aus. Anfragen in anderen Sprachen können funktionieren, sind aber nicht getestet.

Claude gibt zuerst eine kurze Zusammenfassung (was es verstanden hat, was es annimmt, wie viele Teams höchstens wie viele Runden arbeiten) und beginnt dann. Während der Arbeit kann es um Erlaubnis bitten, Dateien zu schreiben und Befehle auszuführen; wie oft es fragt, wurde noch nicht gemessen. Schreibrechten für den Ordner `takim` können Sie zustimmen; wenn Sie sich bei einer Befehlserlaubnis nicht sicher sind, sagen Sie nein – diese Prüfung wird dann als „konnte nicht geprüft werden“ gemeldet.

## Was mit Ihrer Datei passiert

- **Wenn Sie „prüfen“ sagen, bleibt Ihre Datei unverändert.** Den Teams wird gesagt, dass sie Berichte und Protokolle nur in ihren eigenen `takim`-Ordner schreiben („nur Prüfung“); eine Kopie Ihrer Datei wird trotzdem im Ordner `takim\yedek\` angelegt.
- **Wenn Sie „korrigieren“ sagen**, legt Claude zuerst eine Kopie Ihrer Datei im Ordner `takim\yedek\` an und sagt Ihnen: „Ihre Datei wird geändert, die Sicherung liegt hier.“ In Ihre Datei schreibt nur das blaue Team.
- Wenn Ihre Anfrage unklar ist, fasst Claude Ihre Datei nicht an.
- Ob die Teams Word- oder PDF-Dateien lesen können, wurde nicht überprüft; Claude sagt das zu Beginn und arbeitet mit einer in Text umgewandelten Kopie.

## Wann es endet

Wenn Sie „prüfen“ gesagt haben, endet es nach einer einzigen Prüfrunde: Claude berichtet, was gefunden wurde, und fragt, ob korrigiert werden soll. Wenn Sie „korrigieren“ gesagt haben, endet es, wenn die gefundenen Fehler korrigiert und die Korrektur erneut geprüft wurde und wenn für alles Unerledigte aufgeschrieben ist, wie es abgeschlossen wird. Es kann auch vorher anhalten (zum Beispiel, wenn die höchste Rundenzahl, die „Rundenobergrenze“, erreicht ist oder wenn etwas auftaucht, das Sie entscheiden müssen); wenn es anhält, erklärt Claude den Grund und fragt nach. Die Liste der Haltefälle steht in Abschnitt 8 der Regeln.

Wie lange eine Runde dauert, wurde nicht gemessen; mit mehr Teams steigen Dauer und Verbrauch.

## Teams

| Team | Agent | Was es tut |
|---|---|---|
| 🔵 Blau | `mavi-yazar` | Schreibt das Werk, führt jeden Einwand zu einem Ergebnis |
| 🔴 Rot | `kirmizi-saldirgan` | Versucht, die Behauptungen des Werks zu widerlegen |
| 🩷 Pink | `pembe-denetci` | Prüft die Befunde, schließt die Zählung ab |
| 🟣 Lila | `mor-sorgucu` | Prüft das Verständnis, stellt schwierige Fragen, untersucht die Ursache |
| 🟢 Grün | `yesil-gercek` | Überprüft externes Wissen an der Primärquelle, macht Vorrecherche |
| 🟠 Orange | `turuncu-deneyci` | Führt selbst aus, rechnet nach |
| 🩶 Grau | `gri-sadelestirici` | Fragt „ist das wirklich nötig?“, hält den Fokus |
| ⚫ Schwarz | `siyah-hafiza` | Fängt Vergessenes und wieder Kaputtgegangenes ab; ist das Tor |
| ⚪ Weiß | `beyaz-kayitci` | Überprüft Erledigtes, erfasst herrenlose Arbeit und Spuren |
| 🟡 Gelb | `sari-kullanici` | Testet das Werk mit den Augen der Person, die es benutzen wird |
| 🩵 Türkis | `turkuaz-verimlilik` | Findet Token-, Lese- und Aufrufverschwendung und minimiert sie (wird zur Größe hinzugefügt) |

„Werk“ ist Ihre geprüfte Datei bzw. Ihre Arbeit. Claudes Anzeige kennt für Teams nur acht Farben; deshalb erscheint Grau cyan, Schwarz und Weiß haben keine Farbe. Erkennen Sie das Team an seinem Namen.

## Größen und Modi

**Größe** bedeutet, wie viele Teams arbeiten. Wenn Sie nichts sagen, wählt Claude sie nach dem Umfang der Arbeit und teilt sie mit.

| Größe | Teams | Rundenobergrenze | Wofür |
|---|---|---|---|
| Schnell | Blau, Rot, Pink | 2 | Kleine Arbeit, eine Datei, schnelle Kontrolle |
| Normal | + Grün, Grau, Orange | 5 | Die meisten Arbeiten |
| Voll | + Lila, Gelb, Schwarz, Weiß | 10 | Kritische, langlebige oder teuer rückgängig zu machende Arbeit |

Einer Größe können einzelne Teams hinzugefügt werden („schnelle Größe, nimm auch das gelbe Team dazu“); bei Hausaufgaben und Texten fügt Claude Gelb, bei Arbeiten, die ausgeführt werden müssen, Orange von sich aus hinzu und sagt es. Die Rundenobergrenzen sind ungetestete Startwerte; um sie zu ändern, genügt es, das zu sagen.

**Modus** bedeutet, worauf geschaut wird: **breit** (die ganze Arbeit) oder **Fokus** (eine einzige Frage). Wenn Sie eine einzige Frage stellen, wählt Claude den Fokusmodus.

## Wo das Ergebnis ist

- Das Ergebnis erklärt Ihnen Claude im Chat: ganz oben ein Satz, darunter eine kurze Zusammenfassung; was **belegt** und was *Vermutung* ist, wird getrennt gesagt; gibt es eine Frage, steht sie ganz unten.
- In Ihrem Arbeitsordner wird ein Ordner `takim` angelegt. Das ist das eigene Protokoll der Teams; Sie müssen es nicht lesen. Auch der ursprüngliche Zustand Ihrer Datei liegt in diesem Ordner (`takim\yedek\`); wenn Sie mit den Korrekturen zufrieden sind, können Sie ihn nach Abschluss der Arbeit löschen.
- Um den Teams eine Notiz oder einen Bericht zu geben, können Sie die Datei in den Ordner `takim\gelen\` legen.
- Wenn Sie im selben Ordner eine neue Arbeit beginnen, werden alte Einträge nicht gelöscht, sondern nach `takim\arsiv\` verschoben.

Der vollständige Text der Regeln: `skills/takim-dongu/sablonlar/kurallar.md`.

## Entfernen

- Wenn Sie mit `kur.cmd` installiert haben: Doppelklicken Sie auf die Datei `kaldir.cmd`. Sie löscht nur die Agentendateien und die drei Skill-Ordner des Pakets; die `takim`-Ordner in Ihren Projekten bleiben unberührt. Bleibt eine Datei übrig, die sie nicht löschen konnte, wird das auf dem Bildschirm angezeigt.
- Wenn Sie es als Erweiterung installiert haben: Geben Sie in Claude Code `/plugin` ein und entfernen Sie die Erweiterung im sich öffnenden Fenster (dieser Schritt wurde nicht überprüft).
- Wenn Sie es in ein einzelnes Projekt kopiert haben: Löschen Sie die kopierten Dateien aus dem Ordner `.claude` dieses Projekts.

## Andere Installationswege (fortgeschritten)

Verwenden Sie nur einen davon. Wenn Sie zusätzlich zu `kur.cmd` auch den Erweiterungsweg nutzen, erscheinen die Teams zweimal in der Liste.

**Als Erweiterung.** Ersetzen Sie unten `<takim-ajan klasörünün yolu>` durch den vollständigen Pfad dieses Ordners auf Ihrem Computer. In Claude Code:

```
/plugin marketplace add <takim-ajan klasörünün yolu>
/plugin install takim-ajan@takim-ajan-yerel
```

Der zweite Befehl schließt die Installation nicht von selbst ab: Er öffnet ein Fenster, in dem Sie den Benutzerbereich auswählen. Ob ein Windows-Pfad in diesem Befehl korrekt gelesen wird, wurde nicht überprüft. Bei Installation als Erweiterung wird den Agenten- und Skill-Namen `takim-ajan:` vorangestellt.

**In ein einzelnes Projekt.** Kopieren Sie den Inhalt des Ordners `agents` in den Ordner `.claude\agents` des Projekts und die drei Ordner im Ordner `skills` in den Ordner `.claude\skills` des Projekts. Die drei Skill-Ordner müssen zusammen kopiert werden.

## Inhalt des Pakets

| Ort | Was darin ist |
|---|---|
| `agents/` | Die Anweisungsdateien der Teams |
| `skills/` | Drei Skills: `takim-dongu` (Schleife und Vorlagen), `takim-tek` (einzelnes Team), `takim-durum` (Stand) |
| `tests/` | Die Selbstprüfung des Pakets (`tests/denetle.ps1`), Belastungsszenarien und drei Trockenläufe |
| `docs/` | `docs/koken.md` (Herkunft), `docs/arastirma.md` (zugrunde liegende Methoden) |
| `kur.cmd`, `kaldir.cmd` | Per Doppelklick installieren / entfernen |

Version 0.2.4. Was noch nicht getestet ist, steht am Ende von `docs/koken.md`.
