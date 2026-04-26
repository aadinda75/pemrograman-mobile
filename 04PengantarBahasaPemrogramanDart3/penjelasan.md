# Pengantar Bahasa Pemrograman Dart - Bagian 3

### Praktikum 1: Eksperimen Tipe Data List

Pada praktikum ini digunakan struktur data List untuk menyimpan beberapa elemen bertipe String. List bersifat terurut (ordered) dan setiap elemen memiliki index yang dimulai dari 0. Ketika List dicetak menggunakan print(), seluruh isi akan tampil sesuai urutan penyimpanannya.

List juga bersifat mutable, artinya isi elemennya dapat diubah setelah dibuat. Selama tipe data yang dimasukkan sesuai dengan tipe List yang telah ditentukan, program akan berjalan tanpa error. Jika terjadi ketidaksesuaian tipe data, maka akan muncul error karena Dart menerapkan type safety.

### Praktikum 2: Eksperimen Tipe Data Set

Pada langkah pertama praktikum ini, dibuat variabel halogens menggunakan tanda kurung kurawal {} yang berisi beberapa String. Dalam Dart, {} yang langsung berisi nilai tanpa pasangan key–value akan dikenali sebagai Set, sehingga halogens bertipe Set<String>. Saat dijalankan, program akan mencetak seluruh isi Set tersebut dan tidak terjadi error. Perlu diketahui bahwa Set tidak memperbolehkan data duplikat dan tidak menjamin urutan elemen tetap.

Pada bagian berikutnya dibuat tiga variabel, yaitu names1, names2, dan names3. Variabel names1 dengan sintaks <String>{} dan names2 dengan deklarasi Set<String> names2 = {}; sama-sama menghasilkan Set<String> kosong. Namun, var names3 = {}; tanpa penentuan tipe akan dianggap sebagai Map<dynamic, dynamic>, bukan Set. Meskipun ketika dicetak di console ketiganya terlihat sama-sama {}, tipe datanya sebenarnya berbeda.

Sesuai instruksi, nama dan NIM kemudian ditambahkan ke dua variabel Set menggunakan metode .add() untuk menambahkan satu elemen dan .addAll() untuk menambahkan beberapa elemen sekaligus, sedangkan variabel Map tidak digunakan. Jika tipe data sudah ditentukan dengan benar, maka program akan berjalan tanpa error dan menampilkan isi Set yang telah ditambahkan.

### Praktikum 3: Eksperimen Tipe Data Maps
Ketika kode dijalankan, program tidak menghasilkan error karena Dart melakukan type inference secara otomatis terhadap Map. Variabel gifts berisi key bertipe String dengan value campuran antara String dan int, sehingga Dart menganggapnya sebagai Map<String, Object>. Hal yang sama terjadi pada nobleGases, di mana key bertipe int dan value campuran (String dan int) sehingga ditafsirkan sebagai Map<int, Object>. Program tetap berjalan dan menampilkan isi map, tetapi tipe datanya menjadi umum (Object) karena tidak konsisten.

Pada langkah 3, dibuat Map<String, String> dan Map<int, String> yaitu mhs1 dan mhs2, yang berarti semua value harus bertipe String. Jika masih terdapat nilai bertipe int seperti pada langkah sebelumnya, maka akan terjadi error tipe data karena tidak sesuai dengan deklarasi map. Oleh karena itu, semua value perlu diseragamkan menjadi String. Kesimpulannya, dalam penggunaan Map di Dart, tipe key dan value harus konsisten dengan deklarasi agar tidak terjadi kesalahan tipe data saat program dijalankan.

### Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators
Pada langkah 1, program membuat sebuah list list berisi [1, 2, 3], kemudian membuat list2 dengan menambahkan angka 0 di depan isi list menggunakan spread operator (...). Spread operator berfungsi untuk menyebarkan seluruh elemen dari suatu list ke dalam list baru. Saat dijalankan, list tetap berisi [1, 2, 3], sedangkan list2 menjadi [0, 1, 2, 3] dan panjangnya (length) adalah 4. Program berjalan tanpa error karena struktur dan tipe datanya sudah benar.

Pada langkah 3, list1 diubah menjadi [1, 2, null] lalu dibuat list3 menggunakan null-aware spread operator (...?list1). Operator ...? digunakan untuk menghindari error jika list bernilai null. Jika list1 tidak null, maka isinya tetap disebarkan ke dalam list baru. Karena list1 berisi tiga elemen (termasuk null sebagai nilai), maka list3 menjadi [0, 1, 2, null] dan panjangnya 4. Tidak terjadi error karena yang bernilai null adalah elemennya, bukan variabel list-nya.

Pada langkah 4, digunakan collection-if yaitu if (promoActive) 'Outlet' di dalam list. Fitur ini memungkinkan penambahan elemen secara kondisional. Jika promoActive bernilai true, maka 'Outlet' akan ditambahkan ke dalam list nav, sehingga hasilnya ['Home', 'Furniture', 'Plants', 'Outlet']. Jika promoActive bernilai false, maka 'Outlet' tidak dimasukkan dan list hanya berisi ['Home', 'Furniture', 'Plants'].

Pada langkah 5, digunakan collection-if dengan kondisi if (login case 'Manager') 'Inventory'. Ini merupakan pattern matching sederhana yang akan menambahkan 'Inventory' ke dalam nav2 hanya jika nilai variabel login adalah 'Manager'. Jika login bernilai 'Manager', maka elemen tersebut akan muncul di dalam list. Jika bernilai selain itu, misalnya 'Staff', maka 'Inventory' tidak akan ditambahkan.

Pada langkah 6, digunakan collection-for yaitu for (var i in listOfInts) '#$i' untuk membentuk list baru dari hasil perulangan. List listOfInts berisi [1, 2, 3], lalu dibuat listOfStrings yang menghasilkan ['#0', '#1', '#2', '#3'] karena diawali dengan '#0' kemudian hasil iterasi '#1', '#2', dan '#3'. Perintah assert digunakan untuk memastikan bahwa elemen indeks ke-1 bernilai '#1'. Collection-for memudahkan pembuatan list baru berdasarkan list lain tanpa perlu menulis perulangan terpisah, sehingga kode menjadi lebih ringkas dan efisien.

### Praktikum 5: Eksperimen Tipe Data Records
Pada langkah pertama, dibuat variabel record berisi ('first', a: 2, b: true, 'last'), yaitu sebuah record di Dart yang dapat menyimpan beberapa nilai sekaligus — baik posisional maupun bernama. Ketika di-print, seluruh isinya ditampilkan dalam satu baris tanpa error karena sintaksnya valid di Dart 3.

Langkah 3 mendefinisikan fungsi tukar() di luar main() dengan tipe kembalian (int, int). Di dalamnya, record diuraikan lewat destructuring var (a, b) = record, lalu dikembalikan terbalik sebagai (b, a). Saat diuji dengan nilai (10, 20), hasilnya menjadi (20, 10), membuktikan pertukaran nilai berhasil.

Pada langkah 4, variabel mahasiswa dideklarasikan dengan anotasi tipe eksplisit (String, int) sebelum diisi nilai. Ini menunjukkan bahwa Dart mendukung penulisan tipe record secara terpisah dari inisialisasinya, mirip deklarasi variabel biasa. Variabel kemudian diisi dengan nama dan NIM mahasiswa.

Langkah 5 mendemonstrasikan cara mengakses field record: posisional menggunakan .$1 dan .$2, sedangkan bernama menggunakan .a dan .b. Pada variabel mahasiswa3, isi record dimodifikasi agar $1 menyimpan nama dan a menyimpan NIM, sehingga identitas mahasiswa dapat ditampilkan langsung melalui akses field record tersebut.
