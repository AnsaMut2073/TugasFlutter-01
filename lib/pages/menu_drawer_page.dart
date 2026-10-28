import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project_1/controller/menu_drawer_controller.dart'; // Sesuaikan path-nya

class MenuDrawerPage extends StatelessWidget {
  MenuDrawerPage({super.key});

  // Inisialisasi controller
  final menuDrawerController = Get.put(MenuDrawerController());

  @override
  Widget build(BuildContext context) {
    // Obx bakal "ngintip" selectedIndex.value di dalam controller kamu
    return Obx(() => Scaffold(
      appBar: AppBar(title: const Text("Aplikasi Makanan")),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Menu Navigasi', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Home'),
              // Membaca selectedIndex.value
              selected: menuDrawerController.selectedIndex.value == 0,
              onTap: () {
                // Memanggil fungsi changePage
                menuDrawerController.changePage(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.history_outlined),
              title: const Text('History'),
              selected: menuDrawerController.selectedIndex.value == 1,
              onTap: () {
                menuDrawerController.changePage(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_2_outlined),
              title: const Text('Profile'),
              selected: menuDrawerController.selectedIndex.value == 2,
              onTap: () {
                menuDrawerController.changePage(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      // listPages dari controller kamu langsung dipakai di sini
      body: IndexedStack(
        index: menuDrawerController.selectedIndex.value,
        children: menuDrawerController.listPages,
      ),
    ));
  }
}