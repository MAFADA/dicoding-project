import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modul_digital_flutter/pages/materi.dart';

import 'edit_materi.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              toolbarHeight: 200,
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(
                "Home",
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              bottom: PreferredSize(
                preferredSize: const Size(double.infinity, 0),
                child: Container(
                  margin: const EdgeInsets.only(
                      top: 5, left: 15, right: 15, bottom: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.blue)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.blue),
                        ),
                        hintText: 'Search',
                        hintStyle: GoogleFonts.inter(
                            color: const Color.fromARGB(255, 97, 97, 97)),
                        filled: true,
                        fillColor: Colors.white),
                  ),
                ),
              ),
            ),
            body: ListView(
              children: const <Widget>[
                MyCard(bab: "BAB 1", title: "Basic Code"),
                MyCard(bab: "BAB 2", title: "Basic Code"),
                MyCard(bab: "BAB 3", title: "Basic Code"),
                MyCard(bab: "BAB 4", title: "Basic Code"),
                MyCard(bab: "BAB 5", title: "Basic Code"),
                MyCard(bab: "BAB 6", title: "Basic Code"),
                MyCard(bab: "BAB 7", title: "Basic Code"),
                MyCard(bab: "BAB 8", title: "Basic Code"),
                MyCard(bab: "BAB 9", title: "Basic Code"),
                MyCard(bab: "BAB 10", title: "Basic Code"),
              ],
            )));
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
    required this.title,
    required this.bab,
  }) : super(key: key);

  final String title;
  final String bab;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      elevation: 2.0,
      margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
      child: ListTile(
        leading: ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 44,
              minHeight: 44,
              maxWidth: 64,
              maxHeight: 64,
            ),
            child: const Image(
              image: NetworkImage(
                  'https://miro.medium.com/max/1200/1*IJQEzXjt9u57vrRvqxIMfA.jpeg'),
            )),
        title: Text(
          bab,
          style: GoogleFonts.inter(fontSize: 14, color: Colors.white),
        ),
        subtitle:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            title,
            style: GoogleFonts.inter(fontSize: 10, color: Colors.white),
          ),
        ]),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const Materi();
          }));
        },
        trailing: Wrap(
          spacing: 12,
          children: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const EditMateri();
                  }));
                },
                icon: Icon(Icons.edit)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
                color: Theme.of(context).errorColor),
          ],
        ),
      ),
    );
  }
}
