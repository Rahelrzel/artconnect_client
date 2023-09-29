import 'package:artconnect/config/colors.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'intro2_screen.dart';
import 'intro3_screen.dart';

class IntroScreen extends HookConsumerWidget {
  IntroScreen({super.key});

  final pages = [Intro1(), Intro2(), Intro3()];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    var current = useState(0);
    return Scaffold(
      body: ConcentricPageView(
        colors: [primaryColor.shade800, Colors.white, primaryColor.shade800],
        radius: screenWidth * 0.2,
        // curve: Curves.ease,

        itemCount: pages.length,
        onChange: (page) {
          current.value = page;
        },
        nextButtonBuilder: current.value == pages.length - 1
            ? null
            : (context) => Padding(
                  padding: const EdgeInsets.only(left: 3), // visual center
                  child: Icon(
                    Icons.navigate_next,
                    size: screenWidth * 0.08,
                  ),
                ),
        itemBuilder: (index) {
          final page = pages[index];
          return SafeArea(
            child: page,
          );
        },
      ),
    );
  }
}

class Intro2 extends StatelessWidget {
  const Intro2({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(38.0),
                child: Image.asset(
                  "assets/images/art8.png",
                  height: 400,
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                "Creating Bonds, One Brushstroke at a Time \n - Art Connect! ",
                style: GoogleFonts.playfairDisplay(
                    color: primaryColor.shade800,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
                textAlign: TextAlign.right,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
