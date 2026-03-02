// Fungsi tukar() di luar main (Langkah 3)
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  // Langkah 1 & 2 - Record dasar
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  // Langkah 3 - Pakai fungsi tukar()
  var angka = (10, 20);
  print(angka);         
  var hasil = tukar(angka);
  print(hasil);         

  // Langkah 4 - Record type annotation + isi nama & NIM
  (String, int) mahasiswa;
  mahasiswa = ('Adinda Luluk Hanifah', 244107060137); 
  print(mahasiswa); 

  // Langkah 5 - Akses field record
  var mahasiswa2 = ('first', a: 2, b: true, 'last');
  print(mahasiswa2.$1);
  print(mahasiswa2.a);  
  print(mahasiswa2.b);  
  print(mahasiswa2.$2); 

  // Langkah 5 - Ganti dengan nama & NIM kamu
  var mahasiswa3 = ('Adinda Luluk Hanifah', a: 244107060137, b: true, 'last');
  print(mahasiswa3.$1); 
  print(mahasiswa3.a);  
}