# Kuru provalar

Beş küçük örnek iş. Her birinde **bilerek konmuş hatalar** vardır. Amaç: paketteki metinlere bakarak bir tur baştan sona yürütülebiliyor mu ve takımlar bu hataları buluyor mu?

| Prova | Tür | Eser | Önerilen boy | Cevap anahtarı |
|---|---|---|---|---|
| Kod | yazılım (tasarım + kod) | `tests/prova/kod/eser/` (3 dosya) | normal | `tests/prova/cevap-anahtari/kod.md` |
| Ödev | ödev | `tests/prova/odev/eser/` (2 dosya) | hızlı + sarı (koordinatör kendiliğinden ekler) | `tests/prova/cevap-anahtari/odev.md` |
| Hesap | mühendislik hesabı | `tests/prova/hesap/eser/` (2 dosya) | normal | `tests/prova/cevap-anahtari/hesap.md` |
| Mimari | mimari | `tests/prova/mimari/eser/` (2 dosya) | normal | `tests/prova/cevap-anahtari/mimari.md` |
| Tasarım | tasarım (ürün / arayüz) | `tests/prova/tasarim/eser/` (2 dosya) | hızlı + sarı (koordinatör kendiliğinden ekler) | `tests/prova/cevap-anahtari/tasarim.md` |

## Nasıl yapılır

1. İlgili `eser` klasörünü **geçici bir klasöre kopyalayın** ve Claude'u o klasörde açın. Paketin içindeki aslı üzerinde çalışmayın; cevap anahtarı takımların erişebileceği yerde durmamalıdır.
2. Şunu yazın: `bu klasördeki dosyaları takımlara incelet, dokunmasınlar` (yalnız inceleme, tek tur; boyu tablodaki gibi söyleyin, örneğin "normal boy"). Provalardan en az birini ayrıca `takımlar hata kalmayana kadar düzeltsin` ile en az üç tur yürütün: yedek, eşleme, "kapandı" ve bitiş yolu yalnız böyle denenir.
3. Tur bitince pembenin resmi sayımını cevap anahtarıyla karşılaştırın: kaç hata bulundu, kaçı kaçtı, anahtarda olmayan kaç bulgu yazıldı ve bunlar gerçek mi?
4. Koordinatörün takıldığı her yeri not edin: hangi adımda, hangi metin yetmedi.

**Cevap anahtarı takımlara gösterilmez.** Provayı paketin kendi klasöründe yapmak zorundaysanız `gorev.md` "Açılmayacaklar" alanına `tests/prova/cevap-anahtari/` yazın.

Anahtarlar provayı hazırlayanın bildiği hataları sayar; eksiksiz olduklarını iddia etmez. Takımların anahtarda olmayan gerçek bir hata bulması provanın başarısızlığı değildir; anahtara eklenir.

Bu provalar henüz gerçek ajanlarla koşulmadı. Hiçbiri kapı düzeltmesini, itirazı, tez hattını, odak kipini, sürdürmeyi ve arşivlemeyi yürütmez; mor, siyah ve beyaz önerilen boylarda yoktur.
