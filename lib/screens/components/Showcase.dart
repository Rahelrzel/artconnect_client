import 'package:artconnect/config/colors.dart';
import 'package:artconnect/screens/upload_screen.dart';
import 'package:flutter/material.dart';

import '../artwork_screen.dart';

class Showcase extends StatelessWidget {
  const Showcase({
    super.key,
    required this.columns,
    required this.imageUrls,
  });

  final int columns;
  final List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: columns,
        ),
        itemCount: imageUrls.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Container(
              margin: EdgeInsets.all(3.0),
              child: FilledButton(
                style: ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.all(2)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.grey.withOpacity(0.5))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UploadPage(),
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.black.withOpacity(0.5),
                      size: 30,
                    ),
                    Text(
                      "Upload Artwork",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            );
          }
          return GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ArtworkDisplay(artImageUrl: imageUrls[index]),
                )),
            child: Hero(
              tag: 'i$index',
              child: Container(
                margin: EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
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
    );
  }
}
