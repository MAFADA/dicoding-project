import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modul_digital_flutter/pages/login.dart';
import 'package:modul_digital_flutter/pages/register.dart';

class Pilihan extends StatelessWidget {
  const Pilihan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 170,
              margin: const EdgeInsets.only(top: 170, left: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Flutterin Aja!",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  Text(
                    "Kelompok H-1",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.inter(
                        color: Colors.grey[700], fontSize: 15),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xff0F9BDC),
                      onPrimary: Colors.white,
                      onSurface: Colors.blue,
                      shadowColor: Colors.black,
                      minimumSize: const Size(double.infinity, 60),
                      alignment: Alignment.center,
                      animationDuration: const Duration(microseconds: 200),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      side: const BorderSide(width: 3, color: Colors.white)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Login();
                    }));
                  },
                  child: Text(
                    "Login",
                    style: GoogleFonts.inter(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  )),
            ),
            Container(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xff0F9BDC),
                      onPrimary: Colors.white,
                      onSurface: Colors.blue,
                      shadowColor: Colors.black,
                      minimumSize: const Size(double.infinity, 60),
                      alignment: Alignment.center,
                      animationDuration: const Duration(microseconds: 200),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      side: const BorderSide(width: 3, color: Colors.white)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Register();
                    }));
                  },
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.inter(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
