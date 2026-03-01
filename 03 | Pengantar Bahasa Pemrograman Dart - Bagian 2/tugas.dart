void main() {

  for (int angka = 0; angka <= 201; angka++) {

    bool prima = true;

    if (angka < 2) {
      prima = false;
    } else {

      for (int i = 2; i < angka; i++) {
        if (angka % i == 0) {
          prima = false;
          break;
        }
      }

    }

    if (prima) {
      print("Bilangan prima: $angka");
      print("Nama: Adinda Luluk Hanifah");
      print("NIM: 244107060137");
      print("-------------------");
    }

  }

}