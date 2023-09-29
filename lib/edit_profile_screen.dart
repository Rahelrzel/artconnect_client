import 'package:artconnect/config/colors.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';

class EditProfileScreen extends StatefulHookConsumerWidget {
  const EditProfileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditProfileScreen();
}

class _EditProfileScreen extends ConsumerState<EditProfileScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController aboutController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController worksAtController = TextEditingController();

  void saveChanges() {
    // Implement your logic to save changes here
    String firstName = firstNameController.text;
    String lastName = lastNameController.text;
    String about = aboutController.text;
    String location = locationController.text;
    String worksAt = worksAtController.text;

    // Print the values for demonstration
    print('First Name: $firstName');
    print('Last Name: $lastName');
    print('About: $about');
    print('Location: $location');
    print('Works At: $worksAt');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: primaryColor.shade800,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Color(0xFFf2f2f2),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 150,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            bottom: 50,
                            child: Image.asset('assets/images/art2.png',
                                fit: BoxFit.cover),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 20,
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 4, color: Colors.white),
                                  borderRadius: BorderRadius.circular(900),
                                  color: Colors.white),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    AssetImage('assets/images/art4.jpeg'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Jane Cooper',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 19),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: firstNameController,
                                  decoration:
                                      InputDecoration(labelText: 'First Name'),
                                ),
                              ),
                              SizedBox(width: 16.0),
                              Expanded(
                                child: TextField(
                                  controller: lastNameController,
                                  decoration:
                                      InputDecoration(labelText: 'Last Name'),
                                ),
                              ),
                            ],
                          ),
                          TextField(
                            controller: aboutController,
                            decoration:
                                InputDecoration(labelText: 'About Yourself'),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: locationController,
                                  decoration:
                                      InputDecoration(labelText: 'Location'),
                                ),
                              ),
                              SizedBox(width: 16.0),
                              Expanded(
                                child: TextField(
                                  controller: worksAtController,
                                  decoration:
                                      InputDecoration(labelText: 'Works At'),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16.0),
                          FilledButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    primaryColor.shade700)),
                            onPressed: saveChanges,
                            child: Text('Save Changes'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Security Information',
                            style: TextStyle(
                              color: primaryColor.shade800,
                              fontSize: 24,
                            ),
                          ),
                          TextField(
                            controller: firstNameController,
                            decoration:
                                InputDecoration(labelText: 'Current Password'),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: lastNameController,
                                  decoration: InputDecoration(
                                      labelText: 'New Password'),
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  controller: aboutController,
                                  decoration: InputDecoration(
                                      labelText: 'Confirm Password'),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16.0),
                          FilledButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    primaryColor.shade700)),
                            onPressed: saveChanges,
                            child: Text('Change Password'),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}
