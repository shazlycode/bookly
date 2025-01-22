import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../Core/utilis/constants.dart';

class CustomBookScreenViewAppBar extends StatelessWidget {
  const CustomBookScreenViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          kLogoPath,
          scale: 1.5,
        ),
        IconButton(
            onPressed: () {}, icon: Icon(FontAwesomeIcons.magnifyingGlass))
      ],
    );
  }
}
