# Tugas Praktikum

### 1. Apa itu Functions dalam Dart?
Function adalah blok kode yang bisa dipanggil berkali-kali untuk menjalankan tugas tertentu. Di Dart, function juga merupakan objek sehingga bisa disimpan di variabel atau dikirim ke function lain.

### 2. Jenis-jenis parameter di Functions beserta contoh sintaksnya?
1. Required positional : parameter wajib diisi sesuai urutan: void sapa(String nama)
2. Optional positional : boleh tidak diisi, ditulis dalam []: void sapa(String nama, [String? sapaan])
3. Named parameter : dipanggil pakai nama, ditulis dalam {}: void sapa({required String nama})

### 3. Apa maksud Functions sebagai first-class objects beserta contoh sintaksnya?
Function bisa diperlakukan seperti nilai biasa disimpan ke variabel, dikirim sebagai argumen, atau dikembalikan dari function lain. 
Contoh: var op = kali; lalu cetakHasil(3, 4, op);

### 4. Apa itu Anonymous Functions?
Function tanpa nama yang langsung dibuat di tempat ia digunakan. 

Contoh: 
list.forEach((buah) => print(buah)); 
function (buah) => print(buah) 
tidak punya nama dan bisa langsung dipakai

### 5. Apa perbedaan Lexical scope dan Lexical closures?
Lexical scope membatasi di mana sebuah variabel bisa diakses hanya berlaku di dalam blok tempat variabel itu ditulis. Sementara lexical closure memungkinkan sebuah function tetap bisa menggunakan variabel dari scope luarnya, bahkan setelah scope itu sudah tidak aktif. Jadi kalau scope mengatur batas wilayah sebuah variabel, closure memungkinkan function untuk membawa pulang variabel dari wilayah tersebut.

### 6. Bagaimana cara membuat return multiple value di Functions?
Menggunakan Records di Dart 3. Function mengembalikan beberapa nilai sekaligus dalam satu tipe record, lalu nilainya bisa langsung diurai. 
Contoh: (String, int) getData() => ('Adinda', 244107060137); lalu dipanggil dengan var (nama, nim) = getData();
