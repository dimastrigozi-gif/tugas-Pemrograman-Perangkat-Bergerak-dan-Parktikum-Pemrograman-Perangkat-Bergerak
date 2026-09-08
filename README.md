# Laporan Praktikum Modul 01: Mobile Ecosystem, Flutter Setup & Profile App

- *Nama*: dimas tri ibrahul gozi 
- *NIM*: 362558302104
- *Kelas / Prodi*: 2C / Sarjana Terapan TRPL
- *Mata Kuliah*: Pemrograman Perangkat Bergerak (Semester 3)

---

## 1. Ringkasan Aktivitas
Pada praktikum kali ini saya mulai dengan menyiapkan Flutter SDK agar dapat digunakan untuk membuat dan menjalankan aplikasi. Setelah itu saya mengatur PATH Flutter dan memasang extension Flutter di VS Code supaya proses pengembangan aplikasi bisa dilakukan dengan lebih mudah.

Selanjutnya saya membuat project Flutter baru dan mengikuti langkah-langkah yang terdapat pada modul. Saya mencoba menjalankan kode yang diberikan, kemudian melakukan beberapa penyesuaian pada bagian aplikasi sesuai instruksi praktikum. Setelah selesai, aplikasi saya jalankan melalui Chrome untuk melihat apakah tampilan dan fungsi yang dibuat sudah berjalan dengan baik.

Setelah memastikan aplikasi dapat dijalankan tanpa kendala, tahap terakhir yang saya lakukan adalah melakukan commit dan push project ke GitHub sebagai penyimpanan sekaligus dokumentasi hasil praktikum.

## 2. Bukti Tangkapan Layar (Running App)
| Mode Portrait | Mode Landscape |
|---|---|
| ![Portrait](./Screenshots/Screenshot%202026-09-06%20105756.png) | ![Landscape](./Screenshots/Screenshot%202026-09-06%20105735.png) |

3. Kendala yang Dihadapi & Solusinya
Kendala:
Saat melakukan proses Git Push, sempat terjadi kegagalan.
Muncul pesan error Git: connect ENOENT ketika proses Git dijalankan.
Solusi:
Mengatur kembali koneksi repository dengan melakukan autentikasi menggunakan perintah gh auth login.
Setelah itu, VS Code di-restart agar konfigurasi Git dapat terbaca kembali dengan normal.
Setelah dicoba kembali, proses commit dan push berhasil dilakukan ke GitHub.
4. Jawaban Pertanyaan Refleksi

1. Pilihan Native vs Flutter
Saya lebih memilih Native jika aplikasi yang dibuat membutuhkan performa maksimal atau memiliki fitur yang sangat bergantung pada sistem operasi tertentu. Sedangkan Flutter lebih cocok jika ingin membuat aplikasi untuk beberapa platform dengan proses pengembangan yang lebih praktis. Jadi, pemilihannya saya sesuaikan dengan kebutuhan aplikasinya.

2. Prinsip UI = f(state)
Menurut saya, konsep UI = f(state) membuat pengelolaan tampilan menjadi lebih sederhana karena tampilan dapat menyesuaikan kondisi data yang sedang digunakan. Jadi, ketika state berubah, UI juga dapat ikut diperbarui tanpa harus mengatur setiap bagian tampilan secara manual.

3. Pentingnya Conventional Commits
Menurut saya, Conventional Commits berguna supaya pesan commit lebih teratur dan mudah dipahami. Dengan format yang konsisten, kita juga lebih mudah mengetahui perubahan apa saja yang sudah dilakukan ketika melihat kembali riwayat project di GitHub.