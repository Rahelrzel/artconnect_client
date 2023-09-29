import 'package:artconnect/config/colors.dart';
import 'package:artconnect/screens/artwork_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Explore extends StatefulHookConsumerWidget {
  const Explore({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ExploreState();
}

class _ExploreState extends ConsumerState<Explore> {
  List<String> items = [
    'Filter',
    'Painting',
    'Sclupture',
    'String Art',
    'Paper Art'
  ];
  String? selectedItem = 'Filter';
  final int rows = 30;
  final int columns = 2;
  final List<String> imageUrls = [
    'assets/images/art3.png',
    'assets/images/art5.jpeg',
    'assets/images/art4.jpeg',
    'assets/images/art8.png',
    'assets/images/paint2.jpeg',
    'assets/images/print.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf2f2f2),
      appBar: AppBar(
        leading: SizedBox(),
        centerTitle: true,
        title: Text(
          'Explore Artwork',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: primaryColor.shade800,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: primaryColor.shade800.withOpacity(0.1),
              ),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.search,
                    color: primaryColor.shade800,
                  ),
                  hintText: 'Search artist name...',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: primaryColor.shade800,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Expanded(child: SizedBox()),
                  Icon(Icons.filter_list),
                  DropdownButton<String>(
                    dropdownColor: Colors.white,
                    value: selectedItem,
                    items: items
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: TextStyle(fontSize: 16),
                              ),
                            ))
                        .toList(),
                    onChanged: (item) => setState(() => selectedItem = item),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: columns,
                ),
                itemCount: imageUrls.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ArtworkDisplay(
                              artImageUrl: imageUrls[index], id: 'ex$index'),
                        )),
                    child: Hero(
                      tag: 'ex$index',
                      child: Container(
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          image: DecorationImage(
                            image: AssetImage(imageUrls[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
