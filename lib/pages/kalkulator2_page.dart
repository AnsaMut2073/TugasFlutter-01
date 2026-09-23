import 'package:flutter/material.dart';
import 'package:new_project_1/components/custom_textfield.dart';
import 'package:new_project_1/controller/kalkulator_controller.dart';
import 'package:get/get.dart';

class Kalkulator2Page extends StatelessWidget {
  Kalkulator2Page({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtAngka1 = TextEditingController();
    TextEditingController txtAngka2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text("kalkulator")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Column(
              children: [
                CustomTextfield(txtController: txtAngka1, myHint: "input angka 1"),
                SizedBox(height: 8),
                CustomTextfield(txtController: txtAngka2, myHint: "input angka 2"),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        String input1 = txtAngka1.text.trim();
                        String input2 = txtAngka2.text.trim();

                        // Cek kosong
                        if (input1.isEmpty || input2.isEmpty) {
                          Get.snackbar(
                            "Error",
                            "Kedua angka harus diisi!",
                            snackPosition: SnackPosition.BOTTOM,
                            backgroundColor: Colors.red,
                            colorText: Colors.white,
                          );
                          return;
                        }

                        // Cek apakah angka valid
                        int? angka1 = int.tryParse(input1);
                        int? angka2 = int.tryParse(input2);

                        if (angka1 == null || angka2 == null) {
                          Get.snackbar(
                            "Error",
                            "Input harus berupa angka!",
                            snackPosition: SnackPosition.BOTTOM,
                            backgroundColor: Colors.red,
                            colorText: Colors.white,
                          );
                          return;
                        }

                        controller.tambah(angka1, angka2);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        "Tambah",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {
                        String input1 = txtAngka1.text.trim();
                        String input2 = txtAngka2.text.trim();

                        // Cek kosong
                        if (input1.isEmpty || input2.isEmpty) {
                          Get.snackbar(
                            "Error",
                            "Kedua angka harus diisi!",
                            snackPosition: SnackPosition.BOTTOM,
                            backgroundColor: Colors.red,
                            colorText: Colors.white,
                          );
                          return;
                        }

                        // Cek apakah angka valid
                        int? angka1 = int.tryParse(input1);
                        int? angka2 = int.tryParse(input2);

                        if (angka1 == null || angka2 == null) {
                          Get.snackbar(
                            "Error",
                            "Input harus berupa angka!",
                            snackPosition: SnackPosition.BOTTOM,
                            backgroundColor: Colors.red,
                            colorText: Colors.white,
                          );
                          return;
                        }

                        controller.kurang(angka1, angka2);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        "Kurang",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Obx(
                      () => Text(
                    controller.hasil.toString(),
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
