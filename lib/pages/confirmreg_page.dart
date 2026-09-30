import 'package:flutter/material.dart';
import 'package:new_project_1/components/custom_button.dart';
import 'package:new_project_1/controller/confirmreg_controller.dart';
import 'package:get/get.dart';

class ConfirmRegPage extends StatelessWidget {
  ConfirmRegPage({super.key});

  final controller = Get.put(ConfirmregController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Confirm Registration")),
      body: Column(
        children: [
          Text(
            "Nama ${controller.nama}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),

          CustomButton(
              myText: "Okay",
              onPressed: () {
                Get.back();
              },
              myColor: Colors.lightGreen,
              myTextColor: Colors.white
          ),
        ],
      ),
    );
  }
}