import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginClone extends StatefulWidget {
  const LoginClone({super.key});

  @override
  State<LoginClone> createState() => _LoginCloneState();
}

class _LoginCloneState extends State<LoginClone> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: Center( // <--- Nambahin Center di sini biar melebarkan ruang horizontal
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // <--- Pakai crossAxis buat horizontal
          children: [
            Image.asset(
              'assets/Spotify_Full_Logo_RGB_White.png',
              width: 160,
              height: 160,
            ),
            Text(
              "Log in to continue.",
              style: GoogleFonts.plusJakartaSans(
                fontSize: 32, // Ukuran disesuaikan agar lebih mantap seperti judul Spotify
                color: Colors.white,
                fontWeight: FontWeight.w700, // Tebal tegas khas heading Spotify
                letterSpacing: -0.5, // Sedikit dirapatkan agar makin mirip
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: const TextStyle(color: Colors.white), // Warna teks saat diketik
                      decoration: InputDecoration(
                        hintText: 'Email or username',
                        hintStyle: const TextStyle(
                          color: Color(0xFFA7A7A7), // Warna abu-abu terang untuk hint
                          fontSize: 14,
                        ),
                        filled: true,
                        fillColor: const Color(0xFF3E3E3E), // Warna abu-abu background box khas Spotify

                        // Ikon di sebelah kanan
                        suffixIcon: const Icon(
                          Icons.mail_outline, // Ikon amplop kecil
                          color: Color(0xFFA7A7A7),
                          size: 20,
                        ),

                        // Bikin sudut kotak agak tumpul (rounded)
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4), // Atau 8 kalau mau lebih membulat
                          borderSide: BorderSide.none, // Hilangkan garis pinggir bawaan
                        ),

                        // Padding bagian dalam kotak biar nggak terlalu tebal/tipis
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                          color: Color(0xFFA7A7A7),
                          fontSize: 14,
                        ),
                        filled: true,
                        fillColor: const Color(0xFF3E3E3E),

                        // Ikon di sebelah kanan
                        suffixIcon: const Icon(
                          Icons.visibility_off_outlined,
                          color: Color(0xFFA7A7A7),
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
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Bikin teks di kiri & switch di kanan
                children: [
                  // 1. Teks "Remember me"
                  const Text(
                    "Remember me",
                    style: TextStyle(
                      color: Color(0xFFA7A7A7),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  // 2. Widget Switch Hijau khas Spotify
                  Switch(
                    value: _rememberMe,
                    activeColor: Colors.white, // Warna bulatan (thumb) pas aktif
                    activeTrackColor: const Color(0xFF1DB954), // Warna hijau khas Spotify pas aktif
                    inactiveThumbColor: Colors.grey[400], // Warna bulatan pas mati
                    inactiveTrackColor: const Color(0xFF3E3E3E), // Warna track pas mati
                    onChanged: (bool newValue) {
                      setState(() {
                        _rememberMe = newValue; // Mengubah status ON/OFF saat diklik
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0), // Menyesuaikan jarak pinggir
              child: SizedBox(
                width: double.infinity, // Memaksa tombol melebar memenuhi padding
                height: 48, // Tinggi tombol biar pas dan nyaman diklik
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Warna background putih
                    elevation: 0, // Menghilangkan bayangan biar pipih rapi
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24), // Bikin bentuk kapsul khas Spotify
                    ),
                  ),
                  child: Text(
                    "LOG IN",
                    style: GoogleFonts.plusJakartaSans(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      letterSpacing: 1.0, // Memberi sedikit jarak antar huruf biar tegas
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Row(
                children: [
                  // 1. Garis Sebelah Kiri
                  const Expanded(
                    child: Divider(
                      color: Color(0xFF3E3E3E), // Warna abu-abu redup khas Spotify
                      thickness: 1,            // Ketebalan garis
                    ),
                  ),

                  // 2. Teks "OR" di Tengah
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      "OR",
                      style: GoogleFonts.plusJakartaSans(
                        color: const Color(0xFFA7A7A7), // Warna teks abu-abu terang
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),

                  // 3. Garis Sebelah Kanan
                  const Expanded(
                    child: Divider(
                      color: Color(0xFF3E3E3E), // Warna harus sama dengan garis kiri
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF3b5998),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.facebook,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "LOG IN WITH FACEBOOK",
                        style: GoogleFonts.plusJakartaSans(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: GoogleFonts.plusJakartaSans(
                      color: Color(0xFFA7A7A7),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "SIGN UP",
                    style: GoogleFonts.plusJakartaSans(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0x00A7A7A7),
              ),
              child:
                Text(
                  "RESET PASSWORD",
                  style: GoogleFonts.plusJakartaSans(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}