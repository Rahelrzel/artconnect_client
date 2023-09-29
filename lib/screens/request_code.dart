import 'package:artconnect/screens/verified_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../config/colors.dart';
import 'login.dart';

class Request_code extends StatelessWidget {
  const Request_code({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf2f2f2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 50),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'ArtConnect',
                style: GoogleFonts.playfairDisplay(
                    color: primaryColor.shade800,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Verification Code',
                style: TextStyle(
                  color: primaryColor.shade800,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  //fontStyle: FontStyle.italic
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Check your e-mail and try to enter the verification code that has been sent to you.',
                style: TextStyle(
                  color: primaryColor.shade800.withOpacity(0.6),
                  fontSize: 16,
                  //fontWeight: FontWeight.bold,
                  //fontStyle: FontStyle.italic
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Enter Code",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 200,
              ),
              Row(
                children: [],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FilledButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Verified()),
                      );
                    },
                    child: Text(
                      "Verify",
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
                        EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                      ),
                      backgroundColor:
                          MaterialStatePropertyAll(primaryColor.shade800),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text(
                    'Return to Login',
                    style: TextStyle(
                        color: primaryColor.shade800,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
