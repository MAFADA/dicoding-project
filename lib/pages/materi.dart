import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Materi extends StatefulWidget {
  const Materi({Key? key}) : super(key: key);

  @override
  State<Materi> createState() => _MateriState();
}

class _MateriState extends State<Materi> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 120,
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: IconButton(
              icon: const Icon(Icons.bookmark_add),
              color: Colors.black,
              onPressed: () {},
            ),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 0),
        children: [
          Stack(alignment: Alignment.topCenter, children: [
            Container(
              margin: const EdgeInsets.only(top: 0),
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://miro.medium.com/max/1200/1*IJQEzXjt9u57vrRvqxIMfA.jpeg'),
                  // fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: heightScreen,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 281.0),
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 88, 88, 88),
                    blurRadius: 20.0,
                    offset: Offset(0, -10))
              ]),
            ),
            Container(
              height: heightScreen,
              width: 350,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 220.0),
              padding: const EdgeInsets.all(20.0),
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
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      child: const Text(
                        "Basic Flutter\n",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    child: Text(
                      "What is Flutter, and how is it different? Being Flutter app developers, you need to just remember this — Flutter was built to work for any device with a screen and works with iOS and Android,Web and Desktop (Mac, Windows, and Ubuntu) — Even support PWA, Auto, Raspberry Pi (POC stage)\n",
                      style:
                          GoogleFonts.inter(fontSize: 14, color: Colors.black),
                    ),
                  )),
                  Expanded(
                    child: Container(
                      child: Text(
                        "Flutter is relatively straightforward to set up and depending on what OS you’re using. The reason we ask that you setup Flutter before Dart is because when you install Flutter, you install Dart too, and while you can separately install Dart, it would be an unnecessary step. Flutter will decide which Dart version will be used, so installing different Dart version will be ambiguous as well.\n",
                        style: GoogleFonts.inter(
                            fontSize: 14, color: Colors.black),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    child: Text(
                      'Flutter uses Dart language to build Apps. To understand why Flutter uses dart, check out my previous blog and down to the section — How Flutter was born. Flutter and Chrome use the same rendering engine — SKIA. Instead of interacting with native APIs, it controls every pixel on the screen, which gives it the much necessary freedom from the legacy baggage as well as the performance it has.',
                      style:
                          GoogleFonts.inter(fontSize: 14, color: Colors.black),
                    ),
                  ))
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
