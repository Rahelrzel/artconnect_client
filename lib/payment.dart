import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'config/colors.dart';

class Payment extends StatefulHookConsumerWidget {
  const Payment({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PaymentState();
}

class _PaymentState extends ConsumerState<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: primaryColor.shade800,
        title: Text(
          'Commission Request',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Color(0xFFf2f2f2),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: primaryColor.shade800.withOpacity(0.2),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your Artwork Project Is Ready For Review!',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Before proceeding , please ensur thet you have completed the payment for the project. once the payment is confirmed, you\'ll gain access to the artwork files and can experience the beauty of the artwork ',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FilledButton(
                      onPressed: () {},
                      child: Text(
                        'Procces Payment',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(primaryColor.shade700)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
