import 'package:flutter/material.dart';

import '../../../../../Core/utilis/constants.dart';
import '../../../../../Core/utilis/text_styles.dart';

class BookButtonSection extends StatelessWidget {
  const BookButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 17,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                padding: EdgeInsets.all(0),
                onPressed: () {},
                child: Container(
                  width: 150,
                  height: 48,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "19.90\$",
                      style: Styles.textStyle14.copyWith(color: Colors.black),
                    ),
                  ),
                )),
            MaterialButton(
                padding: EdgeInsets.all(0),
                onPressed: () {},
                child: Container(
                  width: 150,
                  height: 48,
                  decoration: BoxDecoration(
                      color: kButtonColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Free Preview",
                      style: Styles.textStyle14.copyWith(color: Colors.white),
                    ),
                  ),
                ))
          ],
        ),
      ],
    );
  }
}
