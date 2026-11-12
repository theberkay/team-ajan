# Köken: bu düzen nereden geldi, ne değişti

Takım Ajan, bir yazılım projesinde 20 tur süren dokuz takımlı bir inceleme döngüsünden çıkarıldı. Bu belge o deneyimden ne öğrenildiğini ve pakette neyin neden değiştirildiğini kaydeder.

**Sayılar hakkında.** Aşağıdaki sayıların kaynağı köken projesinin kendi raporları ve defterleridir; o dosyalar bu pakette yoktur, bu yüzden sayılar **bu pakette doğrulanamaz**. Paket hazırlanırken köken dosyalarıyla karşılaştırılıp tutanlar "(karşılaştırıldı)" diye işaretlendi; işaretsiz sayılar karşılaştırılamadı ve tahmin gibi okunmalıdır.

## İyi işleyenler (korundu)

| Ne | O döngüde görülen |
|---|---|
| Saldırgan + denetçi ikilisi | Denetçi, saldırganın bir turdaki 15 bulgusundan 5'inin zaten kapanmış hedefe yazıldığını yakaladı; saldırganın bakmadığı yüzeyleri ekledi. |
| Kabul ölçütü önceden yazılmış sorular | Sorgucunun sorularının esere işlenme oranı yükseldi (bir turda 35 sorudan (karşılaştırıldı) 26'sı tam, 9'u kısmen). |
| Birincil kaynakla doğrulama | "Uyuluyor" denen bir kuralın 6 yerde çiğnendiği ve planlanan iki haftalık bir ölçümün gereksiz olduğu böyle bulundu. |
| Kendi eliyle çalıştırma | Testlerin bilinen hataları "doğru davranış" diye sabitlediği böyle bulundu. |
| Tek sınıflı sayım | Çürütülen iddia sayısı turlar boyunca izlenebildi: 6 → 1 → 0. |
| Kilitli dersler | Unutulan ve sessizce değişen kararlar adıyla yakalandı. |
| Kanıtsız "yapıldı"yı ayırma | Kayıtçı, "yapıldı" denen işlerin bir kısmının yalnız beyan olduğunu gösterdi. |

## Aksayanlar ve pakette yapılan değişiklik

| Aksayan | O döngüde ne oldu | Pakette |
|---|---|---|
| Hafıza takımının hükmü kimseyi durdurmadı | 10 raporun 10'unda "tur geçersiz" dedi, döngü yine ilerledi | Siyah kapısı: kanıtla bozulan madde varken tur kapanmaz; aynı madde ikinci kez kapatırsa döngü durur ve kullanıcıya bildirilir |
| Bitiş kuralı sonradan bulundu | Kural üç kez değişti; döngü kullanıcının "son tur" kararıyla bitti | Bitiş ölçütü ilk gün `gorev.md` içinde; tur tavanı ve yakınsama freni baştan var; fren döngüyü kendiliğinden bitirmez, durup bildirir |
| Düzeltme yeni hata doğurdu | Son turlarda yeni bulguların çoğu bir önceki düzeltme cümlesinden çıktı | Değişiklik bütçesi, "tek yer" kuralı, tümel sözün karşı örneği, her satırda "köken" alanı |
| Eser şişti | Tasarım belgesi 164 satırdan 3276 satıra çıktı (ilk ve son sürüm; karşılaştırıldı); büyük bölümü tarihçeydi | Tarihçe eserin içinde tutulmaz; boyutu her tur koordinatör ölçer |
| Defter okunmaz oldu | Ders sayısı 204'e çıktı (karşılaştırıldı); tur kayıtları tek hücreye yığıldı | Ders önce aday olur; netleştirme aynı satırın notuna yazılır; tur başına tek sayım satırı |
| Saldırgan son hâli okumadan saldırdı | Bir turda bulguların üçte biri boşa gitti | Her raporda "Okunanlar" bölümü; olmayan rapor geçersiz |
| Takımlar birbirinin cümlesini doğrulamadan taşıdı | Yanlış bir varsayım bir turdan diğerine, oradan esere geçti | Başkasının cümlesi kaynağına bakılmadan aktarılmaz; kırmızı önce bağımsız yazar |
| Bulunan eksiğin sahibi yoktu | Kayıtçının yazdığı eksiklerin çoğu turlarca açık kaldı | Sahipsiz işe sahip önerilir; iki tur açık kalan için koordinatör tur sonunda karar verir |
| Doğrulanmayanlar birikti | Bekleyen doğrulama sayısı 18'den 42'ye çıktı | Bekleyen doğrulama sahipsiz bırakılmaz; engelleyici olan bitişi tutar |
| Kullanıcıya soru yığıldı | Açık karar sayısı 33'e ulaştı (karşılaştırıldı), uzun süre hiçbiri sorulmadı | Yalnız üç tür karar sorulur; gerisinde önerilen uygulanıp bildirilir |
| Her iş aynı ağırlıkta ele alındı | Son beş turda yalnız üç takım rapor yazdı | Üç boy; boya takım eklenebilir |
| Kimse kullanıcının gözüyle bakmadı | Çıktının kullanıcıya nasıl göründüğü iş bittikten sonra anlaşıldı | Onuncu takım Sarı; kullanıcıya anlatım kalıbı koordinatörün kendi işi |
| Takımlar yalnız belgeye baktı | Yazılan koda ve gerçek ölçüme döngü içinde bakan olmadı | Eser her türden olabilir; tasarım ve kod birlikte izlenir |
| Ayrı "cevap" dosyaları | Yalnız cevapta kalan düzeltmeler esere girmedi | Cevap dosyası yok; mavinin eşleme tablosu vardır ve düzeltme eserde olmalıdır |

## Henüz sınanmamış olanlar

Aşağıdakiler bu pakette yenidir; işe yaradıkları varsayımdır. Paketi kullandıkça gerçek sonuçlarla güncelleyin.

- Paketin Claude Code'a gerçekten yüklenmesi ve becerilerin doğru cümlede devreye girmesi (yalnız dosya yapısı denetlendi).
- Bir turun baştan sona gerçek ajanlarla yürütülmesi; `tests/prova/` altındaki üç kuru prova bunun içindir.
- Sarı takım; siyah kapısı; yakınsama freni; tez hattı; odak kipi; gelen kutusu.
- Tur tavanları (`kurallar.md` bölüm 10), soru tavanı (15) ve ders eşiği (40): başlangıç değerleridir, ölçüme dayanmaz.
- `${CLAUDE_SKILL_DIR}/../` ile komşu beceri klasörüne erişim: doğrulanmadı.
- Word ve PDF dosyalarının takımlarca okunabilmesi.
- Bir turda kullanıcıya çıkan izin penceresi sayısı ve bir turun süresi.
- Yazılım dışındaki konularda (ödev, mühendislik hesabı, yazı) takımların verimi.
