import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("Profile Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),

            // FOTO & NAMA
            Center(
              child: Column(
                children: [
                  // Foto Profil (pakai gambar dari internet)
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://i.pravatar.cc/150?img=12'),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Anisa Mutiara",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "anisamutiaraz178@email.com",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 32),

            // MENU PENGATURAN
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    _buildMenuItem(
                      icon: Icons.person_outline,
                      title: "Edit Profil",
                      onTap: () {
                        // Aksi edit profil
                      },
                    ),
                    Divider(height: 1),
                    _buildMenuItem(
                      icon: Icons.lock_outline,
                      title: "Ubah Password",
                      onTap: () {
                        // Aksi ubah password
                      },
                    ),
                    Divider(height: 1),
                    _buildMenuItem(
                      icon: Icons.history,
                      title: "Riwayat Pesanan",
                      onTap: () {
                        // Aksi riwayat
                      },
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 16),

            // TOMBOL LOGOUT
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Aksi logout
                  },
                  icon: Icon(Icons.logout, color: Colors.red),
                  label: Text(
                    "Keluar Akun",
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  // Widget bantuan (helper) supaya kode menu gak berulang-ulang
  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(
        title,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      ),
      trailing: Icon(Icons.chevron_right, color: Colors.grey),
      onTap: onTap,
    );
  }
}