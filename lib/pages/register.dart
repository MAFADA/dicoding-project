import 'package:flutter/material.dart';
// perintah buat instal font google = flutter pub add google_fonts
import 'package:google_fonts/google_fonts.dart';
import 'package:modul_digital_flutter/pages/login.dart';

void main() {
  runApp(const Register());
}

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              toolbarHeight: 150,
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              // leading: const BackButton(color: Colors.black),
              leading: IconButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_outlined),
              ),
              leadingWidth: 100,
              title: Column(
                children: [
                  Text(
                    "Register",
                    style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Create a new account!",
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            body: Stack(children: <Widget>[
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
                  color: Color(0xff0F9BDC),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Padding(
                        padding:
                            EdgeInsets.only(top: 50.0, left: 50, right: 50),
                        child: Form(
                          label: 'Fist Name',
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 20.0, left: 50, right: 50),
                        child: Form(
                          label: 'Last Name',
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 20.0, left: 50, right: 50),
                        child: Form(
                          label: 'Userame',
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 20.0, left: 50, right: 50),
                        child: Form(
                          label: 'Email',
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 20.0, left: 50, right: 50),
                        child: Form(
                          label: 'Password',
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
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
                                animationDuration:
                                    const Duration(microseconds: 200),
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                side: const BorderSide(
                                    width: 3, color: Colors.white)),
                            onPressed: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Login();
                              }));
                            },
                            child: Text(
                              "Sign Up",
                              style: GoogleFonts.inter(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account?",
                              style: GoogleFonts.inter(color: Colors.white),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const Login();
                                  }));
                                },
                                child: Text(
                                  "Login.",
                                  style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ])));
  }
}

class Form extends StatelessWidget {
  const Form({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.white),
          ),
          hintText: label,
          hintStyle:
              GoogleFonts.inter(color: const Color.fromARGB(255, 97, 97, 97)),
          filled: true,
          fillColor: Colors.white),
      onChanged: (value) {
        //
      },
    );
  }
}
