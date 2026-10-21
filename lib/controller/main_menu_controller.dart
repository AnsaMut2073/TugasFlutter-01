import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../menu/history.dart';
import '../menu/home.dart';
import '../menu/profile.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;
  void changePage(int index) {
    selectedIndex.value = index;
  }

  // list of page inside menu
  List<Widget> listPages = [
    Home(),
    History(),
    Profile()
  ];
}