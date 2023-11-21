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


---
## ---Tugas 9---
---

## **Pengambilan data JSON dengan/tanpa membuat model terlebih dahulu**
Jika data JSON sederhana dan tidak memerlukan pemrosesan lanjutan, tidak perlu membuat model. Namun, jika data kompleks dan ingin dilakukan operasi lanjutan seperti pemrosesan data, analisis, atau visualisasi yang lebih kompleks, membuat model lebih disarankan

## **Fungsi dari CookieRequest**
CookieRequest berperan dalam mengatur Cookie seperti autentikasi token, mengirim dan menerima Cookie, serta memastikan penyimpanan dan transmisi Cookie yang aman. Membagikan instance CookieRequest ke semua komponen dalam aplikasi Flutter dilakukan untuk menjamin konsistensi data, menyederhanakan pengelolaan Cookie, dan mendukung pengelolaan keamanan Cookie

## **Mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter**
1. Mengambil data JSON untuk pembuatan model
2. Ubah data menjadi objek dart 
3. Menggunakan dan menampilkan data dalam bentuk widget flutter

## **Mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter**
1. User input data akun di aplikasi Flutter
2. Flutter mengirimkan data akun tersebut ke server Django menggunakan HTTP request
3. Server Django menerima data tersebut dan melakukan proses autentikasi
4. Django mengirimkan respons ke Flutter
5. Flutter menampilkan hasil autentikasi

# **Widget yang digunakan dan fungsinya**
1. Scaffold: membuat struktur dasar tampilan aplikasi
2. ListView.builder: membuat daftar dinamis
3. TextFormField: input teks dari user
4. ElevatedButton: tombol aksi
5. FutureBuilder: membangun UI dengan Future

## **Pengimplementasian step by step**
DJANGO
1. Membuat aplikasi Django baru yaitu authentication
2. Install django-cors-headers
3. Tambahkan "authentication" dan "corsheaders" ke dalam INSTALLED_APPS, tambahkan "corsheaders.middleware.CorsMiddleware" ke dalam middleware, dan tambahkan beberapa variabel baru di settings.py
4. Buat views dan urls baru untuk proses login dan logout di dalam aplikasi authentication dan buat routingnya
FLUTTER
1. Install provider dan pbp_django_auth 
2. Ubah StatelessWidget untuk menyediakan CookieRequest menggunakan Provider
3. Buat file bernama login.dart di dalam folder screens dan isi dengan aturan login. Modifikasi widget MaterialApp di dalam main.dart agar menampilkan LoginPage
4. Ambil data JSON dari proyek Django dan terjemahkan ke dalam bahasa Dart lalu tambahkan ke lib/models/product.dart 
5. Install paket "http" untuk melakukan perintah HTTP request
6. Buat file list_product.dart di dalam folder screens dan tambahkan ke dalam widget left_drawer.dart 
7. Buat file product_detail.dart untuk halaman detail tiap item dan lakukan routing di list_product.dart
7. Hubungkan halaman shoplist_form.dart dengan CookieRequest
8. Tambahkan code untuk logout di shop_card.dart