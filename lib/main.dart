import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: StatefulBuilder(
            builder: (context, setState) {
              final TextEditingController userController =
                  TextEditingController();
              final TextEditingController passController =
                  TextEditingController();
              String message = "";

              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Logo
                  Icon(Icons.person, size: 80),

                  // Kullanıcı adı
                  TextField(
                    controller: userController,
                    decoration: InputDecoration(
                      labelText: "Kullanıcı Adı",
                      labelStyle: GoogleFonts.poppins(),
                      border: OutlineInputBorder(),
                    ),
                    style: GoogleFonts.poppins(),
                  ),

                  // Şifre
                  TextField(
                    controller: passController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Şifre",
                      labelStyle: GoogleFonts.poppins(),
                      border: OutlineInputBorder(),
                    ),
                    style: GoogleFonts.poppins(),
                  ),

                  // Login Butonu
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (userController.text == "admin" &&
                            passController.text == "1234") {
                          message = "Giriş başarılı";
                        } else {
                          message = "Giriş başarısız";
                        }
                      });
                    },
                    child: Text(
                      "Login",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // Mesaj
                  Text(message, style: GoogleFonts.poppins(fontSize: 16)),

                  // Sosyal ikonlar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.g_mobiledata, size: 40),
                      SizedBox(width: 20),
                      Icon(Icons.facebook, size: 40),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    ),
  );
}
