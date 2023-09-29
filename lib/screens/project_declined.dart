import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../config/colors.dart';

class ProjectDeclined extends StatefulHookConsumerWidget {
  const ProjectDeclined({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProjectDeclinedState();
}

class _ProjectDeclinedState extends ConsumerState<ProjectDeclined> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: primaryColor.shade800,
        title: Text(
          'Project Declined',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Color(0xFFf2f2f2),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 500,
              color: primaryColor.shade800.withOpacity(0.1),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        color: primaryColor.shade600), // Set underline color
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: primaryColor.shade600), // Set underline color
                  ),
                  label: Text(
                    'Declination letter',
                    style: TextStyle(
                        color: primaryColor.shade700,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  alignLabelWithHint: false,
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                maxLines: 50,
                minLines: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'The artist will recive and try to update the project as your requirement',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 30,
            ),
            FilledButton(
              style: ButtonStyle(
                  elevation: MaterialStatePropertyAll(0),
                  backgroundColor:
                      MaterialStatePropertyAll(primaryColor.shade800)),
              onPressed: () {},
              child: Text(
                'Send',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
