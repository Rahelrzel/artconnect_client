import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'config/colors.dart';

class AddService extends StatefulHookConsumerWidget {
  const AddService({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddServiceState();
}

class _AddServiceState extends ConsumerState<AddService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: primaryColor.shade800,
        title: Text(
          'Add Service',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Color(0xFFf2f2f2),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
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
                labelText: 'Price',
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
                labelText: 'Estimated Delivery',
                labelStyle: TextStyle(color: primaryColor.shade600),
                //  border: OutlineInputBorder(),
              ),
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
                    'Additional info:',
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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FilledButton(
                  onPressed: () {},
                  child: Text('Save'),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(primaryColor.shade700)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
