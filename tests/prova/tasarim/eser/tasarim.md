# Ana ekran tasarımı (tasarımcının çözümü)

## Düzen (yukarıdan aşağı)

1. Başlık: "Bugünkü ilaçlarım", 24 sp kalın, renk #1B5E20 (marka). Sağ üstte Ayarlar simgesi (dişli), 36 × 36 dp.
2. Sıradaki ilaç kartı (tam genişlik, 96 dp yükseklik): "Hap zamanı: Tansiyon, 1 tablet, 09:00". Kartın altında "Ertele" düğmesi, 56 × 48 dp. Karta dokununca ilaç ayrıntı ekranı açılır.
3. "Bugünkü dozlar" listesi: her satırda ilaç adı ve saati; satırın solunda 12 dp'lik renkli nokta: yeşil = alındı, kırmızı = kaçırıldı, gri = bekliyor.
4. Alt bilgi satırı: "Son güncelleme 08:55", renk #9E9E9E.

## Yazı

- Başlık 24 sp, kalın.
- Kart metni ve liste satırları 14 sp (ekrana daha çok satır sığsın diye).
- Alt bilgi 12 sp.

## Renkler

- Birincil düğme ve vurgular: marka yeşili **#4CAF50**, üzerinde beyaz (#FFFFFF) yazı.
- Başlık #1B5E20, zemin #FFFFFF.
- İkincil metin #9E9E9E, zemin #FFFFFF.
- Bütün metinler WCAG AA kontrastını geçer.

## Akış

Ana ekran → karta dokun → ilaç ayrıntı ekranı (ilacın fotoğrafı, dozu, notlar). Yanlışlıkla çıkmayı önlemek için ayrıntı ekranında geri düğmesi yoktur ve sistem geri tuşu devre dışıdır; ekran 30 saniye sonra kendiliğinden kapanmaz.

## Metinler

- Kart: "Hap zamanı"
- Liste başlığı: "Bugünkü dozlar"
- Bildirim: "İlacınızı almayı unutmayın"
