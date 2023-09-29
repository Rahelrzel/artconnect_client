import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';

import '../config/colors.dart';
import 'components/ReviewItem.dart';
import 'landing_screen.dart';

class ArtworkDisplay extends StatefulHookConsumerWidget {
  ArtworkDisplay({
    super.key,
    required this.artImageUrl,
    this.id,
  });
  String artImageUrl;
  String? id = '0';
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ArtworkDisplayState();
}

class _ArtworkDisplayState extends ConsumerState<ArtworkDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf2f2f2),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor.shade800,
        foregroundColor: Colors.white,
        title: Text(
          'Artwork',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                // height: 300,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: Offset(0, 2),
                        blurRadius: 10)
                  ],
                  //color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Hero(
                  tag: widget.id ?? '0',
                  child: Image.asset(
                    widget.artImageUrl,
                    fit: BoxFit.cover,
                    height: 420,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFf2f2f2),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                ),
                // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
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
                            size: 26,
                          ),
                          SizedBox(
                            width: 5,
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
                                fontSize: 16,
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
                            size: 26,
                          ),
                          SizedBox(
                            width: 5,
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
                                fontSize: 16,
                                color: primaryColor.shade700,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  TagItem(text: "#WallArt"),
                  TagItem(text: "#Graffiti"),
                  TagItem(text: "#Colored"),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              const Text(
                  "Within these walls, a world of graffiti art flourishes, splashing colors and creative , making this house a masterpice."),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: primaryColor.shade800.withOpacity(0.1),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 2),
                          hintText: 'Add a comment',
                          hintStyle: TextStyle(
                            fontSize: 18,
                            color: primaryColor.shade800.withOpacity(0.5),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Iconsax.arrow_up_3,
                        color: primaryColor.shade800,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              CommentItem(),
              CommentItem(),
              CommentItem(),
            ],
          ),
        ),
      ),
    );
  }
}

class CommentItem extends StatelessWidget {
  const CommentItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/art3.png'),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jane Cooper',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'I was absolutely blown away by the talent and professionalism of [artist\'s name]. I commissioned a custom portrait from them and could not be more impressed with the final result.',
                      style: TextStyle(fontSize: 13),
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
      ),
    );
  }
}

class TagItem extends StatelessWidget {
  TagItem({
    required this.text,
    super.key,
  });
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Text(
        this.text,
        style: TextStyle(
            fontSize: 14,
            color: primaryColor.shade700,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
