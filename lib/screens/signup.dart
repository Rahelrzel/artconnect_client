import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';

import '../config/colors.dart';
import 'login.dart';

class Signup extends HookConsumerWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var accountType = useState('client');
    return Scaffold(
      backgroundColor: Color(0xFFf2f2f2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 50),
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
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
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: primaryColor.shade800,
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
                              EdgeInsets.symmetric(
                                  horizontal: 35, vertical: 15),
                            ),
                          ),
                        ),
                        FilledButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Signup()),
                            );
                          },
                          child: Text(
                            "Signup",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(primaryColor.shade800),
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            padding: MaterialStatePropertyAll(
                              EdgeInsets.symmetric(
                                  horizontal: 35, vertical: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Account Type',
                style: TextStyle(
                    color: primaryColor.shade800,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            accountType.value = 'client';
                          },
                          child: Text(
                            "Client",
                            style: TextStyle(
                                color: primaryColor.shade800,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                accountType.value == "client"
                                    ? primaryColor.shade800.withOpacity(0.1)
                                    : Colors.transparent),
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            padding: MaterialStatePropertyAll(
                              EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            accountType.value = 'artist';
                          },
                          child: Text(
                            "Artist",
                            style: TextStyle(
                                color: primaryColor.shade800,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                accountType.value == "artist"
                                    ? primaryColor.shade800.withOpacity(0.1)
                                    : Colors.transparent),
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            padding: MaterialStatePropertyAll(
                              EdgeInsets.symmetric(horizontal: 50, vertical: 2),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
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
                  labelText: 'First Name',
                  labelStyle: TextStyle(color: primaryColor.shade600),
                  // border: OutlineInputBorder(),
                ),
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
                  labelText: 'Last Name',
                  labelStyle: TextStyle(color: primaryColor.shade600),
                  // border: OutlineInputBorder(),
                ),
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
                  labelText: 'Password',
                  labelStyle: TextStyle(color: primaryColor.shade600),
                  // border: OutlineInputBorder(),
                ),
              ),
              // SizedBox(height: 16.0),
              TextField(
                // obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: primaryColor.shade800), // Set underline color
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: primaryColor.shade600), // Set underline color
                  ),
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(color: primaryColor.shade600),
                  //  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FilledButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text(
                      "Register",
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
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    color: primaryColor.shade800,
                    onPressed: () {},
                    icon: Icon(BoxIcons.bxl_twitter),
                  ),
                  IconButton(
                    color: primaryColor.shade800,
                    onPressed: () {},
                    icon: Icon(BoxIcons.bxl_instagram),
                  ),
                  IconButton(
                    color: primaryColor.shade800,
                    onPressed: () {},
                    icon: Icon(BoxIcons.bxl_linkedin),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
