import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  var hasil = 0.obs;

  // method tambah kurang kali bagi
  void tambah(int angka1, int angka2) {
    int hasilTambah = angka1 + angka2;
    hasil.value = hasilTambah;
    Get.snackbar(
      "Hasil Tambah",
      "Hasilnya ${hasilTambah}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
  
  void kurang(int angka1, int angka2) {
    int hasilKurang = angka1 - angka2;
    hasil.value = hasilKurang;
    Get.snackbar(
      "Hasil Kurang",
      "Hasilnya ${hasilKurang}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}