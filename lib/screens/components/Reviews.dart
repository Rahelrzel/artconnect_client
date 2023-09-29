import 'package:flutter/material.dart';

import 'ReviewItem.dart';

class Reviews extends StatelessWidget {
  const Reviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [ReviewItem(), ReviewItem()],
      ),
    );
  }
}
