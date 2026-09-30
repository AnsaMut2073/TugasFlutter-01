import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project_1/components/custom_button.dart';
import 'package:new_project_1/components/custom_textfield.dart';
import 'package:new_project_1/routes.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtNoWA = TextEditingController();
    TextEditingController txtAddress = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Registration Page")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Column(
              children: [
                CustomTextfield(
                    txtController: txtNama,
                    myHint: "Name"
                ),
                SizedBox(height: 8),
                CustomTextfield(
                    txtController: txtEmail,
                    myHint: "Email"
                ),
                SizedBox(height: 8),
                CustomTextfield(
                    txtController: txtNoWA,
                    myHint: "WA Number"
                ),
                SizedBox(height: 8),
                CustomTextfield(
                    txtController: txtAddress,
                    myHint: "Address"
                ),
                SizedBox(height: 30),
                CustomButton(
                    myText: "Send",
                    onPressed: () {
                      // get to untuk pindah
                      // argument untuk kirim data
                      // get off
                      Get.toNamed(
                        Routes.confirm_registration,
                        arguments: {
                          'name': txtNama.text.toString(),
                          'email': txtEmail.text.toString(),
                          'wa_number': txtNoWA.text.toString(),
                          'address': txtAddress.text.toString()
                        },
                      );
                    },
                    myColor: Colors.blueGrey,
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
