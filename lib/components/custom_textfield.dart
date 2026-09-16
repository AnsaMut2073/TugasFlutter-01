import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  // Variabel yang diperlukan
  final TextEditingController txtController;
  final String myHint;
  final IconData myIcon; // Buat ikon di kanan (email/password)

  const CustomTextfield({
    super.key,
    required this.txtController,
    required this.myHint,
    required this.myIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: myHint,
        hintStyle: const TextStyle(
          color: Color(0xFFA7A7A7),
          fontSize: 14,
        ),
        filled: true,
        fillColor: const Color(0xFF3E3E3E),
        suffixIcon: Icon(
          myIcon,
          color: const Color(0xFFA7A7A7),
          size: 20,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
      ),
    );
  }
}