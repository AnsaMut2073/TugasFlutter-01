import 'package:get/get.dart';
import 'package:new_project_1/pages/detail_makanan_page.dart';
import 'package:new_project_1/pages/list_makanan_page.dart';
import 'package:new_project_1/pages/main_menu_page.dart';
import 'package:new_project_1/pages/registration_page.dart';
import 'package:new_project_1/pages/confirmreg_page.dart';

import 'menu/history.dart';
import 'menu/home.dart';
import 'menu/profile.dart';

class Routes {
  // list variabel nama halaman
  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";
  static const String list_makanan = "/list_makanan";
  static const String detail_makanan = "/detail_makanan";
  static const String main_menu = "/main_menu";
  static const String home = "/home";
  static const String history = "/history";
  static const String profile = "/profile";
  // others pages here

  // untuk kita daftarkan di main dart, isinya array page yang kita punya
  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirm_registration, page: () => ConfirmRegPage()),
    GetPage(name: list_makanan, page: () => ListMakananPage()),
    GetPage(name: detail_makanan, page: () => DetailMakananPage()),
    GetPage(name: main_menu, page: () => MainMenuPage()),
    GetPage(name: home, page: () => Home()),
    GetPage(name: history, page: () => History()),
    GetPage(name: history, page: () => Profile())
  ];
}