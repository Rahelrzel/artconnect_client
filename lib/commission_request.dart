import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'config/colors.dart';

class CommissionRequest extends StatefulHookConsumerWidget {
  const CommissionRequest({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CommissionRequestState();
}

class _CommissionRequestState extends ConsumerState<CommissionRequest> {
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
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
                labelText: 'Service Type',
                labelStyle: TextStyle(color: primaryColor.shade600),
                //  border: OutlineInputBorder(),
              ),
            ),
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
                labelText: '\$ Budget',
                labelStyle: TextStyle(color: primaryColor.shade600),
                //  border: OutlineInputBorder(),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: TextField(
                    // obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                primaryColor.shade800), // Set underline color
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                primaryColor.shade600), // Set underline color
                      ),
                      labelText: 'Estimated Date',
                      labelStyle: TextStyle(color: primaryColor.shade600),
                      //  border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton.filledTonal(
                  style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    ),
                  ),
                  onPressed: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(
                        const Duration(days: 360),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.calendar_month,
                    size: 14,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 135,
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
                    'Other Info',
                    style: TextStyle(
                        color: primaryColor.shade700,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  alignLabelWithHint: false,
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                maxLines: 10,
                minLines: 7,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton(
                  onPressed: () {},
                  child: Text(
                    'Send',
                    style: TextStyle(
                        color: primaryColor.shade800,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          primaryColor.shade700.withOpacity(0.2))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
