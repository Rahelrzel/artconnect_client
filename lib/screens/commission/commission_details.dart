import 'package:artconnect/config/colors.dart';
import 'package:artconnect/screens/chat_screen.dart';
import 'package:artconnect/screens/commission/components/about_commission.dart';
import 'package:artconnect/screens/commission/components/project_progress.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';

import '../project_approval.dart';
import '../project_submission.dart';

class CommissionDetails extends HookConsumerWidget {
  const CommissionDetails({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: AppBar(
        title: const Text('Commission Details'),
        centerTitle: true,
        backgroundColor: primaryColor.shade800,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChatScreen(),
                  ));
            },
            icon: const Icon(Iconsax.messages),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProjectApproval(),
                  ));
            },
            icon: const Icon(Iconsax.emoji_normal),
          ),
        ],
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonsTabBar(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: primaryColor.shade800.withOpacity(0.1),
                    ),
                    unselectedBackgroundColor: Colors.transparent,
                    unselectedLabelStyle: TextStyle(
                      color: primaryColor.shade700,
                      fontWeight: FontWeight.w500,
                    ),
                    labelStyle: TextStyle(
                      color: primaryColor.shade800,
                      fontWeight: FontWeight.w500,
                    ),
                    tabs: const [
                      Tab(
                        text: 'Additional Information',
                      ),
                      Tab(
                        text: 'Project Progress',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  AboutCommission(),
                  ProjectProgress(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
