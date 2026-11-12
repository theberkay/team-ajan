# Team Ajan

🌐 [Türkçe](README.md) · [English](README.en.md) · [All languages](LANGUAGES.md)

## Kegunaannya

Paket ini membuat pekerjaan Anda (kode, perhitungan teknik, proyek arsitektur, desain produk / antarmuka, tugas sekolah, riset, tulisan, rencana) ditinjau bukan oleh satu pasang mata, melainkan oleh "tim-tim" terpisah yang saling mengawasi; jika Anda mau, paket ini juga membuat kesalahan diperbaiki sampai tidak ada yang tersisa. Ini adalah paket plugin untuk Claude Code. Di dalamnya ada dua jenis berkas: **agen** (instruksi yang menjelaskan cara kerja sebuah tim) dan **keterampilan** (instruksi yang menjelaskan cara Claude mengelola tim-tim).

Panduan bidang (`skills/takim-dongu/sablonlar/alanlar.md`) memberi tahu tim apa yang harus diperiksa di bidang-bidang ini: kode, rekayasa, mesin, mekatronika, kelistrikan, industri berat, arsitektur, desain dan perancangan, penjelasan materi dan tugas sekolah, presentasi, riset, dokumentasi, kedokteran, hukum, politik, sejarah, musik. Dalam kedokteran dan hukum, tim tidak memberikan diagnosis, pengobatan, atau pendapat hukum; tim hanya memeriksa teks dan sumbernya, dan hasilnya membawa catatan "konsultasikan dengan ahli".

## Pasang

1. Jika Anda menerima paket ini sebagai berkas terkompresi (zip), ekstrak dulu ke sebuah folder.
2. Klik ganda berkas `kur.cmd`. Pastikan tulisan "Kuruldu" muncul di layar.
3. Tutup Claude lalu buka kembali.

`kur.cmd` hanya menyalin berkas agen dan tiga folder keterampilan ke folder pengguna Claude (`%USERPROFILE%\.claude`); berkas lama dengan nama yang sama akan ditimpa, jadi jangan menaruh berkas Anda sendiri dengan nama-nama itu di ketiga folder tersebut. Folder tujuan ditampilkan di layar. Saat versi baru keluar, cukup jalankan lagi berkas yang sama. Cara pemasangan lain ada di bagian paling bawah.

## Kalimat pertama Anda setelah memasang

Buka Claude di folder tempat berkas yang akan ditinjau berada, lalu ketik salah satu kalimat berikut. Kalimat itu harus memuat kata **"tim"**; jika tidak, tim-tim tidak akan aktif.

| Yang Anda inginkan | Kalimat yang diketik |
|---|---|
| Hanya meninjau, tidak menyentuh berkas saya | `minta tim-tim meninjau berkas rapor.md, jangan sampai diubah` |
| Meninjau dan memperbaiki | `tim-tim perbaiki berkas hesap.md sampai tidak ada kesalahan lagi` |
| Fokus pada satu pertanyaan | `tim-tim cukup lihat ini: kenapa tes ini kadang-kadang gagal?` |
| Pendapat satu tim saja | `tim merah serang tugas ini` · `lihat dari sudut pandang tim kuning` · `tim pirus periksa pemborosan` |
| Ikut mempertimbangkan catatan saya | `berikan ini ke tim-tim sebagai catatan: …` |
| Sampai mana mereka | `bagaimana keadaan tim-tim?` |
| Lanjutkan dari titik terakhir · berhenti | `tim-tim lanjutkan` · `hentikan tim-tim` |

> Pemicu keterampilan ditulis dalam bahasa Turki; permintaan yang memuat kata "takım" / "takımlar" memicu dengan andal; permintaan dalam bahasa lain mungkin berfungsi, tetapi belum diuji.

Claude terlebih dulu memberi ringkasan singkat (apa yang dipahaminya, apa yang diasumsikannya, berapa tim yang akan bekerja paling banyak berapa putaran) lalu mulai. Selama bekerja, Claude bisa meminta izin untuk menulis berkas dan menjalankan perintah; seberapa sering ia akan meminta belum diukur. Anda boleh menyetujui izin menulis ke folder `takim`; jika ragu terhadap izin sebuah perintah, jawab tidak, dan pemeriksaan itu akan dilaporkan sebagai "tidak dapat diperiksa".

## Apa yang terjadi pada berkas Anda

- **Jika Anda bilang "tinjau", berkas Anda tidak berubah.** Tim-tim diberi tahu agar hanya menulis laporan dan catatan di folder `takim` mereka sendiri ("hanya peninjauan"); meski begitu, salinan berkas Anda tetap disimpan di folder `takim\yedek\`.
- **Jika Anda bilang "perbaiki"**, Claude terlebih dulu menyimpan salinan berkas Anda di folder `takim\yedek\` dan memberi tahu Anda, "berkas Anda akan berubah, cadangannya ada di sini". Hanya tim Biru yang menulis ke berkas Anda.
- Jika permintaan Anda tidak jelas, Claude tidak menyentuh berkas Anda.
- Belum diverifikasi apakah tim-tim dapat membaca berkas Word atau PDF; Claude menyampaikan hal ini di awal dan bekerja pada salinan yang sudah diubah menjadi teks.

## Kapan selesai

Jika Anda bilang "tinjau", pekerjaan selesai setelah satu putaran peninjauan: Claude menyampaikan temuannya dan bertanya apakah perlu diperbaiki. Jika Anda bilang "perbaiki", pekerjaan selesai ketika kesalahan yang ditemukan sudah diperbaiki, perbaikannya sudah diuji ulang, dan cara menuntaskan setiap hal yang masih setengah jalan sudah ditulis. Pekerjaan juga bisa berhenti sebelum selesai (misalnya saat jumlah putaran maksimum, yaitu "batas putaran", tercapai, atau saat muncul sesuatu yang harus Anda putuskan); ketika berhenti, Claude menjelaskan alasannya dan bertanya. Daftar keadaan berhenti ada di bagian 8 aturan.

Lama satu putaran belum diukur; makin banyak tim, makin lama waktu dan makin besar pemakaian.

## Tim

| Tim | Agen | Tugasnya |
|---|---|---|
| 🔵 Biru | `mavi-yazar` | Menulis karya, menuntaskan setiap keberatan hingga ada hasilnya |
| 🔴 Merah | `kirmizi-saldirgan` | Berusaha mematahkan klaim-klaim karya |
| 🩷 Merah muda | `pembe-denetci` | Memeriksa temuan, menutup penghitungan |
| 🟣 Ungu | `mor-sorgucu` | Memeriksa pemahaman, mengajukan pertanyaan sulit, menyelidiki penyebab |
| 🟢 Hijau | `yesil-gercek` | Memverifikasi informasi luar dari sumber primer, melakukan riset awal |
| 🟠 Oranye | `turuncu-deneyci` | Menjalankan sendiri, menghitung ulang |
| 🩶 Abu-abu | `gri-sadelestirici` | Bertanya "apakah ini benar-benar perlu", menjaga fokus |
| ⚫ Hitam | `siyah-hafiza` | Menangkap yang terlupakan dan yang rusak kembali; ia adalah gerbang |
| ⚪ Putih | `beyaz-kayitci` | Memverifikasi yang sudah dikerjakan, mencatat pekerjaan tanpa pemilik dan jejaknya |
| 🟡 Kuning | `sari-kullanici` | Mencoba karya dari sudut pandang orang yang akan memakainya |
| 🩵 Pirus | `turkuaz-verimlilik` | Menemukan pemborosan token, pembacaan, dan pemanggilan, lalu menekannya seminimal mungkin (ditambahkan ke ukuran) |

"Karya" adalah berkas atau pekerjaan Anda yang sedang ditinjau. Layar Claude hanya mengenali delapan warna untuk tim; karena itu Abu-abu tampil sebagai sian, sedangkan Hitam dan Putih tidak berwarna. Kenali tim dari namanya.

## Ukuran dan mode

**Ukuran** adalah berapa tim yang bekerja. Jika Anda tidak menyebutkannya, Claude memilih sesuai besar pekerjaan dan memberi tahu Anda.

| Ukuran | Tim | Batas putaran | Untuk apa |
|---|---|---|---|
| Cepat | Biru, Merah, Merah muda | 2 | Pekerjaan kecil, satu berkas, pemeriksaan cepat |
| Normal | + Hijau, Abu-abu, Oranye | 5 | Sebagian besar pekerjaan |
| Penuh | + Ungu, Kuning, Hitam, Putih | 10 | Pekerjaan kritis, berumur panjang, atau mahal untuk dibatalkan |

Tim bisa ditambahkan satu per satu ke sebuah ukuran ("ukuran cepat, tambahkan juga tim kuning"); untuk tugas sekolah dan tulisan Claude otomatis menambahkan Kuning, dan untuk pekerjaan yang perlu dijalankan ia menambahkan Oranye, lalu memberi tahu Anda. Batas putaran adalah nilai awal yang belum diuji; untuk mengubahnya, cukup katakan saja.

**Mode** adalah apa yang dilihat: **luas** (seluruh pekerjaan) atau **fokus** (satu pertanyaan). Jika Anda mengajukan satu pertanyaan, Claude memilih mode fokus.

## Di mana hasilnya

- Claude menyampaikan hasilnya kepada Anda di obrolan: satu kalimat di paling atas, ringkasan singkat di bawahnya; mana yang **terbukti** dan mana yang *perkiraan* disebutkan terpisah; jika ada pertanyaan, letaknya di paling bawah.
- Di folder tempat Anda bekerja akan dibuat folder `takim`. Ini adalah buku catatan milik tim-tim; Anda tidak perlu membacanya. Versi awal berkas Anda juga ada di folder ini (`takim\yedek\`); jika Anda puas dengan perbaikannya, Anda boleh menghapusnya setelah pekerjaan selesai.
- Untuk memberi catatan atau laporan kepada tim-tim, Anda bisa menaruh berkasnya di folder `takim\gelen\`.
- Jika Anda memulai pekerjaan baru di folder yang sama, catatan lama tidak dihapus; catatan itu dipindahkan ke `takim\arsiv\`.

Teks lengkap aturan: `skills/takim-dongu/sablonlar/kurallar.md`.

## Mencopot

- Jika Anda memasang dengan `kur.cmd`: klik ganda berkas `kaldir.cmd`. Berkas ini hanya menghapus berkas agen paket dan tiga folder keterampilan; folder `takim` di proyek-proyek Anda tidak disentuh. Jika ada berkas yang tidak bisa dihapus, hal itu diberitahukan di layar.
- Jika Anda memasang sebagai plugin: ketik `/plugin` di Claude Code dan copot plugin dari jendela yang terbuka (langkah ini belum diverifikasi).
- Jika Anda menyalin ke satu proyek: hapus berkas yang Anda salin dari folder `.claude` proyek tersebut.

## Cara pemasangan lain (lanjutan)

Gunakan salah satu saja. Jika Anda memakai cara plugin bersama `kur.cmd`, tim-tim akan muncul dua kali di daftar.

**Sebagai plugin.** Di bawah, ganti `<takim-ajan klasörünün yolu>` dengan jalur lengkap folder ini di komputer Anda. Di Claude Code:

```
/plugin marketplace add <takim-ajan klasörünün yolu>
/plugin install takim-ajan@takim-ajan-yerel
```

Perintah kedua tidak menuntaskan pemasangan dengan sendirinya: sebuah jendela terbuka, dan di sana Anda memilih cakupan pengguna. Belum diverifikasi apakah jalur Windows terbaca dengan benar dalam perintah ini. Jika dipasang sebagai plugin, nama agen dan keterampilan diawali `takim-ajan:`.

**Ke satu proyek.** Salin isi folder `agents` ke folder `.claude\agents` proyek, dan tiga folder di dalam folder `skills` ke folder `.claude\skills` proyek. Ketiga folder keterampilan harus disalin bersama.

## Isi paket

| Tempat | Isinya |
|---|---|
| `agents/` | Berkas instruksi tim-tim |
| `skills/` | Tiga keterampilan: `takim-dongu` (siklus dan templat), `takim-tek` (satu tim), `takim-durum` (status) |
| `tests/` | Pemeriksaan paket sendiri (`tests/denetle.ps1`), skenario tekanan, dan tiga gladi kering |
| `docs/` | `docs/koken.md` (asal-usulnya), `docs/arastirma.md` (metode yang menjadi dasarnya) |
| `kur.cmd`, `kaldir.cmd` | Klik ganda untuk memasang / mencopot |

Versi 0.3.0. Hal-hal yang belum diuji tercantum di akhir `docs/koken.md`.

Lisensi: MIT (LICENSE)
