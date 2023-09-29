import 'package:artconnect/config/colors.dart';
import 'package:artconnect/models/user_model.dart';
import 'package:artconnect/screens/intro_screen.dart';
import 'package:artconnect/screens/landing_screen.dart';
import 'package:artconnect/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: primaryColor,
          accentColor: secondaryColor,
        ),
        textTheme: GoogleFonts.ibmPlexSansTextTheme(),
      ),
      home:
          //  UserState.data== null?const Login():Landing()
          Scaffold(
        body: IntroScreen(),
      ),
    );
  }
}
