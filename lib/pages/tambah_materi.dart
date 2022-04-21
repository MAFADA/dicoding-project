import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const TambahMateri());

class TambahMateri extends StatelessWidget {
  const TambahMateri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 150,
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              "Add Module",
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
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 40.0, left: 50, right: 50),
                  child: Form(
                    label: 'Title Module',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 50, right: 50),
                  child: FormTextArea(
                    label: 'Description Module',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 50, right: 50),
                  child: Form(
                    label: 'Upload Picture',
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
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
                          side:
                              const BorderSide(width: 3, color: Colors.white)),
                      onPressed: () {},
                      child: Text(
                        "Add",
                        style: GoogleFonts.inter(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
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

class FormTextArea extends StatelessWidget {
  const FormTextArea({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 5,
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
