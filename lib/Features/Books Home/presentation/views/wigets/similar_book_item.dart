import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../Core/utilis/constants.dart';
import '../../../../../Core/utilis/text_styles.dart';

class SimilarBookItem extends StatelessWidget {
  const SimilarBookItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          kBookLogoPath,
          height: 105,
          width: 70,
        ),
        const SizedBox(
          width: 30,
        ),
        Expanded(
            child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                overflow: TextOverflow.ellipsis,
                "Harry Potter and the Goblet of Fire",
                maxLines: 2,
                style: Styles.textStyle20,
              ),
              Text(
                "J.K. Rowling",
                style: Styles.textStyle14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    overflow: TextOverflow.ellipsis,
                    "19.90\$",
                    maxLines: 2,
                    style: Styles.textStyle20,
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Icon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.amber,
                  ),
                  Text(
                    "4.8",
                    style: Styles.textStyle18,
                  ),
                  Opacity(
                    opacity: .5,
                    child: Text(
                      "(2390)",
                      style: Styles.textStyle14,
                    ),
                  ),
                ],
              )
            ],
          ),
        ))
      ],
    );
  }
}
