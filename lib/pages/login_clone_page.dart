import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/custom_textfield.dart';
import '../components/custom_button.dart';

class LoginClonePage extends StatelessWidget {
  const LoginClonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/Spotify_Full_Logo_RGB_White.png',
                width: 160,
                height: 160,
              ),
              Text(
                "Log in to continue.",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                child: Column(
                  children: [
                    // Komponen reusable
                    SizedBox(height: 20),
                    CustomTextfield(
                      txtController: TextEditingController(),
                      myHint: 'Email or username',
                      myIcon: Icons.mail_outline,
                    ),
                    SizedBox(height: 20),
                    CustomTextfield(
                      txtController: TextEditingController(),
                      myHint: 'Password',
                      myIcon: Icons.visibility_off_outlined,
                    ),
                    SizedBox(height: 15),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Remember me",
                            style: TextStyle(
                              color: Color(0xFFA7A7A7),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          // switch statis
                          Switch(
                            value: false,
                            activeColor: Colors.white,
                            activeTrackColor: const Color(0xFF1DB954),
                            inactiveThumbColor: Colors.grey[400],
                            inactiveTrackColor: const Color(0xFF3E3E3E),
                            onChanged: null,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    CustomButton(
                      myText: "LOG IN",
                      myTextColor: Colors.black,
                      myColor: Colors.white,
                      onPressed: () {},
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        "OR",
                        style: GoogleFonts.plusJakartaSans(
                          color: const Color(0xFFA7A7A7),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    CustomButton(
                      myText: "LOG IN WITH FACEBOOK",
                      onPressed: () {},
                      myColor: const Color(0xFF3b5998),
                      myTextColor: Colors.white,
                      myIcon: Icons.facebook,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
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
            ],
          ),
        ),
      ),
    );
  }
}