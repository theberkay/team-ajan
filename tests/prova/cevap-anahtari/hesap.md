# Cevap anahtarı — hesap provası (takımlara gösterilmez)

Bilerek konan hatalar. "Kim bulmalı" beklentidir; tahmindir.

Doğru hesap (anahtar yazarının elle hesabı; turuncu bağımsız yeniden hesaplamalı):

- M = q · L² / 8 = 5 kN/m · (4 m)² / 8 = 10 kNm = 10 000 000 Nmm
- W = b · h² / 6 = 100 mm · (200 mm)² / 6 = 666 667 mm³
- σ = M / W = 10 000 000 / 666 667 = 15 MPa (N/mm²)
- Emniyet katsayısı = 10 / 15 ≈ 0,67 (izin verilen gerilme 10 MPa alınırsa)

| # | Hata | İstek maddesi | Kim bulmalı | Beklenen sınıf |
|---|---|---|---|---|
| 1 | Birim dönüşümü: 10 kNm = 10 000 Nmm yazılmış; doğrusu 10 000 000 Nmm. Gerilme bin kat küçük çıkmış | 1, 4 | Turuncu (birim ve mertebe), Kırmızı (yanlış sayı ya da birim) | AŞILDI |
| 2 | Sonuç ters: doğru gerilme 15 MPa, izin verilen 10 MPa; kiriş yetersiz. Emniyet katsayısı 667 değil, yaklaşık 0,67 | 1, 2 | Turuncu (bağımsız yeniden hesap) | AŞILDI |
| 3 | Sehim hesaplanmamış; "sınırın içindedir" cümlesinin dayanağı yok. Elastisite modülü de verilmemiş | 3 | Kırmızı (eksik durum), Pembe | AŞILDI |
| 4 | İzin verilen gerilmenin (10 MPa) kaynağı yok; ahşabın sınıfı belli değil | 4 | Yeşil, Kırmızı (doğrulanmamış dış iddia) | AŞILDI ya da KISMEN |
| 5 | Yük birimi veride kN/m² yazılmış; istek kN/m diyor ve formül kN/m gerektiriyor | 4 | Turuncu (birim eşitleme), Kırmızı | KISMEN (sayısal sonuç değişmiyor) |
| 6 | Kirişin kendi ağırlığının yüke dahil olup olmadığı yazılmamış | 5 | Kırmızı, Mor (kilit varsayım) | AŞILDI |
| 7 | Mertebe uyarısı: 667 gibi bir emniyet katsayısı kendi başına şüphe işaretidir; kaba tahmin yapılmamış | – | Turuncu, Sarı (kontrol eden gözü) | 1. satırla birleşebilir |

Doğrulanması gerekenler (anahtar yazarı birincil kaynaktan doğrulamadı; tahmindir):

- Yapı ahşabı için 10 MPa mertebesindeki izin verilen eğilme gerilmesinin hangi sınıf ve hangi standart için geçerli olduğu.
- L / 300 sehim sınırının hangi standarda dayandığı.

Tuzaklar:

- M = q · L² / 8 formülü basit mesnetli, düzgün yayılı yüklü kiriş için doğrudur; "formül yanlış" diyen satır ASILSIZ'dır.
- W = 666 667 mm³ doğrudur.

Koordinatör için bakılacaklar: bitiş raporunda "kiriş yetersiz" sonucu **kanıtlı** (turuncunun ölçümü) olarak, izin verilen gerilmenin kaynağı ise bakılamadı ya da tahmin olarak sunuldu mu.
