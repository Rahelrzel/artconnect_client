import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../config/colors.dart';

class ProjectRate extends StatefulHookConsumerWidget {
  const ProjectRate({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProjectRateState();
}

class _ProjectRateState extends ConsumerState<ProjectRate> {
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: primaryColor.shade800,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rate Project',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    RatingBar.builder(
                      itemSize: 50,
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 1.5),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: secondaryColor.shade500,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    FilledButton(
                      onPressed: () {},
                      child: Text(
                        'Rate',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Colors.white,
                          ),
                          foregroundColor:
                              MaterialStatePropertyAll(primaryColor.shade800)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 250,
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
                    'Give a review to the artist',
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
                minLines: 20,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
          ],
        ),
      ),
    );
  }
}
