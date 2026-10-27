import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // Data dummy untuk item yang bisa di-swipe
    final List<Map<String, dynamic>> headerItems = [
      {'title': 'Belajar Flutter', 'color': Colors.blue},
      {'title': 'Widget Dasar', 'color': Colors.green},
      {'title': 'Layout', 'color': Colors.orange},
      {'title': 'State Management', 'color': Colors.purple},
      {'title': 'API & Database', 'color': Colors.red},
    ];

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ================= HEADER =================
            Container(
              padding: EdgeInsets.symmetric(vertical: 16),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Judul header
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Materi Belajar',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  // List horizontal yang bisa di-swipe
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      itemCount: headerItems.length,
                      itemBuilder: (context, index) {
                        final item = headerItems[index];
                        return Container(
                          width: 140,
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            color: item['color'] as Color,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(12),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              item['title'] as String,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            // ================= BODY =================
            Expanded(
              child: Center(
                child: Text(
                  "Ini Home Page",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}