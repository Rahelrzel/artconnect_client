import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({
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
                radius: 30,
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
                    Text(
                      'Artist|For Passion|Omishtu AgriTech',
                      style:
                          TextStyle(color: Color.fromARGB(255, 113, 113, 113)),
                    ),
                    SizedBox(height: 5),
                    RatingBar.builder(
                      ignoreGestures: true,
                      itemSize: 15,
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 1.5),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ],
                ),
              ),
              Text(
                '4 days ago',
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
              'I was absolutely blown away by the talent and professionalism of [artist\'s name]. I commissioned a custom portrait from them and could not be more impressed with the final result.'),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
