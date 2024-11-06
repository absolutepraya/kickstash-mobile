# KickStash

-   [Pertanyaan dan Jawaban](#Pertanyaan-dan-Jawaban)
    -   [Tugas 7](#Tugas-7--Pertanyaan-dan-Jawaban)
-   [Checklist Tugas](#Checklist-Tugas)
    -   [Tugas 7](#Tugas-7--Checklist)

## Pertanyaan dan Jawaban

### Tugas 7 — Pertanyaan dan Jawaban

1. Jelaskan apa yang dimaksud dengan _stateless widget dan stateful widget_, dan jelaskan perbedaan dari keduanya.

    - **Stateless Widget** adalah widget yang tidak memiliki _state_ atau _data_ yang dapat berubah. _Stateless widget_ hanya memiliki _properties_ yang bersifat _immutable_ atau tidak dapat berubah. _Stateless widget_ tidak memiliki fungsi `setState()` dan tidak dapat memperbarui _state_ atau _data_ yang dimilikinya.
    - **Stateful Widget** adalah widget yang memiliki _state_ atau _data_ yang dapat berubah. _Stateful widget_ memiliki fungsi `setState()` yang dapat digunakan untuk memperbarui _state_ atau _data_ yang dimilikinya.

2. Sebutkan _widget_ apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

    -   `MaterialApp` adalah _root widget_ yang digunakan untuk mengatur _theme_ dan _routing_ pada aplikasi Flutter.
    -   `Scaffold` adalah _widget_ yang digunakan untuk membuat _layout_ dasar aplikasi Flutter.
    -   `AppBar` adalah _widget_ yang digunakan untuk membuat _app bar_ pada aplikasi Flutter.
    -   `Padding` adalah _widget_ yang digunakan untuk memberikan padding pada widget anaknya.
    -   `Column` adalah _widget_ yang digunakan untuk membuat _layout_ berupa kolom pada aplikasi Flutter.
    -   `Row` adalah _widget_ yang digunakan untuk membuat _layout_ berupa baris pada aplikasi Flutter.
    -   `Text` adalah _widget_ yang digunakan untuk menampilkan teks pada aplikasi Flutter.
    -   `Card` adalah _widget_ yang digunakan untuk membuat _card_ dengan elevasi.
    -   `Container` adalah _widget_ yang digunakan untuk mengatur layout, padding, margin, dan dekorasi dari widget anaknya.
    -   `GridView.count` adalah _widget_ yang digunakan untuk membuat grid dengan jumlah kolom yang tetap.
    -   `Icon` adalah _widget_ yang digunakan untuk menampilkan ikon.
    -   `Material` adalah _widget_ yang digunakan untuk memberikan efek material pada widget anaknya.
    -   `InkWell` adalah _widget_ yang digunakan untuk memberikan efek klik pada widget anaknya.
    -   `SnackBar` adalah _widget_ yang digunakan untuk menampilkan pesan sementara di bagian bawah layar.

3. Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

    - `setState()` adalah fungsi yang digunakan untuk memperbarui _state_ atau _data_ pada _stateful widget_. Dengan menggunakan fungsi `setState()`, Flutter akan memanggil fungsi `build()` kembali dan memperbarui tampilan aplikasi sesuai dengan _state_ atau _data_ yang telah diperbarui.
    - Variabel yang dapat terdampak dengan fungsi `setState()` adalah variabel yang digunakan untuk menyimpan _state_ atau _data_ yang akan diperbarui.

4. Jelaskan perbedaan antara `const` dengan `final`.

    - `const` adalah kata kunci yang digunakan untuk mendeklarasikan variabel yang bersifat _immutable_ atau tidak dapat berubah. Variabel yang dideklarasikan dengan `const` **harus diinisialisasi pada saat deklarasi** dan tidak dapat diubah nilainya.
    - `final` adalah kata kunci yang digunakan untuk mendeklarasikan variabel yang bersifat _immutable_ atau tidak dapat berubah. Variabel yang dideklarasikan dengan `final` **dapat diinisialisasi pada saat deklarasi atau diinisialisasi pada saat runtime** dan tidak dapat diubah nilainya setelah diinisialisasi.

5. Jelaskan bagaimana cara kamu mengimplementasikan _checklist-checklist_ di atas.



## Checklist Tugas

### Tugas 7 — Checklist

- [X] Membuat sebuah program Flutter baru dengan tema _E-Commerce_ yang sesuai dengan tugas-tugas sebelumnya.
- [X] Membuat tiga tombol sederhana dengan ikon dan teks untuk:
    - [X] Melihat daftar produk (`Lihat Daftar Produk`)
    - [X] Menambah produk (`Tambah Produk`)
    - [X] Logout (`Logout`)
- [X] Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (`Lihat Daftar Produk`, `Tambah Produk`, dan `Logout`).
- [X] Memunculkan `Snackbar` dengan tulisan:
    - [X] "Kamu telah menekan tombol Lihat Daftar Produk" ketika tombol `Lihat Daftar Produk` ditekan.
    - [X] "Kamu telah menekan tombol Tambah Produk" ketika tombol `Tambah Produk` ditekan.
    - [X] "Kamu telah menekan tombol Logout" ketika tombol `Logout` ditekan.
- [X] Menjawab beberapa pertanyaan berikut pada `README.md` pada *root_folder*.
    - [X] Jelaskan apa yang dimaksud dengan _stateless widget dan stateful widget_, dan jelaskan perbedaan dari keduanya.
    - [X] Sebutkan _widget_ apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
    - [X] Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
    - [X] Jelaskan perbedaan antara `const` dengan `final`.
    - [X] Jelaskan bagaimana cara kamu mengimplementasikan _checklist-checklist_ di atas.
- [X] Melakukan `add`-`commit`-`push` ke suatu repositori baru di GitHub.
