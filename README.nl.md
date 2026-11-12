# Team Ajan

🌐 [Türkçe](README.md) · [English](README.en.md) · [All languages](LANGUAGES.md)

## Waar het voor dient

Het laat uw werk (code, technische berekening, architectuurontwerp, product-/interfaceontwerp, opdracht, onderzoek, tekst, plan) niet door één paar ogen beoordelen, maar door afzonderlijke "teams" die elkaar controleren; als u wilt, laat het de fouten verbeteren tot er geen meer over zijn. Het is een pluginpakket voor Claude Code. Er zitten twee soorten bestanden in: **agent** (een instructie die beschrijft hoe een team werkt) en **vaardigheid** (een instructie die beschrijft hoe Claude de teams aanstuurt).

## Installeren

1. Als u het pakket als gecomprimeerd bestand (zip) hebt ontvangen, pak het dan eerst uit in een map.
2. Dubbelklik op het bestand `kur.cmd`. Controleer dat op het scherm "Kuruldu" verschijnt.
3. Sluit Claude en open het opnieuw.

`kur.cmd` kopieert alleen de agentbestanden en de drie vaardigheidsmappen naar de gebruikersmap van Claude (`%USERPROFILE%\.claude`); het overschrijft oudere bestanden met dezelfde naam, dus zet in die drie mappen geen eigen bestanden met die namen. De doelmap wordt op het scherm getoond. Komt er een nieuwe versie, dan volstaat het om hetzelfde bestand opnieuw uit te voeren. Andere installatiemethoden staan onderaan.

## Uw eerste zin na de installatie

Open Claude in de map waarin het te beoordelen bestand staat en typ een van de volgende zinnen. Het woord **"team"** moet in de zin voorkomen; anders worden de teams niet ingeschakeld.

| Wat wilt u | Te typen zin |
|---|---|
| Alleen laten beoordelen, mijn bestand niet aanraken | `laat de teams rapor.md beoordelen, zonder het aan te raken` |
| Laten beoordelen en verbeteren | `laat de teams hesap.md verbeteren tot er geen fouten meer zijn` |
| Laten focussen op één vraag | `laat de teams alleen hiernaar kijken: waarom faalt deze test af en toe?` |
| De mening van één team | `laat het rode team deze opdracht aanvallen` · `kijk met de ogen van het gele team` · `laat het turquoise team naar verspilling kijken` |
| Ook rekening houden met mijn notitie | `geef dit als notitie aan de teams: …` |
| Waar ze gebleven zijn | `hoe staan de teams ervoor?` |
| Verdergaan waar ze gebleven waren · stoppen | `laat de teams doorgaan` · `stop de teams` |

> De triggers van de vaardigheden zijn in het Turks geschreven; verzoeken waarin het woord "takım" / "takımlar" voorkomt, triggeren betrouwbaar; verzoeken in andere talen kunnen werken, maar zijn niet getest.

Claude geeft eerst een korte samenvatting (wat het begrepen heeft, wat het aanneemt, hoeveel teams hoeveel rondes maximaal werken) en begint dan. Tijdens het werk kan het toestemming vragen om bestanden te schrijven en opdrachten uit te voeren; hoe vaak het dat vraagt, is nog niet gemeten. Toestemming om in de map `takim` te schrijven kunt u geven; twijfelt u over toestemming voor een opdracht, zeg dan nee: die controle wordt dan als "niet bekeken" gerapporteerd.

## Wat er met uw bestand gebeurt

- **Zegt u "beoordelen", dan verandert uw bestand niet.** De teams krijgen te horen dat ze alleen in hun eigen map `takim` rapporten en logboeken mogen schrijven ("alleen beoordeling"); toch wordt er een kopie van uw bestand in de map `takim\yedek\` gemaakt.
- **Zegt u "verbeteren"**, dan maakt Claude eerst een kopie van uw bestand in de map `takim\yedek\` en zegt u: "uw bestand gaat veranderen, de back-up staat hier". Alleen het Blauwe team schrijft in uw bestand.
- Is uw verzoek onduidelijk, dan raakt Claude uw bestand niet aan.
- Of de teams Word- of PDF-bestanden kunnen lezen, is niet geverifieerd; Claude zegt dat aan het begin en werkt met een naar tekst omgezette kopie.

## Wanneer het klaar is

Hebt u "beoordelen" gezegd, dan is het na één beoordelingsronde klaar: Claude vertelt wat er gevonden is en vraagt of het verbeterd moet worden. Hebt u "verbeteren" gezegd, dan is het klaar wanneer de gevonden fouten verbeterd zijn, de verbetering opnieuw is getest en voor alles wat half af is, is opgeschreven hoe het wordt afgerond. Het kan ook eerder stoppen (bijvoorbeeld wanneer het maximale aantal rondes, het "rondeplafond", is bereikt, of wanneer er iets opduikt waarover u moet beslissen); als het stopt, legt Claude uit waarom en stelt het een vraag. De lijst van stopsituaties staat in hoofdstuk 8 van de regels.

Hoe lang een ronde duurt, is niet gemeten; naarmate het aantal teams toeneemt, nemen de duur en het verbruik toe.

## Teams

| Team | Agent | Wat het doet |
|---|---|---|
| 🔵 Blauw | `mavi-yazar` | Schrijft het werk, verbindt elk bezwaar aan een uitkomst |
| 🔴 Rood | `kirmizi-saldirgan` | Probeert de beweringen van het werk onderuit te halen |
| 🩷 Roze | `pembe-denetci` | Controleert de bevindingen, sluit de telling af |
| 🟣 Paars | `mor-sorgucu` | Controleert het begrip, stelt moeilijke vragen, onderzoekt de oorzaak |
| 🟢 Groen | `yesil-gercek` | Verifieert externe informatie bij de primaire bron, doet vooronderzoek |
| 🟠 Oranje | `turuncu-deneyci` | Voert zelf uit, rekent opnieuw |
| 🩶 Grijs | `gri-sadelestirici` | Vraagt "is dit echt nodig", bewaakt de focus |
| ⚫ Zwart | `siyah-hafiza` | Vangt wat vergeten is en wat weer kapot is gegaan; is de poort |
| ⚪ Wit | `beyaz-kayitci` | Verifieert wat gedaan is, registreert werk zonder eigenaar en het spoor |
| 🟡 Geel | `sari-kullanici` | Probeert het werk uit met de ogen van wie het gaat gebruiken |
| 🩵 Turquoise | `turkuaz-verimlilik` | Vindt verspilling van tokens, leeswerk en aanroepen en beperkt die tot een minimum (wordt aan de omvang toegevoegd) |

Het "werk" is uw beoordeelde bestand of uw opdracht. Het scherm van Claude kent voor teams slechts acht kleuren; daarom verschijnt Grijs als cyaan en hebben Zwart en Wit geen kleur. Herken het team aan zijn naam.

## Omvang en modi

**Omvang** is hoeveel teams er werken. Zegt u niets, dan kiest Claude op basis van de grootte van het werk en laat het dat weten.

| Omvang | Teams | Rondeplafond | Waarvoor |
|---|---|---|---|
| Snel | Blauw, Rood, Roze | 2 | Klein werk, één bestand, snelle controle |
| Normaal | + Groen, Grijs, Oranje | 5 | Het meeste werk |
| Volledig | + Paars, Geel, Zwart, Wit | 10 | Kritiek, langlevend of duur terug te draaien werk |

Aan een omvang kunnen afzonderlijke teams worden toegevoegd ("snelle omvang, voeg ook het gele team toe"); bij opdrachten en teksten voegt Claude uit zichzelf Geel toe, bij werk dat uitgevoerd moet worden Oranje, en het zegt dat. De rondeplafonds zijn ongeteste beginwaarden; om ze te wijzigen volstaat het om het te zeggen.

**Modus** is waarnaar gekeken wordt: **breed** (het hele werk) of **focus** (één vraag). Stelt u één vraag, dan kiest Claude de focusmodus.

## Waar het resultaat staat

- Claude vertelt u het resultaat in de chat: bovenaan één zin, daaronder een korte samenvatting; apart wordt gezegd wat **bewezen** is en wat een *schatting* is; als er een vraag is, staat die onderaan.
- In de map waarin u werkt, wordt een map `takim` aangemaakt. Dit is het eigen logboek van de teams; u hoeft het niet te lezen. De oorspronkelijke versie van uw bestand staat ook in deze map (`takim\yedek\`); bent u tevreden met de verbeteringen, dan kunt u die na afloop verwijderen.
- Om de teams een notitie of rapport te geven, kunt u het bestand in de map `takim\gelen\` leggen.
- Start u in dezelfde map een nieuw werk, dan worden de oude gegevens niet verwijderd; ze worden verplaatst naar `takim\arsiv\`.

Volledige tekst van de regels: `skills/takim-dongu/sablonlar/kurallar.md`.

## Verwijderen

- Als u met `kur.cmd` hebt geïnstalleerd: dubbelklik op het bestand `kaldir.cmd`. Het verwijdert alleen de agentbestanden van het pakket en de drie vaardigheidsmappen; de mappen `takim` in uw projecten raakt het niet aan. Blijft er een bestand over dat het niet kon verwijderen, dan meldt het dat op het scherm.
- Als u het als plugin hebt geïnstalleerd: typ in Claude Code `/plugin` en verwijder de plugin in het venster dat opent (deze stap is niet geverifieerd).
- Als u het naar één project hebt gekopieerd: verwijder de gekopieerde bestanden uit de map `.claude` van dat project.

## Andere installatiemethoden (gevorderd)

Gebruik er maar één. Gebruikt u naast `kur.cmd` ook de pluginmethode, dan verschijnen de teams twee keer in de lijst.

**Als plugin.** Vervang hieronder `<takim-ajan klasörünün yolu>` door het volledige pad van deze map op uw computer. In Claude Code:

```
/plugin marketplace add <takim-ajan klasörünün yolu>
/plugin install takim-ajan@takim-ajan-yerel
```

De tweede opdracht voltooit de installatie niet vanzelf: er opent een venster waarin u het gebruikersbereik kiest. Of een Windows-pad in deze opdracht juist wordt gelezen, is niet geverifieerd. Bij installatie als plugin krijgen de agent- en vaardigheidsnamen het voorvoegsel `takim-ajan:`.

**In één project.** Kopieer de inhoud van de map `agents` naar de map `.claude\agents` van het project, en de drie mappen in de map `skills` naar de map `.claude\skills` van het project. De drie vaardigheidsmappen moeten samen worden gekopieerd.

## Inhoud van het pakket

| Plaats | Wat erin zit |
|---|---|
| `agents/` | De instructiebestanden van de teams |
| `skills/` | Drie vaardigheden: `takim-dongu` (lus en sjablonen), `takim-tek` (één team), `takim-durum` (status) |
| `tests/` | De eigen controle van het pakket (`tests/denetle.ps1`), stressscenario's en drie droge proefdraaien |
| `docs/` | `docs/koken.md` (waar het vandaan komt), `docs/arastirma.md` (de methoden waarop het steunt) |
| `kur.cmd`, `kaldir.cmd` | Dubbelklik om te installeren / verwijderen |

Versie 0.2.4. Wat nog niet getest is, staat aan het einde van `docs/koken.md`.
