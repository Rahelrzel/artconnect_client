import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';

import '../config/colors.dart';

class ProjectApproval extends StatefulHookConsumerWidget {
  const ProjectApproval({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProjectApprovalState();
}

class _ProjectApprovalState extends ConsumerState<ProjectApproval> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: primaryColor.shade800,
        title: Text(
          'Project Approval',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Color(0xFFf2f2f2),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 250,
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
              decoration: BoxDecoration(
                  color: primaryColor.shade800.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Icon(
                    Icons.download_rounded,
                    size: 50,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Download Project File',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(
                onPressed: () {},
                child: Text(
                  "Approve",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                style: ButtonStyle(
                  // padding: MaterialStatePropertyAll(
                  //   EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                  // ),
                  backgroundColor:
                      MaterialStatePropertyAll(primaryColor.shade700),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              FilledButton(
                onPressed: () {},
                child: Text(
                  'Decline',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        primaryColor.shade700.withOpacity(0.2)),
                    foregroundColor:
                        MaterialStatePropertyAll(primaryColor.shade800)),
              )
            ],
          )
        ],
      ),
    );
  }
}
