# Team Ajan

🌐 [Türkçe](README.md) · [English](README.en.md) · [All languages](LANGUAGES.md)

## Waarvoor het dient

Het laat een werk van u (code, technische berekening, architectuurproject, product- / interfaceontwerp, opdracht, onderzoek, tekst, plan) niet door één paar ogen beoordelen, maar door aparte „teams” die elkaar controleren; als u wilt, laat het corrigeren tot er geen fout meer over is. Het is een pluginpakket voor Claude Code. Het bevat twee soorten bestanden: **agent** (instructie die beschrijft hoe een team werkt) en **skill** (instructie die beschrijft hoe Claude de teams aanstuurt).

De vakgebiedgids (`skills/takim-dongu/sablonlar/alanlar.md`) vertelt de teams waar ze op moeten letten in deze gebieden: code, techniek, werktuigbouw, mechatronica, elektrotechniek, zware industrie, architectuur, vormgeving en design, uitleg van leerstof en opdrachten, presentatie, onderzoek, documentatie, geneeskunde, recht, politiek, geschiedenis, muziek. In geneeskunde en recht geven de teams geen diagnose, behandeling of juridisch advies; ze beoordelen alleen de tekst en de bronnen ervan, en het resultaat draagt de opmerking „raadpleeg een deskundige”.

## Installeren

1. Als u het pakket als gecomprimeerd bestand (zip) hebt ontvangen, pak het dan eerst uit in een map.
2. Dubbelklik op `kur.cmd`. U ziet de melding „Kuruldu” (geïnstalleerd) op het scherm.
3. Sluit Claude en open het opnieuw.

`kur.cmd` kopieert alleen de agentbestanden en de drie skillmappen naar de gebruikersmap van Claude (`%USERPROFILE%\.claude`); oudere bestanden met dezelfde naam worden overschreven, zet dus geen eigen bestanden in die drie mappen of onder die namen. Het toont de doelmap op het scherm. Komt er een nieuwe versie, voer dan gewoon hetzelfde bestand opnieuw uit. Andere installatiemethoden staan onderaan.

## Uw eerste zin na de installatie

Open Claude in de map waarin het te beoordelen bestand staat en typ een van de volgende zinnen. De zin moet het woord **„takım”** (team) bevatten; anders worden de teams niet actief.

| Wat u wilt | De zin om te typen |
|---|---|
| Alleen beoordelen, mijn bestand niet aanraken | `laat de teams rapor.md beoordelen, zonder het aan te raken` |
| Beoordelen en corrigeren | `laat de teams hesap.md corrigeren tot er geen fout meer is` |
| Op één vraag focussen | `teams, kijk alleen hiernaar: waarom faalt deze test af en toe?` |
| De mening van één team | `rood team, val deze opdracht aan` · `bekijk het door de ogen van het gele team` · `turquoise team, zoek naar verspilling` |
| Ook mijn notitie meenemen | `geef dit aan de teams als notitie: …` |
| Waar ze staan | `hoe staan de teams ervoor?` |
| Verdergaan waar ze gebleven waren · stoppen | `teams, ga verder` · `stop de teams` |

De skill-triggers zijn in het Turks geschreven; verzoeken met „takım” / „takımlar” activeren ze betrouwbaar; verzoeken in andere talen kunnen werken, maar zijn niet getest.

Claude geeft eerst een korte samenvatting (wat het begrepen heeft, wat het heeft aangenomen, hoeveel teams hoogstens hoeveel rondes zullen werken) en begint. Tijdens het werk kan het toestemming vragen om bestanden te schrijven en opdrachten uit te voeren; hoe vaak het dat zal vragen is nog niet gemeten. U kunt ja zeggen tegen schrijfrechten voor de map `takim`; twijfelt u over een opdrachttoestemming, zeg dan nee, dan wordt die controle gemeld als „kon niet worden gecontroleerd”.

## Wat er met uw bestand gebeurt

- **Als u „beoordelen” zegt, verandert uw bestand niet.** De teams krijgen te horen dat ze rapporten en logboeken alleen in hun eigen map `takim` schrijven („alleen beoordeling”); een kopie van uw bestand wordt toch in de map `takim\yedek\` gezet.
- **Als u „corrigeren” zegt,** zet Claude eerst een kopie van uw bestand in de map `takim\yedek\` en zegt u „uw bestand gaat veranderen, de back-up staat hier”. Alleen het Blauwe team schrijft in uw bestand.
- Is uw verzoek onduidelijk, dan raakt Claude uw bestand niet aan.
- Het is niet geverifieerd dat de teams Word- of PDF-bestanden kunnen lezen; Claude zegt dat aan het begin en werkt op een naar tekst omgezette kopie.

## Wanneer het klaar is

Als u „beoordelen” zei, eindigt het na één beoordelingsronde: Claude legt uit wat het gevonden heeft en vraagt of er gecorrigeerd moet worden. Als u „corrigeren” zei, eindigt het wanneer de gevonden fouten gecorrigeerd zijn en de correcties opnieuw gecontroleerd, en wanneer voor alles wat half af is beschreven staat hoe het wordt afgesloten. Het kan ook eerder stoppen (bijvoorbeeld wanneer het maximale aantal rondes, het „rondeplafond”, bereikt is, of wanneer er iets opduikt waarover u moet beslissen); als het stopt, legt Claude de reden uit en vraagt het. De lijst van stopgevallen staat in hoofdstuk 8 van de regels.

Hoe lang een ronde duurt is niet gemeten; met meer teams nemen duur en verbruik toe.

## Teams

| Team | Agent | Wat het doet |
|---|---|---|
| 🔵 Blauw | `mavi-yazar` | Schrijft het werk, brengt elk bezwaar tot een uitkomst |
| 🔴 Rood | `kirmizi-saldirgan` | Probeert de beweringen van het werk te breken |
| 🩷 Roze | `pembe-denetci` | Controleert de bevindingen, sluit de telling af |
| 🟣 Paars | `mor-sorgucu` | Toetst het begrip, stelt moeilijke vragen, onderzoekt de oorzaak |
| 🟢 Groen | `yesil-gercek` | Verifieert externe informatie bij de primaire bron, doet vooronderzoek |
| 🟠 Oranje | `turuncu-deneyci` | Voert zelf uit, rekent opnieuw |
| 🩶 Grijs | `gri-sadelestirici` | Vraagt „is dit echt nodig”, bewaakt de focus |
| ⚫ Zwart | `siyah-hafiza` | Vangt het vergetene en wat opnieuw kapot ging; het is de poort |
| ⚪ Wit | `beyaz-kayitci` | Verifieert wat gedaan is, legt eigenaarloos werk en het spoor vast |
| 🟡 Geel | `sari-kullanici` | Probeert het werk uit door de ogen van wie het zal gebruiken |
| 🩵 Turquoise | `turkuaz-verimlilik` | Vindt verspilling van tokens, leesacties en aanroepen en beperkt die tot een minimum (wordt aan een omvang toegevoegd) |

Het „werk” is uw beoordeelde bestand of opdracht. Het scherm van Claude kent maar acht kleuren voor de teams; daarom verschijnt Grijs als cyaan, en hebben Zwart en Wit geen kleur. Herken een team aan zijn naam.

## Omvang en modi

**Omvang** is hoeveel teams er werken. Zegt u niets, dan kiest Claude die naar de grootte van het werk en meldt dat.

| Omvang | Teams | Rondeplafond | Waarvoor |
|---|---|---|---|
| Snel | Blauw, Rood, Roze | 2 | Klein werk, één bestand, snelle controle |
| Normaal | + Groen, Grijs, Oranje | 5 | Het meeste werk |
| Volledig | + Paars, Geel, Zwart, Wit | 10 | Kritiek, langlevend of duur terug te draaien werk |

Aan een omvang kunnen teams één voor één worden toegevoegd („snelle omvang, voeg ook het gele team toe”); bij opdrachten en teksten voegt Claude Geel uit zichzelf toe, en bij werk dat uitgevoerd moet worden Oranje, en zegt dat. De rondeplafonds zijn ongeteste startwaarden; om ze te wijzigen volstaat het om het te zeggen.

**Modus** is waarnaar gekeken wordt: **breed** (het hele werk) of **focus** (één vraag). Stelt u één vraag, dan kiest Claude de focusmodus.

## Waar het resultaat is

- Claude vertelt u het resultaat in de chat: bovenaan één zin, daaronder een korte samenvatting; wat **bewezen** is en wat *geschat* is, wordt apart gezegd; een eventuele vraag staat helemaal onderaan.
- In de map waarin u werkt wordt een map `takim` aangemaakt. Dit is het eigen logboek van de teams; u hoeft het niet te lezen. De oorspronkelijke versie van uw bestand staat ook in deze map (`takim\yedek\`); bent u tevreden met de correcties, dan kunt u die na afloop van het werk verwijderen.
- Om de teams een notitie of rapport te geven, kunt u het bestand in de map `takim\gelen\` zetten.
- Start u een nieuw werk in dezelfde map, dan worden oude gegevens niet verwijderd; ze worden naar `takim\arsiv\` verplaatst.

Volledige tekst van de regels: `skills/takim-dongu/sablonlar/kurallar.md`.

## Verwijderen

- Als u met `kur.cmd` hebt geïnstalleerd: dubbelklik op `kaldir.cmd`. Het verwijdert alleen de agentbestanden van het pakket en de drie skillmappen; de `takim`-mappen in uw projecten raakt het niet aan. Blijft er een bestand over dat het niet kon verwijderen, dan meldt het dat op het scherm.
- Als u het als plugin hebt geïnstalleerd: typ `/plugin` in Claude Code en verwijder de plugin in het venster dat opent (deze stap is niet geverifieerd).
- Als u het naar één project hebt gekopieerd: verwijder de gekopieerde bestanden uit de map `.claude` van dat project.

## Andere installatiemethoden (gevorderd)

Gebruik er maar één. Gebruikt u de pluginweg naast `kur.cmd`, dan verschijnen de teams twee keer in de lijst.

**Als plugin.** Zet hieronder op de plaats van `<takim-ajan klasörünün yolu>` het volledige pad van deze map op uw computer. In Claude Code:

```
/plugin marketplace add <takim-ajan klasörünün yolu>
/plugin install takim-ajan@takim-ajan-yerel
```

De tweede opdracht rondt de installatie niet zelf af: ze opent een venster; daar kiest u het gebruikersbereik. Het is niet geverifieerd dat een Windows-pad in deze opdracht correct wordt gelezen. Bij installatie als plugin krijgen agent- en skillnamen het voorvoegsel `takim-ajan:`.

**In één project.** Kopieer de inhoud van de map `agents` naar de map `.claude\agents` van het project, en de drie mappen in de map `skills` naar de map `.claude\skills` van het project. De drie skillmappen moeten samen worden gekopieerd.

## Inhoud van het pakket

| Plaats | Wat erin zit |
|---|---|
| `agents/` | De instructiebestanden van de teams |
| `skills/` | Drie skills: `takim-dongu` (lus en sjablonen), `takim-tek` (één team), `takim-durum` (status) |
| `tests/` | De eigen controle van het pakket (`tests/denetle.ps1`), drukscenario's en drie droogoefeningen |
| `docs/` | `docs/koken.md` (waar het vandaan komt), `docs/arastirma.md` (de methoden waarop het steunt) |
| `kur.cmd`, `kaldir.cmd` | Installeren / verwijderen met dubbelklik |

Versie 0.3.0. Wat nog niet getest is, staat aan het eind van `docs/koken.md`.

Licentie: MIT (LICENSE)
