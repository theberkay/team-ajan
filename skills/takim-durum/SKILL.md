---
name: takim-durum
description: Kullanıcı Takım Ajan'ın takımlarının ya da takım döngüsünün durumunu sorduğunda kullan. Örnekler - "takımlar ne durumda", "takımlar nerede kaldı", "takım döngüsü kaçıncı turda", "takımlar ne buldu", "takımlardan ne kaldı". Yalnız okur; takım çalıştırmaz, dosya değiştirmez. İstekte "takım" sözü yoksa ("ne kaldı?") ya da kullanıcı kendi iş ekibinden söz ediyorsa ("bizim takım", "ekibimizin raporu") kullanma. Döngüyü sürdürme, durdurma ya da başlatma isteği takim-dongu becerisinindir.
---

# Takım durumu

Yalnız okursun. Hiçbir dosyayı değiştirmez, hiçbir takımı çalıştırmazsın. Kullanıcıya verdiğin her mesaj anlatım kalıbına uyar; yeri 5. adımda yazılıdır, önce onu oku.

## Adımlar

1. Oturumun çalışma klasöründe `takim/gorev.md` yoksa ya da bu paketin değilse (başlığı `# Görev`, tablosunda "Eser"): "Bu klasörde kurulu bir takım döngüsü yok" de, başlatmak için ne yazabileceğini tek cümleyle söyle ve dur.
2. `takim/durum.md` varsa önce onu oku: durumun tek sayfalık kaynağı odur. Sonra `takim/gorev.md`, `takim/sayim.md` ve `takim/kararlar.md` dosyalarını oku.
3. En son tur klasörüne bak (`takim/turlar/`): `durum.md` içindeki turdan daha yeni rapor varsa tur yarımdır. Hangi takımların raporunun yazıldığını ve her raporun "Durum" satırını (siyahta ayrıca "Kapı" satırını) oku.
4. `durum.md` yoksa ya da eskiyse özeti `sayim.md` ve raporlardan kur; bunu kullanıcıya söyle.
5. "Durum özeti"ni anlatım kalıbına göre ver: `takim/kurallar.md` bölüm 9. O dosya yoksa `${CLAUDE_SKILL_DIR}/../takim-dongu/sablonlar/kurallar.md` dosyasının 9. bölümü.

   | Bölüm | İçerik |
   |---|---|
   | Nerede | Konu, kaç takım, kaçıncı tur, en çok kaç tur; sürüyor mu, durdu mu, bitti mi; yarım turda sıradaki adım |
   | Açık kalanlar | En çok 5 madde, gündelik dille; kimlik parantez içinde; kanıt durumuyla |
   | Bitişe ne kaldı | Bitiş şartlarının her biri: sağlandı / sağlanmadı |
   | Bekleyen sorular | Kullanıcıdan cevap bekleyen her açık karar, önerisiyle (en altta) |

6. Kayıtlarda yazanı aktar. Yazmayan bir şeyi çıkarsıyorsan "tahmin" diye belirt.
