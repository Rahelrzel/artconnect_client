import 'package:artconnect/screens/commission/commission_list_screen.dart';
import 'package:artconnect/screens/explore_screen.dart';
import 'package:artconnect/screens/profile_screen_artist.dart';
import 'package:artconnect/screens/profile_screen_client.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:icons_plus/icons_plus.dart';

import '../config/colors.dart';
import 'artwork_screen.dart';
import 'notification.dart';

class Landing extends StatefulWidget {
  Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int selectedIndex = 0;
  // ignore: prefer_final_fields
  static List<Widget> _widgetOptions = <Widget>[
    LandingPage(),
    Explore(),
    CommissionListScreen(),
    NotificationPage(),
    ArtistProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf2f2f2),
      body: _widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: Container(
        height: 60,
        child: GNav(
          padding: EdgeInsets.all(5),
          tabMargin: EdgeInsets.all(4),
          color: primaryColor.shade700,
          gap: 8,
          iconSize: 30,
          backgroundColor: Colors.white,
          tabBackgroundColor: primaryColor.shade700,
          activeColor: Colors.white,
          tabs: [
            GButton(
              icon: Icons.home_outlined,
              text: 'Home',
              onPressed: () {},
            ),
            GButton(
              icon: Icons.explore_outlined,
              text: 'Explore',
            ),
            GButton(
              icon: BoxIcons.bx_bookmark_alt,
              text: 'Commission',
            ),
            GButton(
              icon: Icons.notifications_outlined,
              text: 'Notification',
            ),
            GButton(
              icon: Icons.person_2_outlined,
              text: 'Profile',
            ),
          ],
          selectedIndex: selectedIndex,
          onTabChange: (index) {
            setState(
              () {
                selectedIndex = index;
              },
            );
          },
        ),
      ),
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({
    super.key,
  });

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ).copyWith(top: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ArtConnect',
                  style: GoogleFonts.playfairDisplay(
                      color: primaryColor.shade800,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_outlined),
                  style: ButtonStyle(iconSize: MaterialStatePropertyAll(30)),
                  color: primaryColor.shade800,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: primaryColor.shade800.withOpacity(0.1),
              ),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search, color: primaryColor.shade800),
                  hintText: 'Search artist name...',
                  hintStyle:
                      TextStyle(fontSize: 18, color: primaryColor.shade800),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FilledButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Landing()),
                      );
                    },
                    child: Text(
                      "Recent",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 16,
                      ),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                      ),
                      backgroundColor:
                          MaterialStatePropertyAll(primaryColor.shade800),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FilledButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Landing()),
                      );
                    },
                    child: Text(
                      "Tranding",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: primaryColor.shade800,
                        fontSize: 16,
                      ),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                      ),
                      backgroundColor: MaterialStatePropertyAll(
                          primaryColor.shade800.withOpacity(0.1)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FilledButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Landing()),
                      );
                    },
                    child: Text(
                      "Top Artists",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: primaryColor.shade800,
                        fontSize: 16,
                      ),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                      ),
                      backgroundColor: MaterialStatePropertyAll(
                          primaryColor.shade800.withOpacity(0.1)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FilledButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Landing()),
                      );
                    },
                    child: Text(
                      "Popular",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: primaryColor.shade800,
                        fontSize: 16,
                      ),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                      ),
                      backgroundColor: MaterialStatePropertyAll(
                          primaryColor.shade800.withOpacity(0.1)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Featured Artists',
                    style: TextStyle(
                        color: primaryColor.shade800,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 250,
                    child: ListView.separated(
                      itemCount: 20,
                      separatorBuilder: (context, index) => SizedBox(
                        width: 20,
                      ),
                      itemBuilder: (context, index) => FeaturedArtistCard(),
                      scrollDirection: Axis.horizontal,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Top Rated Artworks',
              style: TextStyle(
                  color: primaryColor.shade800,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            TopRate(),
            TopRate(),
            TopRate(),
          ],
        ),
      ),
    );
  }
}

class TopRate extends StatelessWidget {
  const TopRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  ArtworkDisplay(artImageUrl: 'assets/images/art3.png'),
            ));
      },
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 300,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: Image.asset(
                'assets/images/art3.png',
                fit: BoxFit.cover,
                height: 300,
              ),
            ),
            LikeComment(),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

class LikeComment extends StatelessWidget {
  const LikeComment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  LineAwesome.heart,
                  color: primaryColor.shade700,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '2K',
                  style: TextStyle(
                      fontSize: 14,
                      color: primaryColor.shade700,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  ' Hearts',
                  style: TextStyle(
                      fontSize: 14,
                      color: primaryColor.shade700,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  BoxIcons.bx_comment,
                  color: primaryColor.shade700,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '2K',
                  style: TextStyle(
                      fontSize: 14,
                      color: primaryColor.shade700,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  ' Comments',
                  style: TextStyle(
                      fontSize: 14,
                      color: primaryColor.shade700,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FeaturedArtistCard extends StatelessWidget {
  const FeaturedArtistCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ClientProfileScreen(),
          )),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: [
            Image.asset(
              "assets/images/art3.png",
              height: 250,
              width: 200,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jane Cooper',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Addis Ababa, Ethiopia',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 10),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: secondaryColor.shade500,
                        ),
                        Text(
                          '4.2',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.3)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
