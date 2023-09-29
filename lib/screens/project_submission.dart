import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';

import '../config/colors.dart';

class ProjectSubmission extends StatefulHookConsumerWidget {
  const ProjectSubmission({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProjectSubmissionState();
}

class _ProjectSubmissionState extends ConsumerState<ProjectSubmission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: primaryColor.shade800,
        title: Text(
          'Project Submission',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Color(0xFFf2f2f2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Text(
              'Congratulations on completing your latest artistic project!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'To share your masterpiece with the client, kindly upload the completed project as a zip file using the button below. Rest assured, the client will gain access to the files only after completing the payment.',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'In case the client has any feedback or requests changes, you will be prompted to make adjustments to ensure their satisfaction.',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
              decoration: BoxDecoration(
                  color: primaryColor.shade800.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(6)),
              child: Column(
                children: [
                  Icon(
                    Icons.cloud_upload_outlined,
                    size: 50,
                  ),
                  Text(
                    'Drag and drop project here',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FilledButton(
                    onPressed: () {},
                    child: Text(
                      'Add Artwork',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            primaryColor.shade700.withOpacity(0.2)),
                        foregroundColor:
                            MaterialStatePropertyAll(primaryColor.shade800)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            FilledButton(
              onPressed: () {},
              child: Text(
                "Submit Project",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              style: ButtonStyle(
                padding: MaterialStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                ),
                backgroundColor:
                    MaterialStatePropertyAll(primaryColor.shade700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
