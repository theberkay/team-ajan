# Team Ajan

🌐 [Türkçe](README.md) · [English](README.en.md) · [All languages](LANGUAGES.md)

## Kegunaannya

Ia meminta kerja anda (kod, pengiraan kejuruteraan, projek seni bina, reka bentuk produk / antara muka, tugasan, penyelidikan, tulisan, rancangan) disemak bukan oleh satu mata sahaja, tetapi oleh "pasukan" berasingan yang saling memeriksa; jika anda mahu, ia meminta kerja itu dibetulkan sehingga tiada ralat lagi. Ini ialah pakej pemalam untuk Claude Code. Di dalamnya ada dua jenis fail: **ejen** (arahan yang menerangkan cara sesuatu pasukan bekerja) dan **kemahiran** (arahan yang menerangkan cara Claude mengurus pasukan).

## Pasang

1. Jika anda menerima pakej sebagai fail mampat (zip), ekstrak dahulu ke dalam sebuah folder.
2. Klik dua kali fail `kur.cmd`. Pastikan anda melihat tulisan "Kuruldu" pada skrin.
3. Tutup Claude dan buka semula.

`kur.cmd` hanya menyalin fail ejen dan tiga folder kemahiran ke folder pengguna Claude (`%USERPROFILE%\.claude`); ia menulis ganti versi lama yang sama nama, jadi jangan letakkan fail anda sendiri dalam tiga folder itu atau dengan nama-nama itu. Ia memaparkan folder sasaran pada skrin. Apabila versi baharu tiba, cukup jalankan semula fail yang sama. Cara pemasangan lain ada di bahagian paling bawah.

## Ayat pertama anda selepas pemasangan

Buka Claude dalam folder tempat fail yang hendak disemak berada, dan tulis salah satu ayat di bawah. Ayat itu mesti mengandungi perkataan **"pasukan"**; jika tidak, pasukan tidak akan bertindak.

| Apa yang anda mahu | Ayat yang anda tulis |
|---|---|
| Hanya semak, jangan sentuh fail saya | `minta pasukan semak fail rapor.md, jangan sentuh` |
| Semak dan betulkan | `pasukan betulkan fail hesap.md sehingga tiada ralat lagi` |
| Fokus pada satu soalan | `pasukan lihat ini sahaja: kenapa ujian ini kadang-kadang gagal?` |
| Pandangan satu pasukan sahaja | `pasukan merah serang tugasan ini` · `lihat dengan mata pasukan kuning` · `pasukan firus cari pembaziran` |
| Ambil kira juga nota saya | `beri ini kepada pasukan sebagai nota: …` |
| Di mana mereka berhenti | `apa status pasukan?` |
| Teruskan dari tempat berhenti · berhenti | `pasukan teruskan` · `hentikan pasukan` |

Pencetus kemahiran ditulis dalam bahasa Turki; permintaan yang menyebut "takım" / "takımlar" mencetus dengan boleh dipercayai; permintaan dalam bahasa lain mungkin berfungsi tetapi belum diuji.

Claude mula-mula memberi ringkasan pendek (apa yang difahaminya, apa yang diandaikannya, berapa pasukan akan bekerja paling banyak berapa pusingan) lalu bermula. Semasa bekerja ia mungkin meminta kebenaran untuk menulis fail dan menjalankan arahan; berapa kali ia akan bertanya belum diukur. Anda boleh menjawab ya untuk kebenaran menulis ke folder `takim`; jika anda tidak pasti tentang kebenaran sesuatu arahan, jawab tidak, dan semakan itu dilaporkan sebagai "tidak dapat diperiksa".

## Apa yang berlaku pada fail anda

- **Jika anda kata "semak", fail anda tidak berubah.** Pasukan diberitahu supaya hanya menulis laporan dan buku catatan dalam folder `takim` mereka sendiri ("semakan sahaja"); salinan fail anda tetap diambil ke folder `takim\yedek\`.
- **Jika anda kata "betulkan",** Claude terlebih dahulu mengambil salinan fail anda ke folder `takim\yedek\` dan memberitahu anda "fail anda akan berubah, sandarannya di sini". Hanya pasukan Biru menulis ke fail anda.
- Jika permintaan anda tidak jelas, Claude tidak menyentuh fail anda.
- Belum disahkan sama ada fail Word atau PDF boleh dibaca oleh pasukan; Claude menyatakan hal ini pada awalnya dan bekerja pada salinan yang telah ditukar kepada teks.

## Bila ia selesai

Jika anda kata "semak", ia selesai selepas satu pusingan semakan: Claude menerangkan apa yang ditemui dan bertanya sama ada perlu dibetulkan. Jika anda kata "betulkan", ia selesai apabila ralat yang ditemui telah dibetulkan, pembetulan itu telah diuji semula, dan cara menutup setiap perkara yang tergantung telah ditulis. Ia juga boleh berhenti lebih awal (contohnya apabila bilangan pusingan maksimum, "had pusingan", dicapai, atau apabila timbul sesuatu yang perlu anda putuskan); apabila berhenti, Claude menerangkan sebabnya dan bertanya. Senarai keadaan berhenti ada dalam bahagian 8 peraturan.

Berapa lama satu pusingan mengambil masa belum diukur; semakin banyak pasukan, semakin bertambah masa dan penggunaan.

## Pasukan

| Pasukan | Ejen | Apa yang dibuat |
|---|---|---|
| 🔵 Biru | `mavi-yazar` | Menulis karya, menyelesaikan setiap bantahan hingga ada keputusan |
| 🔴 Merah | `kirmizi-saldirgan` | Cuba meruntuhkan dakwaan karya |
| 🩷 Merah jambu | `pembe-denetci` | Memeriksa dapatan, menutup kiraan |
| 🟣 Ungu | `mor-sorgucu` | Memeriksa kefahaman, bertanya soalan sukar, menyiasat punca |
| 🟢 Hijau | `yesil-gercek` | Mengesahkan maklumat luar daripada sumber primer, membuat penyelidikan awal |
| 🟠 Oren | `turuncu-deneyci` | Menjalankan dengan tangan sendiri, mengira semula |
| 🩶 Kelabu | `gri-sadelestirici` | Bertanya "betulkah perlu?", menjaga fokus |
| ⚫ Hitam | `siyah-hafiza` | Menangkap yang terlupa dan yang rosak semula; ia pintu pagar |
| ⚪ Putih | `beyaz-kayitci` | Mengesahkan apa yang telah dibuat, merekod kerja tanpa pemilik dan jejak |
| 🟡 Kuning | `sari-kullanici` | Mencuba karya dengan mata orang yang akan menggunakannya |
| 🩵 Firus | `turkuaz-verimlilik` | Mencari dan mengurangkan pembaziran token, bacaan dan panggilan (ditambah pada saiz) |

"Karya" ialah fail atau kerja anda yang disemak. Skrin Claude hanya mengenal lapan warna untuk pasukan; sebab itu Kelabu kelihatan sebagai sian, dan Hitam serta Putih tiada warna. Kenali pasukan melalui namanya.

## Saiz dan mod

**Saiz** ialah berapa banyak pasukan yang akan bekerja. Jika anda tidak menyatakannya, Claude memilih mengikut besarnya kerja dan memaklumkan anda.

| Saiz | Pasukan | Had pusingan | Untuk apa |
|---|---|---|---|
| Pantas | Biru, Merah, Merah jambu | 2 | Kerja kecil, satu fail, semakan pantas |
| Biasa | + Hijau, Kelabu, Oren | 5 | Kebanyakan kerja |
| Penuh | + Ungu, Kuning, Hitam, Putih | 10 | Kerja kritikal, berjangka panjang atau mahal untuk dibatalkan |

Pasukan boleh ditambah satu demi satu pada sesuatu saiz ("saiz pantas, tambah juga pasukan kuning"); untuk tugasan dan tulisan Claude menambah Kuning dengan sendirinya, dan untuk kerja yang perlu dijalankan ia menambah Oren, serta memberitahu anda. Had pusingan ialah nilai permulaan yang belum diuji; untuk mengubahnya, cukup beritahu.

**Mod** ialah apa yang akan dilihat: **luas** (keseluruhan kerja) atau **fokus** (satu soalan). Jika anda bertanya satu soalan, Claude memilih mod fokus.

## Di mana hasilnya

- Claude menerangkan hasilnya kepada anda dalam perbualan: satu ayat di atas, ringkasan pendek di bawahnya; apa yang **terbukti** dan apa yang *anggaran* dinyatakan secara berasingan; jika ada soalan, ia berada di paling bawah.
- Folder `takim` dibuka dalam folder tempat anda bekerja. Ini ialah buku catatan pasukan sendiri; anda tidak perlu membacanya. Bentuk asal fail anda juga ada dalam folder ini (`takim\yedek\`); jika anda berpuas hati dengan pembetulan, anda boleh memadamnya selepas kerja selesai.
- Untuk memberi nota atau laporan kepada pasukan, anda boleh meletakkan fail dalam folder `takim\gelen\`.
- Jika anda memulakan kerja baharu dalam folder yang sama, rekod lama tidak dipadam; ia dipindahkan ke bawah `takim\arsiv\`.

Teks penuh peraturan: `skills/takim-dongu/sablonlar/kurallar.md`.

## Nyahpasang

- Jika anda memasang dengan `kur.cmd`: klik dua kali fail `kaldir.cmd`. Ia hanya memadam fail ejen pakej dan tiga folder kemahiran; ia tidak menyentuh folder `takim` dalam projek anda. Jika ada fail yang tidak dapat dipadamnya, ia menyatakannya pada skrin.
- Jika anda memasang sebagai pemalam: dalam Claude Code tulis `/plugin` dan buang pemalam daripada tetingkap yang terbuka (langkah ini belum disahkan).
- Jika anda menyalin ke satu projek: padam fail yang anda salin daripada folder `.claude` projek itu.

## Cara pemasangan lain (lanjutan)

Gunakan satu sahaja. Jika anda menggunakan cara pemalam bersama `kur.cmd`, pasukan akan muncul dua kali dalam senarai.

**Sebagai pemalam.** Di bawah, di tempat tertulis `<takim-ajan klasörünün yolu>`, letakkan laluan penuh folder ini pada komputer anda. Dalam Claude Code:

```
/plugin marketplace add <takim-ajan klasörünün yolu>
/plugin install takim-ajan@takim-ajan-yerel
```

Arahan kedua tidak menyelesaikan pemasangan dengan sendirinya: ia membuka tetingkap; di situ anda memilih skop pengguna. Belum disahkan sama ada laluan Windows dibaca dengan betul dalam arahan ini. Apabila dipasang sebagai pemalam, nama ejen dan kemahiran diawali dengan `takim-ajan:`.

**Ke satu projek.** Salin isi folder `agents` ke folder `.claude\agents` projek, dan tiga folder di dalam folder `skills` ke folder `.claude\skills` projek. Tiga folder kemahiran mesti disalin bersama.

## Isi pakej

| Tempat | Apa di dalamnya |
|---|---|
| `agents/` | Fail arahan pasukan |
| `skills/` | Tiga kemahiran: `takim-dongu` (kitaran dan templat), `takim-tek` (satu pasukan), `takim-durum` (status) |
| `tests/` | Semakan pakej sendiri (`tests/denetle.ps1`), senario tekanan dan tiga raptai kering |
| `docs/` | `docs/koken.md` (dari mana asalnya), `docs/arastirma.md` (kaedah yang menjadi asasnya) |
| `kur.cmd`, `kaldir.cmd` | Pasang / nyahpasang dengan klik dua kali |

Versi 0.2.4. Perkara yang belum diuji disenaraikan di hujung `docs/koken.md`.
