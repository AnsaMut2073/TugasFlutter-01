import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:new_project_1/kalkulator_page.dart';
import 'package:new_project_1/login_clone.dart';
import 'package:new_project_1/login_page.dart';
import 'package:new_project_1/pages/kalkulator2_page.dart';
import 'package:new_project_1/pages/login_clone_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: Kalkulator2Page());
  }
}
