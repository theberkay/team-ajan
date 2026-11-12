# Araştırma notları

2. sürüm tasarımına giren iki araştırmanın özeti. Tarih: 2026-11-11.

**Kanıt düzeyi.** Bu notlar yayın özetlerine ve açık kaynak depo dosyalarına dayanır; araştırmayı yapan ajan yalnız iki kaynağı baştan sona okudu, diğer sayılar özet ya da ikincil sayfadan alındı. İnsanlarla yapılmış çalışmalardan yapay zekâ ajanlarına yapılan her aktarım akıl yürütmedir. Bu notlardaki hiçbir yöntemin Takım Ajan'da işe yaradığı ayrıca sınanmamıştır; sınandıkça bu dosya güncellenir.

## 1. Yerleşik yöntemlerden alınanlar

| # | Değişiklik | Dayandığı yöntem | Kanıt gücü |
|---|---|---|---|
| 1 | Her takım ilk hükmünü diğerlerini görmeden yazar; sonradan değişen hüküm "hangi yeni kanıt" alanı olmadan geçersizdir | Bağımsız (nominal) grup, Delphi; çok ajanlı tartışmada çoğunluğa uyma bulguları | Güçlü |
| 2 | Deneyci, yazarın gerekçesini görmeden yalnız iddia ve ham girdiyle yeniden hesaplar; neyi sınayacağını kendi seçer | Bağımsız doğrulama ve geçerleme; yapı mühendisliğinde bağımsız tasarım kontrolü kategorileri | Orta |
| 3 | Sınamadan önce beklenen sonuç, geçme eşiği ve çürütme koşulu yazılıp kilitlenir | Ön kayıt, kayıtlı raporlar | Güçlü (gözlemsel) |
| 4 | "Tuttu" kanıtı bitiş ölçütünün bir maddesine bağlanır; "çalışıyor" ya da "derleniyor" kabul edilmez | Çok ajanlı sistem arıza sınıflaması (hedefe bağlı doğrulama adımı başarıyı 15,6 puan artırdı) | Orta (tek çalışma) |
| 5 | Dört alanlı görev fişi: hedef, çıktı biçimi, kaynak ve araç, sınır ve bitiş koşulu; "belirsizse sor, varsayma" | Çok ajanlı araştırma sistemi dersleri; arızaların %41,77'si belirtim sorunu | Orta |
| 6 | Çürütülen her bulgu için "başka nerede" taraması; sonuç "N yerde arandı, M yerde bulundu" diye sayıyla | Koşulun ve nedenin yaygınlığı taraması (nükleer denetim uygulaması) | Zayıf (uygulama geleneği) |
| 7 | Saldırgan, örtüşmeyen hata sınıflarına bölünerek çalışır | Hata sınıfına dayalı okuma (bir deneyde %35 daha iyi) | Orta (insan deneyi) |
| 8 | Takım sayısı işin riskine göre seçilir | Bağımsız kontrol kategorileri; çaba ölçekleme. Çok ajanlı düzen düz sohbete göre yaklaşık 15 kat, tek ajan ise yaklaşık 4 kat kaynak harcar | Orta |
| 9 | Denetimi denetle: bilerek bozulmuş kopya incelemeden geçirilir; yakalanmazsa "tuttu" askıya alınır | Mutasyon testi | Orta (kodda güçlü) |
| 10 | Sayısal işte her sayının birimi yazılır, formülün iki yanı birim olarak eşitlenir; sonuç bağımsız kaba tahminle aynı mertebede mi bakılır | Boyut analizi | Zayıf (vaka) |
| 11 | Hakem kimin yazdığına bakmadan hükmeder; karşılaştırmalı hükümde sıra değiştirilip iki kez sorulur | Yapay zekâ hakem yanlılıkları (kendi çıktısını kayırma, sıra etkisi) | Güçlü (yanlılığın varlığı) |
| 12 | İlk turdan önce "bu iş teslimden sonra yanlış çıktı; neden?" sorusu ve kilit varsayımlar listesi | Ön-otopsi (pre-mortem); kilit varsayım denetimi | Zayıf |
| 13 | İz tablosu: istek → tasarım → kod ya da eser → sınama | İzlenebilirlik (bir deneyde görevler %24 hızlı, %50 daha çok doğru çözüm) | Orta |
| 14 | Anlaşmazlıkta tartışma uzatılmaz: iki taraf tek bir ortak sınamada anlaşır, sonucu görmeden beklentisini yazar | Karşıt iş birliği; atanmış taraflı tartışma + ayrı hakem (hakem isabeti bir çalışmada %48'den %76'ya) | Orta |

### Eklenmeyenler

| Ne | Neden |
|---|---|
| Takımların serbestçe tartışıp uzlaşması | Eşit bütçede basit oylamanın altında kalıyor; doğru cevabı yanlışa çevirebiliyor |
| Rakip hipotez matrisi | Rastgele atamalı deneylerde yargıyı iyileştirmedi |
| Tek zincirli "5 neden" | Etkinlik kanıtı yok, tek nedene indirger |
| Rol gereği her şeye itiraz eden ek takım | Oynanan muhalefet sahici görüş ayrılığından zayıf |
| Uzun genel kontrol listeleri, tam arıza puan tabloları | Yük ağır; genel liste işe yaramadı, kutu işaretleme tek başına sonuç vermedi |

## 2. İki açık kaynak paketten alınanlar

İncelenenler: `obra/superpowers` ve `affaan-m/ECC` (ikisi de MIT lisanslı). Metin alınmadı; yalnız yapı fikirleri uyarlandı.

| # | Mekanizma | Takım Ajan'da yeri |
|---|---|---|
| 1 | Taze kanıt kapısı: komutu belirle → taze çalıştır → çıktıyı oku → doğrula → ancak sonra iddia et | `kurallar.md` ve her takımın rapor biçimi |
| 2 | Dosyaya yazılan defter; atılan her bulgu için yazılı karar ("karar, neden, yanlışsa bedeli"); sessiz atma yok | Mavi'nin eşleme tablosu, `sayim.md` |
| 3 | İnceleyenin girdisi dosyadır; yazarın raporu "doğrulanmamış iddia" sayılır | Görev fişi |
| 4 | Tur sınırlı düzeltme döngüsü; sınırda yazılı hakemlik | Tur tavanı, siyah kapısı (iki deneme) |
| 5 | Durum sözleşmesi: bitti · bitti, kaygım var · takıldım · bilgi eksik; kısa son mesaj, tam rapor dosyada | Her ajanın dönüş biçimi |
| 6 | Yüksek ciddiyette bulgu için kanıt eşiği; "sıfır bulgu geçerli sonuçtur" | Kırmızı, Pembe |
| 7 | Açıklama (description) yalnız tetikleyiciyi yazar, iş akışını özetlemez | Üç becerinin açıklamaları |
| 8 | Bahane tablosu ve "dur" işaretleri: atlamak için uydurulan gerekçe ve cevabı | Ajan dosyaları |
| 9 | Baskı senaryosuyla sınama: beceri yokken ve varken aynı zor durumda davranış karşılaştırılır | `tests/` |
| 10 | Yapısal denetimler: dosya boyutu sınırı (SKILL.md 20.000 bayttan küçük), ön bilgi doğrulama, kişisel yol taraması | `tests/` |
| 11 | Araç kısıtı her ajan dosyasında açık | Ajan dosyalarının `tools` satırı; inceleyen takım yalnız kendi raporuna ve defterine yazar (sınır talimatladır) |

### Alınmayanlar

| Ne | Neden |
|---|---|
| Çok sayıda beceri | Beceri listesi taşınca beceriler görünmez oluyor |
| Otomatik kancalar (hook) | Windows'ta sık bozulduğu raporlanmış; paket kancasız çalışır |
| Her düzenlemeyi durduran kapılar | Her dosyada ek tur; kullanıcı şikâyeti |
| Küçük işte tam tören | Kullanıcı şikâyeti; iş boyuna göre ölçeklenir |
| Uzun raporların ana bağlama dönmesi | Bağlam şişmesi; rapor dosyada kalır, kısa özet döner |
