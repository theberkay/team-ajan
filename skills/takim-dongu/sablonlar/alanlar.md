# Alan rehberi

Takımların rol dosyalarındaki "Konuya göre" tabloları genel türleri verir; bu rehber alanın ayrıntısını tek yerde tutar.

**Nasıl kullanılır**

- Koordinatör görev başında işin alanını aşağıdaki başlıklardan seçer (birden çoksa en çok iki) ve `gorev.md` "Alan" satırına yazar. Uyan başlık yoksa "diğer" yazar ve en yakın bölümü belirtir.
- Her takımın fişine bir satır ekler: `Alan rehberi: <tam yol>/alanlar.md bölüm <alan>`.
- Takım yalnız o bölümü okur; rehberin tamamını okumaz (Turkuaz ilkesi: gereksiz okuma yok).
- Bölümdeki kaynak adları genel adlardır. Belirli madde, standart numarası ya da tarih gerekiyorsa Yeşil birincil kaynaktan doğrular; doğrulanmayan `[tahmin]` kalır.
- "Takımlar ne yapar" satırları rol dosyasını değiştirmez; yalnız o alanda neye öncelik verileceğini söyler.

---

## Kod (programlama)

- **Tipik eser:** kaynak kod, testler, tasarım notu, yapılandırma, betik.
- **Sık hatalar:** sınır değerleri (boş girdi, sıfır, taşma); hata yolunun sessizce yutulması; testin iddiayı gerçekten sınamaması; yarış durumu ve paylaşılan durum; girdi doğrulamasının eksikliği (enjeksiyon, yol geçişi); tasarım notuyla kodun ayrışması; bağımlılık sürümüne dayalı varsayım.
- **Doğrulama kaynakları:** dilin ve kütüphanenin resmi belgeleri, sürüm notları; güvenlikte yaygın zayıflık katalogları (doğrulanmalı).
- **Takımlar:** Kırmızı karşı örnek girdi ve kötüye kullanım arar · Turuncu testleri ve yeni karşı örnekleri çalıştırır · Yeşil API ve sürüm davranışını resmi belgeden doğrular · Beyaz istek → tasarım → kod → test izini sürer · Gri gereksiz soyutlamayı işaretler.
- **Önerilen boy:** küçük düzeltme hızlı + Turuncu; özellik normal; güvenlik ya da veri kaybı riski tam.
- **Dikkat:** Turuncu yalnız izin verilen komutları ve geçici klasörde koşar; canlı sisteme dokunulmaz.

## Mühendislik (hesap ve tasarım)

- **Tipik eser:** hesap raporu, boyutlandırma, tolerans analizi, deney planı, teknik şartname.
- **Sık hatalar:** birim karışıklığı ve dönüşüm hatası; yanlış ya da gizli varsayım (sınır koşulu, yük durumu); formülün geçerlilik aralığı dışında kullanılması; anlamlı basamak ve yuvarlama birikimi; en kötü durum yerine ortalama durumla hesap; tablodan yanlış satır ya da eski baskı değeri; emniyet katsayısının unutulması ya da iki kez uygulanması.
- **Doğrulama kaynakları:** ilgili ulusal ve uluslararası standart aileleri, ders kitapları ve el kitapları, üretici veri sayfaları (numara ve baskı doğrulanmalı).
- **Takımlar:** Kırmızı en kötü yük ve sınır durumunu arar · Turuncu hesabı bağımsız yeniden yapar (birim takibiyle) · Yeşil formül, katsayı ve tablo değerini kaynağından doğrular · Mor varsayımların gerekçesini sorar · Beyaz sonuç → varsayım → adım → kontrol izini sürer.
- **Önerilen boy:** normal; can ya da mal güvenliği varsa tam.
- **Dikkat:** takımlar hesabı denetler, imza ya da onay yerine geçmez; kalıcı karar yetkili mühendisindir.

## Makine, Mekatronik, Elektrik, Ağır sanayi

- **Tipik eser:** makine elemanı hesabı, mukavemet ve yorulma analizi, kontrol ve sensör tasarımı, devre ve pano şeması, kablo kesiti ve koruma seçimi, tesis yerleşimi, bakım ve iş güvenliği prosedürü.
- **Sık hatalar:** yorulma, darbe ve titreşimin göz ardı edilmesi; ısıl genleşme ve sıcaklık düşümü; gerilim düşümü, kısa devre akımı ve seçicilik hatası; topraklama ve kaçak akım korumasının eksikliği; mekatronikte örnekleme, gecikme ve kararlılık sorunu, arıza anında güvenli duruma geçmeme; kilitleme-etiketleme ve acil durdurma adımlarının eksikliği; malzeme sertifikası ve kaynak kalitesi varsayımı.
- **Doğrulama kaynakları:** makine emniyeti, elektrik tesisatı, basınçlı kap, kaldırma ekipmanı standart aileleri; iş sağlığı ve güvenliği mevzuatı; üretici verileri (madde numaraları doğrulanmalı).
- **Takımlar:** Kırmızı en kötü arıza senaryosunu ve tek hata noktasını arar · Turuncu emniyet katsayılarını, akım ve gerilim değerlerini yeniden hesaplar, varsa benzetimi çalıştırır · Yeşil standart ve mevzuat atıflarını doğrular · Sarı sahadaki operatör ve bakımcının gözüyle prosedürü dener · Siyah daha önce düzeltilen emniyet hatalarının geri gelmediğine bakar.
- **Önerilen boy:** tam (can güvenliği).
- **Dikkat:** iş güvenliği ve can güvenliği kritiktir. Takımlar inceleme yapar; uygulama, devreye alma ve onay yetkili mühendis ve iş güvenliği uzmanındadır. Sonuç "yetkili uzmana onaylatılmalı" notu taşır.

## Mimarlık

- **Tipik eser:** mimari proje, program, vaziyet planı, kesit ve görünüş, yapı ve yangın hesabı özeti, şartname.
- **Sık hatalar:** program maddesinin projede karşılanmaması; kaçış mesafesi, merdiven ve çıkış genişliği hatası; erişilebilirlik (rampa, asansör, ıslak hacim) eksikliği; imar koşulu, çekme mesafesi ve yükseklik ihlali; gün ışığı, havalandırma ve yalıtım varsayımı; alan hesabının plana uymaması; taşıyıcı sistemle planın çelişmesi.
- **Doğrulama kaynakları:** imar ve yangın yönetmelikleri, erişilebilirlik standart aileleri, enerji performansı mevzuatı (yerel sürüm ve yürürlük doğrulanmalı).
- **Takımlar:** Kırmızı yangın ve kaçış senaryosuna saldırır · Turuncu alan, kaçış mesafesi ve kat sayılarını yeniden hesaplar · Yeşil yönetmelik koşulunu kaynağından doğrular · Sarı kullanıcı, engelli ve bakım personeli gözüyle dolaşır · Beyaz program maddesi → mekân izini sürer.
- **Önerilen boy:** normal; kamu yapısı ya da ruhsat aşamasında tam.
- **Dikkat:** yerel mevzuat yere ve tarihe göre değişir; ruhsat ve onay yetkili mimar ve idaredir.

## Tasarım ve Dizayn

- **Tipik eser:** "Tasarım" burada ürün, arayüz ve grafik tasarımıdır (ekran, akış, logo, afiş, kimlik); "Dizayn" endüstriyel ürün, moda ve iç mekân tasarımıdır (biçim, malzeme, ergonomi, mekân).
- **Sık hatalar:** brief maddesinin karşılanmaması; renk kontrastı, yazı boyu ve erişilebilirlik; tutarsız bileşen, boşluk ve hiyerarşi; boş, hata ve yükleme durumlarının tasarlanmaması; endüstriyel ve iç mekânda ölçü, ergonomi, üretilebilirlik ve malzeme uyumu; modada kalıp, beden ve kumaş davranışı; telif ve marka kullanımı.
- **Doğrulama kaynakları:** erişilebilirlik yönergeleri, ergonomi ve antropometri verileri, malzeme veri sayfaları, marka kılavuzu (sürüm doğrulanmalı).
- **Takımlar:** Sarı hedef kullanıcının gözüyle dener (ilk bakış, görev tamamlama) · Kırmızı uç durumları ve okunmazlığı arar · Turuncu kontrastı ve ölçüleri ölçer · Gri gereksiz öğeyi işaretler · Beyaz brief → öğe → ölçüm izini sürer.
- **Önerilen boy:** hızlı + Sarı; yayın ya da üretim öncesi normal.
- **Dikkat:** beğeni tartışması bulgu değildir; bulgu brief'e, ölçüme ya da kullanıcı denemesine dayanır.

## Konu anlatımı ve Ödev

- **Tipik eser:** ödev metni, çözümlü soru, ders notu, konu anlatımı, rapor; yönerge ve değerlendirme ölçütü.
- **Sık hatalar:** yönerge maddesinin atlanması; soruyu değil yakın bir soruyu cevaplama; adım atlanan çözüm ve gerekçesiz sonuç; kavram yanılgısı ve aşırı basitleştirme; hedef seviyeye uymayan dil; kaynaksız alıntı ve intihal riski; sözcük ya da sayfa sınırının aşılması.
- **Doğrulama kaynakları:** ders kitabı, müfredat ve yönerge, hakemli literatür, kurum yazım kılavuzu.
- **Takımlar:** Sarı öğrencinin ve değerlendiricinin gözüyle okur · Kırmızı kavram hatası ve karşı örnek arar · Turuncu çözümleri yeniden çözer · Yeşil tanım ve alıntıları doğrular · Beyaz yönerge maddesi → karşılandığı yer izini sürer.
- **Önerilen boy:** hızlı + Sarı; not etkisi yüksekse normal.
- **Dikkat:** takımlar öğrencinin yerine yazmaz, akademik dürüstlük kuralına uyulur; kullanıcı istemedikçe yalnız inceleme önerilir.

## Sunum

- **Tipik eser:** slayt destesi, konuşmacı notu, poster.
- **Sık hatalar:** slayt başına fazla metin; ana mesajın belirsizliği; grafikte eksen, birim ve kaynak eksikliği; slaytla anlatım ya da süre uyumsuzluğu; okunmayan yazı boyu ve renk; tutarsız sayılar; sonuç ya da çağrının olmaması.
- **Doğrulama kaynakları:** verinin asıl kaynağı, kurum şablonu, erişilebilirlik yönergeleri.
- **Takımlar:** Sarı dinleyicinin gözüyle (arka sıradan, ilk 30 saniye) bakar · Kırmızı yanıltıcı grafik ve desteksiz iddia arar · Turuncu sayıları kaynağından yeniden hesaplar · Gri fazla slayt ve metni işaretler.
- **Önerilen boy:** hızlı + Sarı.
- **Dikkat:** biçim önerisi kullanıcının kurum şablonunu ezmez.

## Araştırma

- **Tipik eser:** literatür taraması, araştırma raporu, yöntem bölümü, veri analizi.
- **Sık hatalar:** kaynağın iddiayı desteklememesi ya da yanlış aktarımı; korelasyonun nedensellik sayılması; örneklem ve seçim yanlılığı; tek kaynağa dayanma; güncel olmayan veri; istatistik testinin yanlış seçimi ve çoklu karşılaştırma; sınırlılıkların yazılmaması.
- **Doğrulama kaynakları:** hakemli dergiler, sistematik derlemeler, resmi istatistik kurumları, birincil veri setleri.
- **Takımlar:** Yeşil her iddiayı birincil kaynağa bağlar · Kırmızı alternatif açıklama ve karşı kanıt arar · Turuncu analizi veriyle yeniden yapar · Mor yöntem seçiminin gerekçesini sorar · Beyaz iddia → kaynak → doğrulandığı satır izini sürer.
- **Önerilen boy:** normal; yayın öncesi tam.
- **Dikkat:** erişilemeyen kaynak "doğrulanamadı" yazılır, tahminle doldurulmaz.

## Belgeleme

- **Tipik eser:** kullanım kılavuzu, teknik belge, API belgesi, süreç ve prosedür belgesi, sürüm notu.
- **Sık hatalar:** belgenin ürünün şimdiki hâline uymaması; çalışmayan örnek ve komut; ön koşulun ve sürümün yazılmaması; adım sırasının hatalı olması; terim tutarsızlığı; hata ve geri alma yolunun anlatılmaması; hedef okura uymayan ayrıntı düzeyi.
- **Doğrulama kaynakları:** ürünün kendisi ve kaynak kodu, resmi sürüm notları, kurum yazım kılavuzu.
- **Takımlar:** Turuncu örnekleri ve adımları gerçekten çalıştırır · Sarı yeni kullanıcının gözüyle adım adım dener · Yeşil sürüm ve davranış iddialarını doğrular · Siyah eski belgedeki düzeltilmiş hataların geri gelmediğine bakar.
- **Önerilen boy:** hızlı + Sarı + Turuncu; büyük belge normal.
- **Dikkat:** Turuncu yalnız izin verilen ortamda çalıştırır.

## Tıp

- **Tipik eser:** tıbbi bilgi metni, hasta bilgilendirme, vaka sunumu, literatür özeti, ders notu.
- **Sık hatalar:** güncel olmayan kılavuza dayanma; kanıt düzeyinin belirtilmemesi (vaka raporunun kılavuz gibi sunulması); doz, birim ve yaş grubu hatası; kontrendikasyon ve etkileşimin atlanması; göreli ve mutlak riskin karıştırılması; hasta metninde ağır jargon; kaynaksız iddia.
- **Doğrulama kaynakları:** güncel ulusal ve uluslararası klinik kılavuzlar, sistematik derlemeler, resmi sağlık kurumları, ilaç ruhsat bilgileri (yayın yılı ve sürüm doğrulanmalı).
- **Takımlar:** Yeşil kılavuz sürümünü ve kanıt düzeyini doğrular · Kırmızı tehlikeli yanlış anlamayı ve eksik uyarıyı arar · Turuncu doz ve oran hesaplarını yeniden yapar · Sarı hastanın ya da öğrencinin gözüyle okur.
- **Önerilen boy:** tam.
- **Sınır:** takımlar teşhis koymaz, tedavi ya da doz önermez, profesyonel tavsiye vermez; yalnız metni ve kaynaklarını inceler. Sonuç "hekime / uzmana danışılmalı" notu taşır.

## Hukuk

- **Tipik eser:** sözleşme taslağı, dilekçe taslağı, mevzuat özeti, hukuk ödevi, uyum kontrol listesi.
- **Sık hatalar:** yargı alanının belirtilmemesi ya da karıştırılması; yürürlükten kalkmış ya da değişmiş hükme dayanma; süre ve hak düşürücü sürelerin atlanması; tanımsız ya da çelişen terimler; tarafların hak ve yükümlülüğünün dengesizliği; içtihadın bağlamından koparılması; uydurulmuş madde ya da karar numarası.
- **Doğrulama kaynakları:** resmi mevzuat yayınları, yüksek mahkeme karar veritabanları, hakemli hukuk literatürü (madde numarası ve yürürlük tarihi doğrulanmalı).
- **Takımlar:** Yeşil her atfın yargı alanını, yürürlük tarihini ve metnini doğrular · Kırmızı karşı tarafın avukatı gibi boşluk arar · Mor belirsiz terimin niyetini sorar · Siyah önceki sürümlerde kapatılan boşlukların geri gelmediğine bakar.
- **Önerilen boy:** tam.
- **Sınır:** takımlar hukuki görüş ya da tavsiye vermez; inceleme ve kaynak denetimi yapar. Sonuç "avukata / hukuk uzmanına danışılmalı" notu taşır.

## Siyaset

- **Tipik eser:** siyaset bilimi ödevi, politika analizi, karşılaştırmalı rapor, haber ya da görüş metni incelemesi.
- **Sık hatalar:** görüşün olgu gibi sunulması; tek yanlı ya da tek kaynaklı anlatım; karşı görüşün çarpıtılması; bağlamdan koparılmış alıntı; güncel olmayan seçim ya da anket verisi; yüklü ve taraflı dil; nedensellik iddiasının kanıtsız kalması.
- **Doğrulama kaynakları:** resmi seçim ve istatistik kurumları, birincil belgeler (kanun, tutanak, konuşma metni), farklı görüşlerden hakemli literatür ve güvenilir yayınlar.
- **Takımlar:** Yeşil olguyu birincil kaynaktan doğrular, kaynak çeşitliliğine bakar · Kırmızı karşı görüşün en güçlü hâliyle saldırır · Sarı farklı görüşten bir okurun gözüyle okur · Mor görüş ↔ olgu ayrımını sorgular.
- **Önerilen boy:** normal.
- **Sınır:** takımlar taraf tutmaz, oy ya da siyasi tavsiye vermez; taraflılık dengesi, kaynak çeşitliliği ve görüş ↔ olgu ayrımını denetler.

## Tarih

- **Tipik eser:** tarih ödevi, makale, kronoloji, kaynak eleştirisi.
- **Sık hatalar:** birincil ve ikincil kaynağın karıştırılması; anakronizm (bugünün kavramıyla geçmişi yargılama); tarih, ad ve yer hatası; tek anlatıya dayanma; kaynağın yazıldığı bağlamın ve yazarın konumunun göz ardı edilmesi; efsanenin olgu sayılması.
- **Doğrulama kaynakları:** arşiv belgeleri ve yayımlanmış birincil kaynaklar, hakemli tarih literatürü, akademik ansiklopediler.
- **Takımlar:** Yeşil tarih ve adları birincil kaynaktan doğrular · Kırmızı anakronizm ve alternatif yorum arar · Mor kaynak türünü ve güvenilirliğini sorar · Beyaz iddia → kaynak izini sürer.
- **Önerilen boy:** normal.
- **Dikkat:** tartışmalı konularda yorumlar "görüş" olarak ve kaynağıyla yazılır.

## Müzik

- **Tipik eser:** armoni ya da kontrpuan ödevi, düzenleme, nota, müzik analizi, müzik tarihi metni.
- **Sık hatalar:** paralel beşli ve sekizli gibi yasak yürüyüşler; çalgı ses aralığı dışında yazım; transpoze çalgılarda yanlış yazım; ölçü ve vuruş sayısı tutarsızlığı; çözülmeyen disonans; analizde yanlış akor işlevi; tarih ve eser bilgisinde hata.
- **Doğrulama kaynakları:** armoni ve orkestrasyon ders kitapları, akademik müzik ansiklopedileri, eleştirel basım notalar.
- **Takımlar:** Turuncu kuralları nota üzerinde tek tek denetler, varsa notayı seslendirir · Kırmızı kural ihlali ve çalınamaz pasaj arar · Yeşil tarih ve eser bilgisini doğrular · Sarı icracının gözüyle bakar.
- **Önerilen boy:** hızlı + Sarı; büyük düzenleme normal.
- **Dikkat:** üslup tercihi kural ihlali değildir; ölçüt ödev yönergesi ya da belirtilen üsluptur.

---

## Diğer

Uyan bölüm yoksa koordinatör en yakın bölümü seçer, `gorev.md` "Alan" satırına "diğer (en yakın: …)" yazar ve takımlar rol dosyalarındaki "Konuya göre" tablosunun "Diğer" satırını uygular.
