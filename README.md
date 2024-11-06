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

    - `MaterialApp` adalah _root widget_ yang digunakan untuk mengatur _theme_ dan _routing_ pada aplikasi Flutter.
    - `Scaffold` adalah _widget_ yang digunakan untuk membuat _layout_ dasar aplikasi Flutter.
    - `AppBar` adalah _widget_ yang digunakan untuk membuat _app bar_ pada aplikasi Flutter.
    - `Padding` adalah _widget_ yang digunakan untuk memberikan padding pada widget anaknya.
    - `Column` adalah _widget_ yang digunakan untuk membuat _layout_ berupa kolom pada aplikasi Flutter.
    - `Row` adalah _widget_ yang digunakan untuk membuat _layout_ berupa baris pada aplikasi Flutter.
    - `Text` adalah _widget_ yang digunakan untuk menampilkan teks pada aplikasi Flutter.
    - `Card` adalah _widget_ yang digunakan untuk membuat _card_ dengan elevasi.
    - `Container` adalah _widget_ yang digunakan untuk mengatur layout, padding, margin, dan dekorasi dari widget anaknya.
    - `GridView.count` adalah _widget_ yang digunakan untuk membuat grid dengan jumlah kolom yang tetap.
    - `Icon` adalah _widget_ yang digunakan untuk menampilkan ikon.
    - `Material` adalah _widget_ yang digunakan untuk memberikan efek material pada widget anaknya.
    - `InkWell` adalah _widget_ yang digunakan untuk memberikan efek klik pada widget anaknya.
    - `SnackBar` adalah _widget_ yang digunakan untuk menampilkan pesan sementara di bagian bawah layar.

3. Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

    - `setState()` adalah fungsi yang digunakan untuk memperbarui _state_ atau _data_ pada _stateful widget_. Dengan menggunakan fungsi `setState()`, Flutter akan memanggil fungsi `build()` kembali dan memperbarui tampilan aplikasi sesuai dengan _state_ atau _data_ yang telah diperbarui.
    - Variabel yang dapat terdampak dengan fungsi `setState()` adalah variabel yang digunakan untuk menyimpan _state_ atau _data_ yang akan diperbarui.

4. Jelaskan perbedaan antara `const` dengan `final`.

    - `const` adalah kata kunci yang digunakan untuk mendeklarasikan variabel yang bersifat _immutable_ atau tidak dapat berubah. Variabel yang dideklarasikan dengan `const` **harus diinisialisasi pada saat deklarasi** dan tidak dapat diubah nilainya.
    - `final` adalah kata kunci yang digunakan untuk mendeklarasikan variabel yang bersifat _immutable_ atau tidak dapat berubah. Variabel yang dideklarasikan dengan `final` **dapat diinisialisasi pada saat deklarasi atau diinisialisasi pada saat runtime** dan tidak dapat diubah nilainya setelah diinisialisasi.

5. Jelaskan bagaimana cara kamu mengimplementasikan _checklist-checklist_ di atas.

    1. Pertama, saya menghapus `main.dart` dan membuat file baru di `/lib` yaitu `menu.dart`.

    2. `main.dart` berfungsi sebagai _entry point_ aplikasi Flutter dan akan memanggil `MyHomePage` yang berada di `menu.dart`, dan `menu.dart` yang akan menampilkan _homepage_ proyek Flutter ini.

    3. Saya membuat _stateless widget_ `MyHomePage` yang berisi _properties_ dan _methods_ yang digunakan untuk menampilkan _layout_ aplikasi Flutter.

    ```dart
    import 'package:flutter/material.dart';

    class MyHomePage extends StatelessWidget {
    final String npm = '2306245131';
    final String name = 'Daffa Abhipraya Putra';
    final String className = 'PBP D';

    final List<ItemHomepage> items = [
        ItemHomepage("Lihat Produk", Icons.mood, Colors.blue),
        ItemHomepage("Tambah Produk", Icons.add, Colors.green),
        ItemHomepage("Logout", Icons.logout, Colors.red),
    ];

    MyHomePage({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: const Text(
            'KickStash',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
            ),
            ),

            backgroundColor: Theme.of(context).colorScheme.primary,
        ),

        body: Padding(
            padding: const EdgeInsets.all(16.0),

            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    InfoCard(title: 'NPM', content: npm),
                    InfoCard(title: 'Name', content: name),
                    InfoCard(title: 'Class', content: className),
                ],
                ),


                const SizedBox(height: 16.0),


                Center(
                child: Column(


                    children: [

                    const Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: Text(
                        'Welcome to KickStash',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                        ),
                        ),
                    ),


                    GridView.count(
                        primary: true,
                        padding: const EdgeInsets.all(20),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 3,

                        shrinkWrap: true,


                        children: items.map((ItemHomepage item) {
                        return ItemCard(item);
                        }).toList(),
                    ),
                    ],
                ),
                ),
            ],
            ),
        ),
        );
    }
    }

    class InfoCard extends StatelessWidget {
    final String title;
    final String content;

    const InfoCard({super.key, required this.title, required this.content});

    @override
    Widget build(BuildContext context) {
        return Card(

        elevation: 2.0,
        child: Container(

            width: MediaQuery.of(context).size.width /
                3.5,
            padding: const EdgeInsets.all(16.0),

            child: Column(
            children: [
                Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Text(content),
            ],
            ),
        ),
        );
    }
    }

    class ItemHomepage {
    final String name;
    final IconData icon;
    final Color color;

    ItemHomepage(this.name, this.icon, this.color);
    }

    class ItemCard extends StatelessWidget {
    final ItemHomepage item;

    const ItemCard(this.item, {super.key});

    @override
    Widget build(BuildContext context) {
        return Material(
        color: item.color,
        borderRadius: BorderRadius.circular(12),

        child: InkWell(
            onTap: () {
            ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(
                    content: Text("Kamu telah menekan tombol ${item.name}!")));
            },

            child: Container(
            padding: const EdgeInsets.all(8),
            child: Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Icon(
                    item.icon,
                    color: Colors.white,
                    size: 30.0,
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                    item.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                    ),
                ],
                ),
            ),
            ),
        ),
        );
    }
    }
    ```

    Di dalam `MyHomePage`, saya membuat _stateless widget_ `InfoCard` yang berfungsi untuk menampilkan informasi seperti NPM, nama, dan kelas. 
    
    ```dart
    class InfoCard extends StatelessWidget {
        final String title;
        final String content;
        final Color color;

        const InfoCard({super.key, required this.title, required this.content, required this.color});

        @override
        Widget build(BuildContext context) {
            return Card(

            elevation: 2.0,
            child: Container(

                width: MediaQuery.of(context).size.width /
                    3.5,
                padding: const EdgeInsets.all(16.0),

                child: Column(
                children: [
                    Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8.0),
                    Text(content),
                ],
                ),
            ),
            );
        }
    }
    ```
    
    Saya juga membuat _stateless widget_ `ItemCard` yang berfungsi untuk menampilkan _card_ dengan ikon dan teks.

    ```dart
    class ItemCard extends StatelessWidget {
        final ItemHomepage item;

        const ItemCard(this.item, {super.key});

        @override
        Widget build(BuildContext context) {
            return Material(
            color: item.color,
            borderRadius: BorderRadius.circular(12),

            child: InkWell(
                onTap: () {
                ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(SnackBar(
                        content: Text("Kamu telah menekan tombol ${item.name}!")));
                },

                child: Container(
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Icon(
                        item.icon,
                        color: Colors.white,
                        size: 30.0,
                        ),
                        const Padding(padding: EdgeInsets.all(3)),
                        Text(
                        item.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.white),
                        ),
                    ],
                    ),
                ),
                ),
            ),
            );
        }
    }
    ```

    Di dalam `ItemCard`, saya menggunakan `item.color` untuk memberikan warna masing-masing pada _card_ yang akan ditampilkan.

    4. Setelah itu, saya membuat _stateless widget_ `MyApp` yang berfungsi sebagai _root widget_ dari aplikasi Flutter.

    ```dart
    import 'package:flutter/material.dart';
    import 'package:kickstash/menu.dart';

    void main() {
    runApp(const MyApp());
    }

    class MyApp extends StatelessWidget {
    const MyApp({super.key});
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        title: 'KickStash',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.deepPurple,
            ).copyWith(secondary: Colors.deepPurple[400]),
            useMaterial3: true,
        ),
        home: MyHomePage(),
        );
    }
    }
    ```

    class MyApp di atas akan memanggil MyHomePage yang berada di `menu.dart` dan menampilkan homepage aplikasi Flutter ini.

    Warna tema aplikasi Flutter ini adalah _deep purple_ dengan _secondary color_ _deep purple 400_ yang di-_define_ di bagian `theme` pada `MyApp`.

## Checklist Tugas

### Tugas 7 — Checklist

-   [x] Membuat sebuah program Flutter baru dengan tema _E-Commerce_ yang sesuai dengan tugas-tugas sebelumnya.
-   [x] Membuat tiga tombol sederhana dengan ikon dan teks untuk:
    -   [x] Melihat daftar produk (`Lihat Daftar Produk`)
    -   [x] Menambah produk (`Tambah Produk`)
    -   [x] Logout (`Logout`)
-   [x] Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (`Lihat Daftar Produk`, `Tambah Produk`, dan `Logout`).
-   [x] Memunculkan `Snackbar` dengan tulisan:
    -   [x] "Kamu telah menekan tombol Lihat Daftar Produk" ketika tombol `Lihat Daftar Produk` ditekan.
    -   [x] "Kamu telah menekan tombol Tambah Produk" ketika tombol `Tambah Produk` ditekan.
    -   [x] "Kamu telah menekan tombol Logout" ketika tombol `Logout` ditekan.
-   [x] Menjawab beberapa pertanyaan berikut pada `README.md` pada _root_folder_.
    -   [x] Jelaskan apa yang dimaksud dengan _stateless widget dan stateful widget_, dan jelaskan perbedaan dari keduanya.
    -   [x] Sebutkan _widget_ apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
    -   [x] Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
    -   [x] Jelaskan perbedaan antara `const` dengan `final`.
    -   [x] Jelaskan bagaimana cara kamu mengimplementasikan _checklist-checklist_ di atas.
-   [x] Melakukan `add`-`commit`-`push` ke suatu repositori baru di GitHub.
