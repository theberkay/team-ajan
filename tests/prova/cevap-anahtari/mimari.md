# Cevap anahtarı — mimari provası (takımlara gösterilmez)

Bilerek konan hatalar. "Kim bulmalı" beklentidir; tahmindir.

Doğru değerler (anahtar yazarının elle hesabı; turuncu bağımsız yeniden hesaplamalı):

- Alan toplamı: zemin 10 + 30 + 12 + 14 + 6 + 3 = 75; üst 16 + 12 + 12 + 7 + 8 = 55; toplam **130 m²** (proje 142 yazıyor).
- TAKS = 161 / 500 = **0,322** > 0,30. Sınıra uyan en büyük taban alanı 150 m².
- KAKS = 322 / 500 = **0,644** > 0,60. Sınır 300 m²; 22 m² aşım.
- Merdiven: r = 20 cm, b = 22 cm. 2r + b = 62 aralıkta, ama rıht konut için yüksek, basamak dar (genel kabul: r ≈ 16–18 cm, b ≥ 26 cm; tahmin). Örnek uygun çözüm: 17 rıht × 17,6 cm, b = 27 cm → 2r + b ≈ 62,3.
- Giriş: 45 cm kot farkı; %8 eğimli rampa için yaklaşık 5,6 m yatay uzunluk (sahanlıklar hariç; eğim değeri tahmin).

| # | Hata | Nerede | Kim bulmalı | Beklenen sınıf |
|---|---|---|---|---|
| 1 | Alan toplamı yanlış: satırlar 130 m² ediyor, tablo 142 yazıyor | proje "Alan tablosu" | Turuncu (yeniden toplam), Pembe | AŞILDI |
| 2 | TAKS 0,322 ve KAKS 0,644; ikisi de sınırı aşıyor, proje "sağlanır" diyor (yuvarlama ile gizlenmiş) | proje "Yerleşim ve imar hesabı"; istek imar koşulları | Turuncu (oran hesabı), Kırmızı (yönetmelikle çelişki) | AŞILDI |
| 3 | Merdiven rıhtı 20 cm yüksek, basamak 22 cm dar; 2r + b uyumu tek başına konfor kanıtı değil | proje "Merdiven"; istek 8 | Kırmızı, Yeşil (standart değeri), Turuncu | AŞILDI ya da KISMEN |
| 4 | Giriş 3 basamaklı, rampa yok; "engelli erişimine uygun" iddiası dayanaksız | proje "Erişilebilirlik"; istek 5 | Kırmızı (erişilebilirlik), Sarı (kullanıcı gözü) | AŞILDI |
| 5 | Erişilebilir oda ve banyo kapıları 80 cm; istek en az 90 cm | proje "Erişilebilirlik"; istek 5 | Kırmızı, Pembe | AŞILDI |
| 6 | Çocuk odası 2 kuzey cephede; "bütün gün bol doğrudan gün ışığı" iddiası yanlış (kuzey hemisferde kuzey cephe doğrudan güneş almaz), istek 6 karşılanmıyor | proje "Kat planları"; istek 6 | Kırmızı, Yeşil (güneş geometrisi) | AŞILDI |
| 7 | Çalışma odası (istek 4) yok; proje "bütün mekânlar karşılandı" diyor | proje alan tablosu ve "Kat planları" | Pembe (istek-madde eşleşmesi), Sarı | AŞILDI |
| 8 | Yangın kaçışı tek: ana kapı üst kattan ayrı bir yol değil, ikisi aynı merdivenden geçer | proje "Yangın kaçışı"; istek 7 | Kırmızı (tek nokta), Mor | AŞILDI |

Doğrulanması gerekenler (anahtar yazarı birincil kaynaktan doğrulamadı; tahmindir; mevzuat ülkeye ve yıla göre değişir):

- Konut merdiveni için rıht üst sınırı ve basamak alt sınırı (ör. Türkiye'de Planlı Alanlar İmar Yönetmeliği; değer burada doğrulanmadı).
- Erişilebilir kapı net geçiş genişliği (yaygın değer 90 cm; TS 9111 ya da yerel standart).
- Rampa eğimi üst sınırı (%6–%8 aralığı yaygın; uzunluğa göre değişir).
- Müstakil konutta iki kaçış yolunun yasal zorunluluk olup olmadığı. Bu provada zorunluluk **işverenin isteğinden** gelir; hata, iddianın gerçekle çelişmesidir.

Tuzaklar (doğru olan ama yanlış sanılabilecek):

- Çekme mesafeleri uyuyor: 3 + 14 + 3 = 20 m cephe; 5 + 11,5 + 8,5 = 25 m derinlik. "Bina parsele sığmıyor" diyen satır ASILSIZ.
- 2r + b = 62 aritmetiği doğrudur; hata aritmetikte değil, rıht ve basamağın tek tek değerlerindedir.
- Otopark (1 araç) ve kat yüksekliği (3,00 m) isteğe uyar.
- Kuzey cephede küçük pencere ve güney saçağı yönlenme açısından doğru kararlardır.

Koordinatör için bakılacaklar: bitiş raporunda TAKS/KAKS aşımı ve alan toplamı **kanıtlı** (turuncunun hesabı) olarak, mevzuat değerleri ise "doğrulanmadı / tahmin" olarak sunuldu mu.
