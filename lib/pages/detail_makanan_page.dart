import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project_1/models/makanan_model.dart';

class DetailMakananPage extends StatelessWidget {
  DetailMakananPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MakananModel makanan = Get.arguments as MakananModel;

    return Scaffold(
      appBar: AppBar(title: Text(makanan.namaMakanan)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              makanan.gambarUrl,
              width: double.infinity,
              height: 220,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 220,
                  color: Colors.grey[300],
                  child: Center(
                    child: Icon(Icons.broken_image, size: 60),
                  ),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    makanan.namaMakanan,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Rp. " + makanan.hargaMakanan,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 12),

                  // Rating
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 4),
                      Text(
                        makanan.rating.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "(" + makanan.review.length.toString() + " ulasan)",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Divider(height: 32),

                  // Deskripsi
                  Text(
                    "Deskripsi",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Text(makanan.deskripsi),
                  SizedBox(height: 20),

                  // Review
                  Text(
                    "Review",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Column(
                    children: makanan.review.map((r) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.person, size: 18, color: Colors.grey),
                            SizedBox(width: 8),
                            Expanded(child: Text(r)),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}