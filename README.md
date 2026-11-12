# Team Ajan

🌐 [Türkçe](README.md) · [English](README.en.md) · [Tüm diller / All languages](LANGUAGES.md)

## Ne işe yarar

Bir işinizi (kod, mühendislik hesabı, mimari proje, ürün / arayüz tasarımı, ödev, araştırma, yazı, plan) tek gözle değil, birbirini denetleyen ayrı "takım"larla inceletir; isterseniz hata kalmayana kadar düzelttirir. Claude Code için bir eklenti paketidir. İçinde iki tür dosya vardır: **ajan** (bir takımın nasıl çalışacağını anlatan talimat) ve **beceri** (Claude'un takımları nasıl yöneteceğini anlatan talimat).

Alan rehberi (`skills/takim-dongu/sablonlar/alanlar.md`) şu alanlarda takımlara neye bakacaklarını söyler: kod, mühendislik, makine, mekatronik, elektrik, ağır sanayi, mimarlık, tasarım ve dizayn, konu anlatımı ve ödev, sunum, araştırma, belgeleme, tıp, hukuk, siyaset, tarih, müzik. Tıp ve hukukta takımlar teşhis, tedavi ya da hukuki görüş vermez; yalnız metni ve kaynaklarını inceler, sonuç "uzmana danışılmalı" notu taşır.

## Kur

1. Paketi sıkıştırılmış dosyadan (zip) aldıysanız önce bir klasöre çıkarın.
2. `kur.cmd` dosyasına çift tıklayın. Ekranda "Kuruldu" yazısını görün.
3. Claude'u kapatıp yeniden açın.

`kur.cmd` yalnız ajan dosyalarını ve üç beceri klasörünü Claude'un kullanıcı klasörüne (`%USERPROFILE%\.claude`) kopyalar; aynı adlı eskilerinin yerine yazar, bu yüzden o üç klasöre ve o adlarla kendi dosyanızı koymayın. Hedef klasörü ekranda gösterir. Yeni sürüm geldiğinde aynı dosyayı yeniden çalıştırmanız yeterlidir. Başka kurulum yolları en altta.

## Kurduktan sonra ilk cümleniz

İncelenecek dosyanın bulunduğu klasörde Claude'u açın ve şunlardan birini yazın. Cümlede **"takım"** sözü geçmelidir; geçmezse takımlar devreye girmez.

| Ne istiyorsunuz | Yazacağınız cümle |
|---|---|
| Yalnız incelesinler, dosyama dokunmasınlar | `rapor.md dosyasını takımlara incelet, dokunmasınlar` |
| İncelesinler ve düzeltsinler | `hesap.md dosyasını takımlar hata kalmayana kadar düzeltsin` |
| Tek bir soruya odaklansınlar | `takımlar yalnız şuna baksın: bu test neden ara sıra düşüyor?` |
| Tek bir takımın görüşü | `kırmızı takım şu ödeve saldırsın` · `sarı takım gözüyle bak` · `turkuaz takım israfa baksın` |
| Elimdeki notu da dikkate alsınlar | `şunu takımlara not olarak ver: …` |
| Nerede kaldılar | `takımlar ne durumda?` |
| Kaldıkları yerden sürsünler · dursunlar | `takımlar devam etsin` · `takımları durdur` |

Claude önce kısa bir özet verir (ne anladığını, neyi varsaydığını, kaç takımın en çok kaç tur çalışacağını) ve başlar. Çalışırken dosya yazmak ve komut çalıştırmak için izin sorabilir; kaç kez soracağı henüz ölçülmedi. `takim` klasörüne yazma izinlerine evet diyebilirsiniz; bir komut izninden emin değilseniz hayır deyin, o sınama "bakılamadı" diye raporlanır.

## Dosyanıza ne olur

- **"İncelet" derseniz dosyanız değişmez.** Takımlara yalnız kendi `takim` klasörlerine rapor ve defter yazmaları söylenir ("yalnız inceleme"); dosyanızın bir kopyası yine de `takim\yedek\` klasörüne alınır.
- **"Düzeltsin" derseniz** Claude önce dosyanızın kopyasını `takim\yedek\` klasörüne alır ve size "dosyanız değişecek, yedeği şurada" der. Dosyanıza yalnız Mavi takım yazar.
- İsteğiniz belirsizse Claude dosyanıza dokunmaz.
- Word ya da PDF dosyalarının takımlarca okunabildiği doğrulanmadı; Claude bunu başta söyler ve metne çevrilmiş bir kopya üzerinde çalışır.

## Ne zaman biter

"İncelet" dediyseniz tek inceleme turundan sonra biter: Claude bulduklarını anlatır ve düzeltilsin mi diye sorar. "Düzeltsin" dediyseniz bulunan hatalar düzeltilip düzeltildiği yeniden sınandığında ve yarım kalan her şeyin nasıl kapanacağı yazıldığında biter. Bitmeden de durabilir (örneğin en çok tur sayısına, "tur tavanı"na gelindiğinde ya da sizin karar vermeniz gereken bir şey çıktığında); durduğunda Claude nedenini anlatır ve sorar. Durma durumlarının listesi kuralların 8. bölümündedir.

Bir turun ne kadar sürdüğü ölçülmedi; takım sayısı arttıkça süre ve kullanım artar.

## Takımlar

| Takım | Ajan | Ne yapar |
|---|---|---|
| 🔵 Mavi | `mavi-yazar` | Eseri yazar, her itirazı bir sonuca bağlar |
| 🔴 Kırmızı | `kirmizi-saldirgan` | Eserin iddialarını bozmaya çalışır |
| 🩷 Pembe | `pembe-denetci` | Bulguları denetler, sayımı kapatır |
| 🟣 Mor | `mor-sorgucu` | Anlamayı denetler, zor soru sorar, nedeni soruşturur |
| 🟢 Yeşil | `yesil-gercek` | Dış bilgiyi birincil kaynaktan doğrular, ön araştırma yapar |
| 🟠 Turuncu | `turuncu-deneyci` | Kendi eliyle çalıştırır, yeniden hesaplar |
| 🩶 Gri | `gri-sadelestirici` | "Gerçekten gerekli mi" diye sorar, odağı korur |
| ⚫ Siyah | `siyah-hafiza` | Unutulanı ve geri bozulanı yakalar; kapıdır |
| ⚪ Beyaz | `beyaz-kayitci` | Yapılanı doğrular, sahipsiz işi ve izi kaydeder |
| 🟡 Sarı | `sari-kullanici` | Eseri kullanacak kişinin gözüyle dener |
| 🩵 Turkuaz | `turkuaz-verimlilik` | Token, okuma ve çağrı israfını bulur, en aza indirir (boya eklenir) |

"Eser", incelenen dosyanız ya da işinizdir. Claude'un ekranı takımlar için yalnız sekiz renk tanır; bu yüzden Gri camgöbeği görünür, Siyah ve Beyaz'ın rengi yoktur. Takımı adından tanıyın.

## Boylar ve kipler

**Boy**, kaç takımın çalışacağıdır. Söylemezseniz Claude işin büyüklüğüne göre seçer ve bildirir.

| Boy | Takımlar | Tur tavanı | Ne için |
|---|---|---|---|
| Hızlı | Mavi, Kırmızı, Pembe | 2 | Küçük iş, tek dosya, hızlı kontrol |
| Normal | + Yeşil, Gri, Turuncu | 5 | Çoğu iş |
| Tam | + Mor, Sarı, Siyah, Beyaz | 10 | Kritik, uzun ömürlü ya da geri alınması pahalı iş |

Boya tek tek takım eklenebilir ("hızlı boy, sarı takımı da ekle"); ödev ve yazıda Sarı'yı, çalıştırma gereken işte Turuncu'yu Claude kendiliğinden ekler ve söyler. Tur tavanları sınanmamış başlangıç değerleridir; değiştirmek için söylemeniz yeterli.

**Kip**, neye bakılacağıdır: **geniş** (işin tamamı) ya da **odak** (tek bir soru). Tek bir soru sorarsanız Claude odak kipini seçer.

## Sonuç nerede

- Sonucu Claude size sohbette anlatır: en üstte tek cümle, altında kısa özet; neyin **kanıtlı**, neyin *tahmin* olduğu ayrı söylenir; sorusu varsa en altta durur.
- Çalıştığınız klasörde bir `takim` klasörü açılır. Bu, takımların kendi defteridir; okumanız gerekmez. Dosyanızın ilk hâli de bu klasördedir (`takim\yedek\`); düzeltmelerden memnunsanız iş bittikten sonra silebilirsiniz.
- Takımlara not ya da rapor vermek için dosyayı `takim\gelen\` klasörüne bırakabilirsiniz.
- Aynı klasörde yeni bir iş başlatırsanız eski kayıtlar silinmez; `takim\arsiv\` altına taşınır.

Kuralların tam metni: `skills/takim-dongu/sablonlar/kurallar.md`.

## Kaldırma

- `kur.cmd` ile kurduysanız: `kaldir.cmd` dosyasına çift tıklayın. Yalnız paketin ajan dosyalarını ve üç beceri klasörünü siler; projelerinizdeki `takim` klasörlerine dokunmaz. Silemediği bir dosya kalırsa bunu ekranda söyler.
- Eklenti olarak kurduysanız: Claude Code içinde `/plugin` yazıp açılan pencereden eklentiyi kaldırın (bu adım doğrulanmadı).
- Tek projeye kopyaladıysanız: kopyaladığınız dosyaları o projenin `.claude` klasöründen silin.

## Öteki kurulum yolları (ileri düzey)

Yalnız birini kullanın. `kur.cmd` ile birlikte eklenti yolunu da kullanırsanız takımlar listede iki kez görünür.

**Eklenti olarak.** Aşağıda `<takim-ajan klasörünün yolu>` yazan yere bu klasörün bilgisayarınızdaki tam yolunu koyun. Claude Code içinde:

```
/plugin marketplace add <takim-ajan klasörünün yolu>
/plugin install takim-ajan@takim-ajan-yerel
```

İkinci komut kurulumu kendiliğinden bitirmez: bir pencere açar; orada kullanıcı kapsamını seçersiniz. Windows yolunun bu komutta doğru okunduğu doğrulanmadı. Eklenti olarak kurulunca ajan ve beceri adlarının başına `takim-ajan:` gelir.

**Tek bir projeye.** `agents` klasörünün içindekileri projenin `.claude\agents` klasörüne, `skills` klasörünün içindeki üç klasörü projenin `.claude\skills` klasörüne kopyalayın. Üç beceri klasörü birlikte kopyalanmalıdır.

## Paketin içi

| Yer | İçinde ne var |
|---|---|
| `agents/` | Takımların talimat dosyaları |
| `skills/` | Üç beceri: `takim-dongu` (döngü ve şablonlar), `takim-tek` (tek takım), `takim-durum` (durum) |
| `tests/` | Paketin kendi denetimi (`tests/denetle.ps1`), baskı senaryoları ve üç kuru prova |
| `docs/` | `docs/koken.md` (nereden geldi), `docs/arastirma.md` (dayandığı yöntemler) |
| `kur.cmd`, `kaldir.cmd` | Çift tıkla kur / kaldır |

Sürüm 0.3.0. Henüz sınanmamış olanlar `docs/koken.md` sonunda listelidir.
