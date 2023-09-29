import 'package:artconnect/screens/request_code.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config/colors.dart';
import 'login.dart';

class Forget_password extends StatelessWidget {
  const Forget_password({super.key});

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
                'Forget Password\?',
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
                'You can request a password reset token for ArtConnect. It will be sent to an e-mail address registered with your account.',
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
              TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: primaryColor.shade600), // Set underline color
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: primaryColor.shade600), // Set underline color
                  ),
                  labelText: 'Email',
                  labelStyle: TextStyle(color: primaryColor.shade600),
                  // border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FilledButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Request_code()),
                      );
                    },
                    child: Text(
                      "Request Code",
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
                  onPressed: () {},
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
