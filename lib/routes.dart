import 'package:get/get.dart';
import 'package:new_project_1/pages/detail_makanan_page.dart';
import 'package:new_project_1/pages/list_makanan_page.dart';
import 'package:new_project_1/pages/registration_page.dart';
import 'package:new_project_1/pages/confirmreg_page.dart';

class Routes {
  // list variabel nama halaman
  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";
  static const String list_makanan = "/list_makanan";
  static const String detail_makanan = "/detail_makanan";
  // others pages here

  // untuk kita daftarkan di main dart, isinya array page yang kita punya
  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirm_registration, page: () => ConfirmRegPage()),
    GetPage(name: list_makanan, page: () => ListMakananPage()),
    GetPage(name: detail_makanan, page: () => DetailMakananPage()),
  ];
}