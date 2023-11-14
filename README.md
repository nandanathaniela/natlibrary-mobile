# natlibrary

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

---
## ---Tugas 7---
---

## **Perbedaan stateless dan stateful widget**
Stateless widget tidak memiliki keadaan internal yang berubah dan digunakan untuk elemen UI statis, sedangkan stateful widget memiliki keadaan internal yang dapat berubah selama siklus hidup widget dan digunakan untuk elemen UI yang memerlukan pembaruan dinamis berdasarkan interaksi pengguna atau data eksternal. Stateful widget memiliki metode setState yang memungkinkan mereka memperbarui tampilan mereka ketika keadaan berubah, sedangkan stateless widget tidak memiliki kemampuan ini. 

Dalam kedua file yang Anda bagikan (menu.dart dan main.dart), terdapat beberapa widget yang digunakan untuk membangun antarmuka pengguna. Berikut adalah daftar widget yang digunakan dan penjelasan singkat tentang fungsinya:

## **Widget yang digunakan dan fungsinya**
Di dalam file menu.dart:
1. MyHomePage : mewakili halaman utama aplikasi berisi struktur utama aplikasi
2. Scaffold : kerangka kerja dasar yang menyediakan struktur utama untuk halaman aplikasi
3. AppBar : menampilkan judul dan tampilan aplikasi
4. SingleChildScrollView : widget wrapper yang dapat discroll
5. Padding : menambahkan jarak di sekitar elemen-elemen anaknya
6. Column : mengatur elemen-elemen anak secara vertikal dalam kolom
7. GridView.count : menampilkan daftar ShopItem dalam bentuk grid dengan jumlah kolom yang ditentukan
8. ShopCard : mewakili card untuk setiap ShopItem yang dapat diklik, menampilkan Snackbar saat ditekan
Di dalam file main.dart:
1. MyApp : mewakili aplikasi secara keseluruhan
2. MaterialApp : menginisialisasi dan mengatur aplikasi Flutter

## **Pengimplementasian step by step**
1. Buat proyek Flutter baru dengan perintah `flutter create natlibrary`.
2. Buat tiga tombol dengan menambahkan tiga item ShopItem di menu.dart dengan ikon, teks, dan warna yang berbeda
3. Buat widget ShopCard yang akan digunakan untuk menampilkan setiap ShopItem. ShopCard adalah widget yang memiliki ikon dan teks, dan menampilkan Snackbar saat ditekan.
4. Untuk mengimplementasikan snackbar saat tombol ditekan, dibuat function onTap() untuk menampilkan pesan sesuai tombol yang ditekan

---
## ---Tugas 8---
---

## **Perbedaan antara Navigator.push() dan Navigator pushReplacement()**
push() akan menambahkan route baru diatas route yang sudah ada pada atas stack/menambahkan halaman baru di atas halaman saat ini, sedangkan pushReplacement() menggantikan route yang sudah ada pada atas stack dengan route baru tersebut/menghapus halaman yang sedang ditampilkan kepada pengguna dan menggantinya dengan halaman baru

## **Layout widget pada Flutter dan konteks penggunaannya masing-masing**
Card : menampilkan konten dalam bentuk card
GridView : menyusun sejumlah item dalam grid/kolom dan baris
Stack : menumpuk beberapa widget dan menentukan posisi relatif diantaranya
Row : menyusun widget secara horizontal
Column : menyusun widget secara vertikal
Container : mengelompokkan widget dalam kotak tertentu seperti padding/margin

## **Elemen input yang digunakan**
TextFormField untuk mengumpulkam informasi nama buku, harga, dan deskripsi. Digunakan untuk memudahkan validasi input agar tidak kosong atau type nya sesuai.

## **Penerapan clean architecture pada aplikasi Flutter**
Clean architecture membantu memisahkan kode untuk business-logic dengan kode yang berhubungan dengan platform seperti UI, state management, dan sumber data eksternal. clean architecture membagi project ke 3 lapisan:
1. lapisan data&platform : data source
2. lapisan presentasi : UI, dependency injection
3. lapisan domain : entities, usecases, repository

## **Pengimplementasian step by step**
1. menambahkan drawer dengan membuat folder widgets dan file left_drawer.dart didalamnya dengan code yang sesuai kemudian masukan drawer ke menu.dart yg terdiri dari halaman utama, tambah buku, lihat buku
2. membuat form dan memunculkan halaman form untuk tambah buku dg membuat file dan code pada shoplist_form.dart dg 3 elemen input yaitu name,price,description dan diroute dari menu.dart
3. menampilkan popup setelah menekan tombol save pada tambah buku
3. menambahkan fitur navigasi/route pada tombol tambah buku dan lihat buku di halaman utama dengan menggunakan navigator.push()
4. membuat list untuk menyimpan buku yang dtambahkan kemudian membuat halaman baru untuk lihat list buku dg membuat file showlist.dart