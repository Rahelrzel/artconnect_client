import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro1 extends StatelessWidget {
  const Intro1({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      child: Column(
        children: [
          Image.asset(
            "assets/images/art7.png",
            fit: BoxFit.fitHeight,
            width: size.width,
            height: size.height * .6,
          ),
          Text(
            "Creating Bonds, One Brushstroke at a Time \n - Art Connect! ",
            style: GoogleFonts.playfairDisplay(
                color: Color(0xFFFFFFFF),
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
            textAlign: TextAlign.right,
          ),
        ],
      ),
    );
  }
}
