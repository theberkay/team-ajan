# Team Ajan

🌐 [Türkçe](README.md) · [English](README.en.md) · [All languages](LANGUAGES.md)

## Para saan ito

Ipinasusuri nito ang isang gawa mo (code, kalkulasyong pang-inhenyeriya, proyektong arkitektura, disenyo ng produkto / interface, takdang-aralin, pananaliksik, sulatin, plano) hindi sa iisang mata lamang, kundi sa magkakahiwalay na "koponan" na nagsusuri sa isa't isa; kung gusto mo, ipinaaayos nito hanggang wala nang natitirang mali. Isa itong plugin package para sa Claude Code. May dalawang uri ng file sa loob: **ahente** (tagubiling naglalarawan kung paano gumagana ang isang koponan) at **kasanayan** (tagubiling naglalarawan kung paano pinamamahalaan ni Claude ang mga koponan).

## Pag-install

1. Kung natanggap mo ang package bilang naka-compress na file (zip), i-extract muna ito sa isang folder.
2. I-double click ang file na `kur.cmd`. Hintaying makita sa screen ang salitang "Kuruldu".
3. Isara si Claude at buksan muli.

Kinokopya lamang ng `kur.cmd` ang mga file ng ahente at ang tatlong folder ng kasanayan sa user folder ni Claude (`%USERPROFILE%\.claude`); pinapalitan nito ang mga lumang may parehong pangalan, kaya huwag maglagay ng sarili mong file sa tatlong folder na iyon o gamit ang mga pangalang iyon. Ipinapakita nito sa screen ang target na folder. Kapag may bagong bersyon, sapat nang patakbuhin muli ang parehong file. Nasa pinakaibaba ang iba pang paraan ng pag-install.

## Ang una mong pangungusap pagkatapos mag-install

Buksan si Claude sa folder kung nasaan ang file na susuriin, at isulat ang isa sa mga sumusunod. Dapat may salitang **"koponan"** ang pangungusap; kung wala, hindi kikilos ang mga koponan.

| Ano ang gusto mo | Ang pangungusap na isusulat mo |
|---|---|
| Suriin lang, huwag galawin ang file ko | `ipasuri sa mga koponan ang file na rapor.md, huwag nilang galawin` |
| Suriin at ayusin | `ayusin ng mga koponan ang file na hesap.md hanggang wala nang mali` |
| Tumutok sa iisang tanong | `ito lang ang tingnan ng mga koponan: bakit paminsan-minsang bumabagsak ang test na ito?` |
| Opinyon ng iisang koponan | `atakihin ng pulang koponan ang takdang-aralin na ito` · `tumingin sa mata ng dilaw na koponan` · `hanapin ng turkesang koponan ang aksaya` |
| Isaalang-alang din ang tala ko | `ibigay ito sa mga koponan bilang tala: …` |
| Saan sila tumigil | `ano ang kalagayan ng mga koponan?` |
| Ituloy mula sa kung saan tumigil · tumigil | `ituloy ng mga koponan` · `itigil ang mga koponan` |

Nakasulat sa Turkish ang mga trigger ng kasanayan; maaasahang nagti-trigger ang mga kahilingang may salitang "takım" / "takımlar"; maaaring gumana ang mga kahilingan sa ibang wika ngunit hindi pa nasusubok.

Magbibigay muna si Claude ng maikling buod (kung ano ang naintindihan niya, ano ang ipinagpalagay niya, ilang koponan ang gagana nang hanggang ilang round) at magsisimula. Habang gumagana, maaari siyang humingi ng pahintulot na magsulat ng file at magpatakbo ng command; hindi pa nasusukat kung ilang beses siyang magtatanong. Maaari kang mag-oo sa mga pahintulot na magsulat sa folder na `takim`; kung hindi ka sigurado sa pahintulot para sa isang command, humindi ka, at iuulat ang pagsusuring iyon bilang "hindi natingnan".

## Ano ang mangyayari sa file mo

- **Kung sasabihin mong "ipasuri", hindi magbabago ang file mo.** Sinasabihan ang mga koponan na sumulat lamang ng ulat at talaan sa sarili nilang folder na `takim` ("pagsusuri lamang"); gayunpaman, kinokopya pa rin ang file mo sa folder na `takim\yedek\`.
- **Kung sasabihin mong "ayusin",** kokopyahin muna ni Claude ang file mo sa folder na `takim\yedek\` at sasabihin sa iyo na "magbabago ang file mo, narito ang backup". Ang Asul na koponan lamang ang sumusulat sa file mo.
- Kung malabo ang kahilingan mo, hindi gagalawin ni Claude ang file mo.
- Hindi pa napatutunayan kung nababasa ng mga koponan ang mga file na Word o PDF; sinasabi ito ni Claude sa simula at gumagana sa kopyang ginawang teksto.

## Kailan ito matatapos

Kung "ipasuri" ang sinabi mo, matatapos ito pagkatapos ng iisang round ng pagsusuri: ipapaliwanag ni Claude ang nakita at itatanong kung aayusin ba. Kung "ayusin" ang sinabi mo, matatapos ito kapag naayos na ang mga natagpuang mali, nasubok muli na naayos nga, at naisulat kung paano isasara ang bawat naiwang nakabitin. Maaari rin itong tumigil bago matapos (halimbawa kapag naabot ang pinakamataas na bilang ng round, ang "kisame ng round", o kapag may lumitaw na kailangan mong pagpasyahan); kapag tumigil, ipapaliwanag ni Claude ang dahilan at magtatanong. Nasa ika-8 seksyon ng mga patakaran ang listahan ng mga sitwasyon ng pagtigil.

Hindi pa nasusukat kung gaano katagal ang isang round; habang dumarami ang koponan, tumataas ang tagal at paggamit.

## Mga koponan

| Koponan | Ahente | Ano ang ginagawa |
|---|---|---|
| 🔵 Asul | `mavi-yazar` | Isinusulat ang gawa, dinadala ang bawat pagtutol sa isang kinalabasan |
| 🔴 Pula | `kirmizi-saldirgan` | Sinusubukang sirain ang mga pahayag ng gawa |
| 🩷 Rosas | `pembe-denetci` | Sinusuri ang mga natuklasan, isinasara ang bilang |
| 🟣 Lila | `mor-sorgucu` | Sinusuri ang pag-unawa, nagtatanong ng mahihirap, sinisiyasat ang sanhi |
| 🟢 Berde | `yesil-gercek` | Pinatutunayan ang panlabas na impormasyon mula sa pangunahing sanggunian, gumagawa ng paunang pananaliksik |
| 🟠 Kahel | `turuncu-deneyci` | Pinatatakbo gamit ang sariling kamay, muling kinakalkula |
| 🩶 Abo | `gri-sadelestirici` | Nagtatanong ng "talaga bang kailangan?", pinananatili ang pokus |
| ⚫ Itim | `siyah-hafiza` | Hinuhuli ang nakalimutan at ang muling nasira; ito ang tarangkahan |
| ⚪ Puti | `beyaz-kayitci` | Pinatutunayan ang nagawa, itinatala ang gawaing walang may-ari at ang bakas |
| 🟡 Dilaw | `sari-kullanici` | Sinusubok ang gawa sa mata ng taong gagamit nito |
| 🩵 Turkesa | `turkuaz-verimlilik` | Hinahanap at binabawasan sa pinakamababa ang aksaya sa token, pagbasa at tawag (idinadagdag sa laki) |

Ang "gawa" ay ang file o trabahong sinusuri. Walong kulay lamang ang kilala ng screen ni Claude para sa mga koponan; kaya cyan ang lumilitaw na kulay ng Abo, at walang kulay ang Itim at Puti. Kilalanin ang koponan sa pangalan nito.

## Mga laki at mode

Ang **laki** ay kung ilang koponan ang gagana. Kung hindi mo sasabihin, pipili si Claude ayon sa laki ng trabaho at ipapaalam sa iyo.

| Laki | Mga koponan | Kisame ng round | Para saan |
|---|---|---|---|
| Mabilis | Asul, Pula, Rosas | 2 | Maliit na trabaho, iisang file, mabilis na pagsusuri |
| Karaniwan | + Berde, Abo, Kahel | 5 | Karamihan ng trabaho |
| Buo | + Lila, Dilaw, Itim, Puti | 10 | Kritikal, pangmatagalan, o magastos bawiing trabaho |

Maaaring magdagdag ng koponan nang isa-isa sa isang laki ("mabilis na laki, idagdag din ang dilaw na koponan"); sa takdang-aralin at sulatin kusang idinadagdag ni Claude ang Dilaw, at sa trabahong kailangang patakbuhin ang Kahel, at sinasabi niya ito. Ang mga kisame ng round ay mga panimulang halagang hindi pa nasusubok; para baguhin, sapat nang sabihin mo.

Ang **mode** ay kung ano ang titingnan: **malawak** (ang buong trabaho) o **pokus** (iisang tanong). Kung iisang tanong ang itatanong mo, pipiliin ni Claude ang pokus na mode.

## Nasaan ang resulta

- Ipapaliwanag ni Claude ang resulta sa usapan: iisang pangungusap sa itaas, maikling buod sa ilalim; hiwalay na sinasabi kung ano ang **may patunay** at kung ano ang *tantiya*; kung may tanong, nasa pinakaibaba ito.
- Magbubukas ng folder na `takim` sa folder kung saan ka nagtatrabaho. Ito ang sariling talaan ng mga koponan; hindi mo kailangang basahin. Nasa folder na ito rin ang orihinal na anyo ng file mo (`takim\yedek\`); kung kontento ka sa mga pag-aayos, maaari mo itong burahin pagkatapos ng trabaho.
- Para magbigay ng tala o ulat sa mga koponan, maaari mong ilagay ang file sa folder na `takim\gelen\`.
- Kung magsisimula ka ng bagong trabaho sa parehong folder, hindi binubura ang mga lumang tala; inililipat ang mga ito sa ilalim ng `takim\arsiv\`.

Buong teksto ng mga patakaran: `skills/takim-dongu/sablonlar/kurallar.md`.

## Pag-uninstall

- Kung nag-install ka gamit ang `kur.cmd`: i-double click ang file na `kaldir.cmd`. Binubura lamang nito ang mga file ng ahente ng package at ang tatlong folder ng kasanayan; hindi nito ginagalaw ang mga folder na `takim` sa mga proyekto mo. Kung may file na hindi nito nabura, sasabihin nito sa screen.
- Kung nag-install ka bilang plugin: sa loob ng Claude Code, isulat ang `/plugin` at alisin ang plugin mula sa bintanang bubukas (hindi pa napatutunayan ang hakbang na ito).
- Kung kinopya mo sa iisang proyekto: burahin ang mga file na kinopya mo mula sa folder na `.claude` ng proyektong iyon.

## Iba pang paraan ng pag-install (advanced)

Isa lamang ang gamitin. Kung gagamitin mo ang paraang plugin kasabay ng `kur.cmd`, dalawang beses lilitaw ang mga koponan sa listahan.

**Bilang plugin.** Sa ibaba, sa lugar na may nakasulat na `<takim-ajan klasörünün yolu>`, ilagay ang buong path ng folder na ito sa computer mo. Sa loob ng Claude Code:

```
/plugin marketplace add <takim-ajan klasörünün yolu>
/plugin install takim-ajan@takim-ajan-yerel
```

Hindi kusang tinatapos ng ikalawang command ang pag-install: nagbubukas ito ng bintana; doon mo pipiliin ang user scope. Hindi pa napatutunayan kung tama ang pagbasa sa Windows path sa command na ito. Kapag na-install bilang plugin, magkakaroon ng `takim-ajan:` sa unahan ang mga pangalan ng ahente at kasanayan.

**Sa iisang proyekto.** Kopyahin ang laman ng folder na `agents` sa folder na `.claude\agents` ng proyekto, at ang tatlong folder sa loob ng folder na `skills` sa folder na `.claude\skills` ng proyekto. Dapat sabay na kopyahin ang tatlong folder ng kasanayan.

## Laman ng package

| Lugar | Ano ang laman |
|---|---|
| `agents/` | Mga file ng tagubilin ng mga koponan |
| `skills/` | Tatlong kasanayan: `takim-dongu` (ang siklo at mga template), `takim-tek` (iisang koponan), `takim-durum` (kalagayan) |
| `tests/` | Sariling pagsusuri ng package (`tests/denetle.ps1`), mga senaryong pang-presyon at tatlong dry run |
| `docs/` | `docs/koken.md` (saan ito nagmula), `docs/arastirma.md` (mga pamamaraang pinagbatayan) |
| `kur.cmd`, `kaldir.cmd` | Pag-install / pag-uninstall sa double click |

Bersyon 0.2.4. Nakalista sa dulo ng `docs/koken.md` ang mga hindi pa nasusubok.
