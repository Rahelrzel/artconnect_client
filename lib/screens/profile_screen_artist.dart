import 'package:artconnect/config/colors.dart';
import 'package:artconnect/screens/withdraw_money_screen.dart';
import 'package:artconnect/services.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';

import '../edit_profile_screen.dart';
import 'components/About_artist.dart';
import 'components/Reviews.dart';
import 'components/Showcase.dart';

class ArtistProfileScreen extends StatefulHookConsumerWidget {
  const ArtistProfileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ArtistProfileScreen();
}

class _ArtistProfileScreen extends ConsumerState<ArtistProfileScreen> {
  final int rows = 30;
  final int columns = 3;
  final List<String> imageUrls = [
    '',
    'assets/images/art3.png',
    'assets/images/art3.png',
    'assets/images/art3.png',
    'assets/images/art3.png',
    'assets/images/art3.png',
    'assets/images/art3.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        centerTitle: true,
        backgroundColor: primaryColor.shade800,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Color(0xFFf2f2f2),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(
            children: [
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
                          Text(
                            'Artist|For Passion|Omishtu AgriTech',
                            style: TextStyle(
                                color: Color.fromARGB(255, 113, 113, 113)),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              children: [
                                Icon(Icons.location_pin),
                                Text('Addis Ababa, Ethiopia'),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Text('4.5'),
                              RatingBar.builder(
                                itemSize: 15,
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                    const EdgeInsets.symmetric(horizontal: 1.5),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.circle_rounded,
                                  size: 5,
                                  color: Color.fromARGB(255, 139, 139, 139),
                                ),
                              ),
                              Text(
                                '200',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Text('Total Jobs Done'),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.circle_rounded,
                                  size: 5,
                                  color: Color.fromARGB(255, 139, 139, 139),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '1k+',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              Text('Total Jobs Done')
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ProfileCardButtons(
                                    icon: BoxIcons.bx_edit_alt,
                                    onpressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                EditProfileScreen()),
                                      );
                                    },
                                    text: "Edit"),
                                ProfileCardButtons(
                                    icon: BoxIcons.bx_book_bookmark,
                                    onpressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ServicesScreen()),
                                      );
                                    },
                                    text: "Services"),
                                ProfileCardButtons(
                                    icon: BoxIcons.bx_money_withdraw,
                                    onpressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Withdraw()),
                                      );
                                    },
                                    text: "Withdraw"),
                                ProfileCardButtons(
                                    icon: Icons.logout,
                                    onpressed: () {},
                                    text: "Logout"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: <Widget>[
                      ButtonsTabBar(
                        contentPadding: EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: primaryColor.shade800.withOpacity(0.1),
                        ),
                        unselectedBackgroundColor: Colors.transparent,
                        unselectedLabelStyle: TextStyle(
                            color: primaryColor.shade700,
                            fontWeight: FontWeight.w500),
                        labelStyle: TextStyle(
                            color: primaryColor.shade800,
                            fontWeight: FontWeight.w500),
                        tabs: [
                          Tab(
                            text: "About Artist",
                          ),
                          Tab(
                            text: "Showcase",
                          ),
                          Tab(
                            text: "Reviews",
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: <Widget>[
                            AboutArtist(),
                            Showcase(columns: columns, imageUrls: imageUrls),
                            Reviews(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileCardButtons extends StatelessWidget {
  ProfileCardButtons({
    super.key,
    required this.icon,
    required this.onpressed,
    required this.text,
  });
  String text;
  IconData icon;
  Function onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: FilledButton.tonal(
          style: ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.all(0)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
              elevation: MaterialStatePropertyAll(0),
              maximumSize: MaterialStatePropertyAll(Size(69, 60)),
              backgroundColor: MaterialStatePropertyAll(
                  primaryColor.shade800.withOpacity(0.1))),
          onPressed: () {
            onpressed();
          },
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  this.icon,
                  size: 22,
                  color: primaryColor.shade700,
                ),
                Text(
                  this.text,
                  style: TextStyle(
                    color: primaryColor.shade800,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )),
    );
  }
}
