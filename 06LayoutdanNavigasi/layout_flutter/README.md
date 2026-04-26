# Praktikum 1: Membangun Layout di Flutter
Membuat struktur dasar tampilan aplikasi Flutter berupa title row yang terdiri dari judul wisata, lokasi, dan rating bintang. Konsep utama yang dipakai adalah Row (untuk menyusun widget secara horizontal) dan Column (untuk menyusun widget secara vertikal). Widget Expanded digunakan agar kolom teks mengisi sisa ruang yang tersedia di dalam Row, sehingga icon bintang dan angka rating tetap di pojok kanan.

# Praktikum 2: Implementasi Button Row
Membuat baris tombol CALL, ROUTE, SHARE menggunakan Row dengan 3 kolom yang masing-masing berisi Icon dan Text. Dibuat method _buildButtonColumn() agar kode tidak berulang (reusable). MainAxisAlignment.spaceEvenly digunakan agar jarak antar tombol merata. Warna tombol mengikuti warna primer tema aplikasi.

# Praktikum 3: Implementasi Text Section
Menambahkan paragraf deskripsi wisata menggunakan widget Text yang dibungkus Container dengan padding 32 di semua sisi. Property softWrap: true memastikan teks otomatis turun ke baris baru jika sudah mencapai batas lebar layar.

# Praktikum 4: Implementasi Image Section
Menambahkan gambar wisata di bagian paling atas tampilan. Gambar disimpan di folder images/ dan didaftarkan di pubspec.yaml agar bisa diakses aplikasi. Widget Image.asset digunakan untuk menampilkan gambar dengan BoxFit.cover agar gambar memenuhi area yang ditentukan. Body diubah dari Column menjadi ListView agar konten bisa di-scroll ketika layar terlalu kecil.
