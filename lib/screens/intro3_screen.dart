import 'package:artconnect/screens/login.dart';
import 'package:artconnect/screens/withdraw_money_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config/colors.dart';
import '../edit_profile_screen.dart';
import 'chat_screen.dart';
import 'landing_screen.dart';

class Intro3 extends StatelessWidget {
  const Intro3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          SizedBox(height: 100),
          Text(
            'ArtConnect',
            style: GoogleFonts.playfairDisplay(
                color: Color(0xFFFFFFFF),
                fontSize: 45,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Discover Boundless Creativity:\n Connect with Artists, Inspire Imagination, and Unearth Masterpieces \n - All in One Place!",
            style: GoogleFonts.playfairDisplay(
                color: Color(0xFFFFFFFF),
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 250,
          ),
          FilledButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Landing()),
              );
            },
            child: Text(
              "Start Exploring Artwork",
              style: TextStyle(
                  color: Color(0xFF311040),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            style: ButtonStyle(
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              padding: MaterialStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              ),
              backgroundColor:
                  MaterialStatePropertyAll(secondaryColor.shade400),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FilledButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatScreen()),
              );
            },
            child: Text(
              "Join as an Artist",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            style: ButtonStyle(
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              padding: MaterialStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 65, vertical: 20),
              ),
              backgroundColor:
                  MaterialStatePropertyAll(Colors.white.withOpacity(0.05)),
            ),
          ),
        ],
      ),
    );
  }
}
