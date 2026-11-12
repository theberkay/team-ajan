# Not ortalaması modülü — tasarım

Bir dersin notlarından ortalama hesaplar ve öğrencinin geçip geçmediğini söyler.

## Davranış

1. `ortalama(sayilar)`: sayıların aritmetik ortalamasını döndürür. Liste boşsa 0 döndürür, hata vermez.
2. `agirlikli_ortalama(notlar, agirliklar)`: ağırlıklı ortalamayı döndürür.
   - Ağırlıkların toplamı 1 değilse `ValueError` verir.
   - İki listenin uzunluğu farklıysa `ValueError` verir.
   - Sonuç iki ondalık basamağa yuvarlanır.
3. `gecti_mi(ortalama_notu, esik=50)`: not eşiğe eşit ya da eşikten büyükse `True` döndürür. 50 alan öğrenci geçer.

## Sınama

Bütün davranışlar `test_ortalama.py` içinde sınanmıştır ve testlerin hepsi geçer.
