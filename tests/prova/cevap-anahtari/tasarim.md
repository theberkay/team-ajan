# Cevap anahtarı — tasarım provası (takımlara gösterilmez)

Bilerek konan hatalar. "Kim bulmalı" beklentidir; tahmindir.

Doğru değerler (WCAG 2.x göreli parlaklık formülüyle; turuncu bağımsız yeniden hesaplamalı):

- Oran = (L1 + 0,05) / (L2 + 0,05); beyazın L'si 1.
- #9E9E9E üzerinde beyaz zemin: L ≈ 0,342 → **2,68 : 1** (normal metin için 4,5 gerekir).
- #4CAF50 üzerinde beyaz yazı: L ≈ 0,328 → **2,78 : 1** (düğme yazısı normal boyda; 4,5 gerekir).
- #1B5E20 beyaz üzerinde: L ≈ 0,083 → **7,87 : 1** (AA ve AAA geçer).

| # | Hata | Nerede | Kim bulmalı | Beklenen sınıf |
|---|---|---|---|---|
| 1 | Kart ve liste yazısı 14 sp, alt bilgi 12 sp; brief en az 18 sp istiyor | tasarim "Yazı"; brief 3 | Pembe (brief-madde eşleşmesi), Sarı (yaşlı kullanıcı gözü) | AŞILDI |
| 2 | İkincil metin #9E9E9E / #FFFFFF = 2,68 : 1; AA altında. "Bütün metinler AA'yı geçer" iddiası yanlış | tasarim "Renkler", "Düzen 4"; brief 4 | Turuncu (oran hesabı), Kırmızı | AŞILDI |
| 3 | Marka rengi #4CAF50 yazılmış, brief #1B5E20 diyor; üstelik beyaz yazıyla 2,78 : 1, AA altında | tasarim "Renkler"; brief 8 ve 4 | Pembe, Turuncu, Siyah (karar kayması) | AŞILDI |
| 4 | Ayarlar simgesi 36 × 36 dp; en az 48 × 48 gerekir | tasarim "Düzen 1"; brief 5 | Kırmızı, Turuncu (ölçü karşılaştırması) | AŞILDI |
| 5 | Doz durumu yalnız renkli noktayla (yeşil/kırmızı/gri) veriliyor; renk körü kullanıcı ayırt edemez | tasarim "Düzen 3"; brief 6 | Kırmızı (erişilebilirlik), Sarı | AŞILDI |
| 6 | "İlacı aldım" onayı yok; kartta yalnız "Ertele" var | tasarim "Düzen 2"; brief 7 | Pembe, Sarı, Mor | AŞILDI |
| 7 | Ayrıntı ekranında geri düğmesi yok ve sistem geri tuşu kapalı; kullanıcı ekranda kalır | tasarim "Akış"; brief 9 | Kırmızı (çıkışsız durum), Sarı | AŞILDI |
| 8 | Terim birliği bozuk: "Hap zamanı", "dozlar", "ilaç" karışık | tasarim "Metinler", "Düzen 2-3"; brief 10 | Sarı, Gri, Pembe | AŞILDI ya da KISMEN |

Doğrulanması gerekenler (anahtar yazarı birincil kaynaktan bu turda açmadı):

- WCAG 2.2 başarı ölçütleri 1.4.3 (kontrast 4,5 / 3) ve 1.4.1 (yalnız renk) metinleri; büyük metin eşiği (18 pt ya da 14 pt kalın) ve bunun sp karşılığı.
- 48 × 48 dp değeri Android (Material) önerisidir; WCAG 2.2 2.5.8 (AA) en az 24 × 24 CSS px ister, 44 × 44 2.5.5 (AAA) değeridir. Bu provada sınır brief'ten gelir.
- Yaşlı kullanıcılar için 18 sp gövde yazısı yerleşik bir standart değil, brief koşuludur.

Tuzaklar (doğru olan ama yanlış sanılabilecek):

- Başlık #1B5E20 / beyaz = 7,87 : 1; üstelik 24 sp kalın büyük metindir. "Başlık kontrastı yetersiz" diyen satır ASILSIZ.
- "Ertele" düğmesi 56 × 48 dp; sınırı karşılar.
- Kart yüksekliği 96 dp ve tam genişlik; dokunma hedefi olarak yeterli.
- WCAG AA'nın 48 dp istediğini söyleyen satır kaynağı yanlış okur (bkz. doğrulanması gerekenler); hata yine brief 5'ten AŞILDI'dır.

Koordinatör için bakılacaklar: kontrast oranları **kanıtlı** (turuncunun hesabı) mı; WCAG madde numaraları yeşilin doğrulamasıyla mı, yoksa tahmin olarak mı sunuldu.
