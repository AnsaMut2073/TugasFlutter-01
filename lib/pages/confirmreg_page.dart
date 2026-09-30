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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Column(
              children: [
                Text(
                  "Name : ${controller.name}",
                  style: TextStyle(fontSize: 25, color: Colors.indigo),
                ),
                Text(
                  "Email : ${controller.email}",
                  style: TextStyle(fontSize: 25, color: Colors.indigo),
                ),
                Text(
                  "WA Number : ${controller.wa_number}",
                  style: TextStyle(fontSize: 25, color: Colors.indigo),
                ),
                Text(
                  "Address : ${controller.address}",
                  style: TextStyle(fontSize: 25, color: Colors.indigo),
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
          ),
        ],
      ),
    );
  }
}