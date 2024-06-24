import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromARGB(255, 6, 228, 191), Colors.white],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            "About app",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              CircleAvatar(
                radius: 120, // Increased radius for a larger image
                backgroundImage: AssetImage('assets/images/profil.png'),
              ),
              SizedBox(height: 20),
              Text(
                "Muhammad Gofur",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Teknik Informatika C",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 80),
              Center(
                child: Text(
                  "notesappmobile",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              SizedBox(height: 180),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.instagram),
                    onPressed: () {
                      launch(
                          'https://www.instagram.com/muhammd.gofur?igsh=MWR4NHF3eWNzdDR4bA==');
                    },
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.twitter),
                    onPressed: () {
                      launch(
                          'https://x.com/muhammad_gpr?t=vFYu8yTY-M2c8HvJbHdFKQ&s=09');
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.facebook),
                    onPressed: () {
                      launch('https://www.facebook.com/muhamad.gofur.37');
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
