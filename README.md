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

