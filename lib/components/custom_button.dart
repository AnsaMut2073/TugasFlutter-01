import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String myText;
  final VoidCallback onPressed;
  final Color myColor;
  final Color myTextColor;
  final IconData? myIcon;

  const CustomButton({
    super.key,
    required this.myText,
    required this.onPressed,
    required this.myColor,
    required this.myTextColor,
    this.myIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: myColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Kalau myIcon diisi, tampilkan ikonnya
            if (myIcon != null) ...[
              Icon(
                myIcon,
                color: myTextColor,
                size: 20,
              ),
              const SizedBox(width: 10), // Jarak antara ikon dan teks
            ],
            // Teks tombol
            Text(
              myText,
              style: GoogleFonts.plusJakartaSans(
                color: myTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                letterSpacing: 1.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}