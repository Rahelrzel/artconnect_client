import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../config/colors.dart';
import 'artwork_screen.dart';

class NotificationPage extends StatefulHookConsumerWidget {
  const NotificationPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NotificationPageState();
}

class _NotificationPageState extends ConsumerState<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf2f2f2),
      appBar: AppBar(
        leading: SizedBox(),
        centerTitle: true,
        backgroundColor: primaryColor.shade800,
        foregroundColor: Colors.white,
        title: Text(
          'Notification',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              NotificationItem(
                  imageUrl: 'assets/images/art3.png',
                  notificationType: 'Commission Accepted!',
                  notificationDate: '4 days ago',
                  notificationBody:
                      'Your creative journey begins. Start working on the project now.'),
              NotificationItem(
                  imageUrl: 'assets/images/art3.png',
                  notificationType: 'Job Finished!',
                  notificationDate: '3 days ago',
                  notificationBody:
                      'Your artwork is complete. Mark it as finished to proceed.'),
              NotificationItem(
                  imageUrl: 'assets/images/art3.png',
                  notificationType: 'Commission Accepted!',
                  notificationDate: '4 days ago',
                  notificationBody:
                      'Your creative journey begins. Start working on the project now.'),
              NotificationItem(
                  imageUrl: 'assets/images/art3.png',
                  notificationType: 'Job Finished!',
                  notificationDate: '3 days ago',
                  notificationBody:
                      'Your artwork is complete. Mark it as finished to proceed.'),
              NotificationItem(
                  imageUrl: 'assets/images/art3.png',
                  notificationType: 'Commission Accepted!',
                  notificationDate: '4 days ago',
                  notificationBody:
                      'Your creative journey begins. Start working on the project now.'),
              NotificationItem(
                  imageUrl: 'assets/images/art3.png',
                  notificationType: 'Job Finished!',
                  notificationDate: '3 days ago',
                  notificationBody:
                      'Your artwork is complete. Mark it as finished to proceed.'),
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  NotificationItem({
    required this.imageUrl,
    required this.notificationBody,
    required this.notificationDate,
    required this.notificationType,
    super.key,
  });
  String imageUrl;
  String notificationType;
  String notificationDate;
  String notificationBody;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(this.imageUrl),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.notificationType,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  Text(
                    this.notificationDate,
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 5),
                  Text(
                    this.notificationBody,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
