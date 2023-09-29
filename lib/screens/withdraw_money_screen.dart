import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../config/colors.dart';

class Withdraw extends StatefulHookConsumerWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WithdrawState();
}

class _WithdrawState extends ConsumerState<Withdraw> {
  List<String> items = ['Select Your Bank', 'item2', 'item3', 'item4'];
  String? selectedItem = 'Select Your Bank';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: primaryColor.shade800,
        title: Text(
          'Withdraw Money',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Color(0xFFf2f2f2),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.green),
                        color: Colors.green.withOpacity(0.2)),
                    child: Column(
                      children: [
                        Text(
                          'Current Balance',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '1000ETB',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ))
              ],
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
                labelText: 'FullName*',
                labelStyle: TextStyle(color: primaryColor.shade600),
                //  border: OutlineInputBorder(),
              ),
            ),
            DropdownButton<String>(
              dropdownColor: Colors.white,
              hint: Text('Select Your Bank'),
              value: selectedItem,
              items: items
                  .map((Services) => DropdownMenuItem<String>(
                        value: Services,
                        child: Text(
                          Services,
                          style: TextStyle(
                              fontSize: 16, color: primaryColor.shade700),
                        ),
                      ))
                  .toList(),
              onChanged: (Services) => setState(() => selectedItem = Services),
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
                labelText: 'Account No.',
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
                labelText: 'Amount ',
                labelStyle: TextStyle(color: primaryColor.shade600),
                //  border: OutlineInputBorder(),
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
                  child: Text(
                    "\$Withdraw",
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
          ],
        ),
      ),
    );
  }
}

class LocalImageContainer extends StatelessWidget {
  final String imagePath;

  LocalImageContainer({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
