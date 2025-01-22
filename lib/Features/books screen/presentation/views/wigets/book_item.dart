import 'package:flutter/material.dart';

import '../../../../../Core/utilis/constants.dart';

class BookItem extends StatelessWidget {
  const BookItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1.8,
      child: Container(
        // height: 244,
        // width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(kBookLogoPath)),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
