import 'package:flutter/material.dart';
// perintah buat instal font google = flutter pub add google_fonts
import 'package:google_fonts/google_fonts.dart';
import 'package:modul_digital_flutter/pages/login.dart';

// void main() {
//   runApp(const LupaPassword());
// }

class LupaPassword extends StatelessWidget {
  const LupaPassword({Key? key}) : super(key: key);

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
              title: const Icon(
                Icons.flutter_dash_outlined,
                color: Color(0xff0F9BDC),
                size: 100,
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
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 50.0, left: 50, right: 50),
                        child: Text(
                          "Change Password",
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "Create New Password",
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.only(top: 40.0, left: 50, right: 50),
                        child: Form(
                          label: 'Email / Username',
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.only(top: 20.0, left: 50, right: 50),
                        child: Form(
                          label: 'New Password',
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.only(top: 20.0, left: 50, right: 50),
                        child: Form(
                          label: 'Confirm New Password',
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
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
                              "Change Password",
                              style: GoogleFonts.inter(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
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
