import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url  = Uri.parse('https://wa.me/+250793246060');
final Uri _url2  = Uri.parse('https://www.linkedin.com/in/nick-lemy/');

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.teal,
          body: ListView(
            padding: EdgeInsetsDirectional.all(16),
              children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 30,
              children: [
                SizedBox(
                  height: 84,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('images/me.jpeg'),
                    ),
                    Text(
                      'Nick-Lemy K',
                      style: GoogleFonts.pacifico(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      'FLUTTER DEVELOPER',
                      style: GoogleFonts.coda(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    spacing: 20,
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      Text('+250 793 246 060',
                          style: TextStyle(color: Colors.teal, fontSize: 18)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    spacing: 20,
                    children: [
                      Icon(Icons.mail, color: Colors.teal),
                      Text('n.kayiranga@alustudent.com',
                          style: TextStyle(color: Colors.teal, fontSize: 18)),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 30,
                  children: [
                    FloatingActionButton(
                      backgroundColor: Colors.white,
                      onPressed: _launch2,
                      child: Image(image: AssetImage('images/linkedin.png',), height: 30,),
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.white,
                      onPressed: _launchUrl,
                      child: Image(image: AssetImage('images/whatsapp.png',), height: 30,),
                    ),
                  ],
                ),
              ],
            ),
                SizedBox(
                  height: 100,
                ),
          ]),
        ));
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

Future<void> _launch2() async {
  if (!await launchUrl(_url2)) {
    throw Exception('Could not launch $_url2');
  }
}
