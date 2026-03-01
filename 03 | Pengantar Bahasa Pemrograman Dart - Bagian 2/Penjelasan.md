# Laporan Praktikum Control Flow dan Perulangan Dart
### Praktikum 1 – Menerapkan Control Flows (if/else)

Pada percabangan if/else, program memeriksa kondisi secara berurutan. Jika kondisi pertama bernilai salah (false), maka program akan melanjutkan ke kondisi berikutnya hingga menemukan kondisi yang benar (true). Ketika suatu kondisi bernilai benar, blok perintah di dalamnya akan dijalankan. Jika terdapat percabangan lain yang terpisah dan kondisinya juga benar, maka perintah dapat dijalankan kembali sehingga output dapat muncul lebih dari satu kali.

Kesalahan yang sering terjadi adalah menggunakan tipe data selain boolean pada kondisi if, misalnya menuliskan if(test) padahal test bertipe String. Hal ini menyebabkan error karena dalam Dart kondisi pada if harus bernilai boolean (true atau false). Perbaikannya adalah dengan membandingkan nilai tersebut terlebih dahulu, misalnya test == "true", atau mengubah tipe datanya menjadi tipe bool.

### Praktikum 2 – Menerapkan Perulangan while dan do-while

Pada perulangan while, kondisi diperiksa terlebih dahulu sebelum blok perintah dijalankan. Jika kondisi bernilai benar, maka perulangan akan terus berjalan sampai kondisi menjadi salah. Jika variabel yang digunakan dalam kondisi belum dideklarasikan, maka akan terjadi error karena variabel tidak dikenali. Perbaikannya adalah dengan mendeklarasikan variabel terlebih dahulu sebelum digunakan serta memastikan kondisi ditulis dengan benar.

Pada perulangan do-while, blok perintah dijalankan terlebih dahulu kemudian kondisi diperiksa. Artinya, minimal satu kali perulangan pasti terjadi meskipun kondisi awalnya salah. Jika terjadi error, biasanya disebabkan oleh variabel yang belum dibuat atau kesalahan penulisan sintaks. Perbaikannya tetap menggunakan struktur do-while, namun memastikan variabel telah dideklarasikan dan kondisi bernilai boolean.

### Praktikum 3 – Menerapkan Perulangan for dan break-continue

Pada perulangan for, program melakukan inisialisasi nilai awal, memeriksa kondisi, menjalankan perintah, lalu memperbarui nilai variabel secara berulang. Jika variabel tidak dideklarasikan, penulisan huruf besar dan kecil tidak konsisten, atau tidak terdapat increment, maka akan terjadi error. Perbaikannya adalah dengan mendeklarasikan variabel menggunakan tipe data yang sesuai dan memastikan terdapat proses increment atau decrement agar perulangan berjalan dengan benar.

Perintah break digunakan untuk menghentikan seluruh perulangan ketika kondisi tertentu terpenuhi. Sedangkan continue digunakan untuk melewati satu iterasi dan langsung melanjutkan ke iterasi berikutnya. Jika kondisi pada break atau continue salah secara logika, maka hasil program tidak akan sesuai 

### Tugas Praktikum – Menampilkan Bilangan Prima (0–201)

Program melakukan perulangan dari angka 0 sampai 201 dan memeriksa setiap angka apakah termasuk bilangan prima. Jika angka kurang dari 2, maka angka tersebut bukan bilangan prima. Untuk angka 2 atau lebih, program membagi angka tersebut dengan bilangan lain mulai dari 2 hingga sebelum angka tersebut. Jika ditemukan pembagian dengan sisa 0, maka angka tersebut bukan bilangan prima. Jika tidak ditemukan pembagi lain selain 1 dan dirinya sendiri, maka angka tersebut termasuk bilangan prima.

Setiap kali bilangan prima ditemukan, program menampilkan bilangan tersebut beserta nama dan NIM yang telah ditentukan. Dengan demikian, program tidak hanya menampilkan bilangan prima, tetapi juga menunjukkan identitas sebagai bagian dari tugas praktikum.
