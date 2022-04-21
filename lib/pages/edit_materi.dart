import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modul_digital_flutter/pages/navbar.dart';

void main() => runApp(const EditMateri());

class EditMateri extends StatelessWidget {
  const EditMateri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 100,
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
            title: Text(
              "Edit Materi",
              style: GoogleFonts.inter(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          body: Stack(children: <Widget>[
            Container(
              width: double.infinity,
              height: 345,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 88, 88, 88),
                      blurRadius: 20.0,
                      offset: Offset(0, 0))
                ],
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 15, 155, 220),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0, left: 50, right: 50),
                      child: Form(
                        label: 'Judul Materi',
                        initValue: "Bab 1 Basic Flutter",
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0, left: 50, right: 50),
                      child: FormTextArea(
                        label: 'Deskripsi Teori',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0, left: 50, right: 50),
                      child: Form(
                        label: 'Upload Gambar',
                        initValue: "gambar1.png",
                      ),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(top: 20, left: 50, right: 50),
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
                            Navigator.pop(context);
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return const Navbar();
                            }));
                          },
                          child: Text(
                            "Save",
                            style: GoogleFonts.inter(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(top: 20, left: 50, right: 50),
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
                            Navigator.pop(context);
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return const Navbar();
                            }));
                          },
                          child: Text(
                            "Cancel",
                            style: GoogleFonts.inter(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ])),
    );
  }
}

class Form extends StatelessWidget {
  const Form({
    Key? key,
    required this.label,
    required this.initValue,
  }) : super(key: key);

  final String label;
  final String initValue;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      initialValue: initValue,
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

class FormTextArea extends StatelessWidget {
  const FormTextArea({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: null,
      keyboardType: TextInputType.text,
      initialValue:
          "What is Flutter, and how is it different? Being Flutter app developers, you need to just remember this — Flutter was built to work for any device with a screen and works with iOS and Android,Web and Desktop (Mac, Windows, and Ubuntu) — Even support PWA, Auto, Raspberry Pi (POC stage)\n",
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
