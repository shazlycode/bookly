import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBookDetailsScrenViewAppBar extends StatelessWidget {
  const CustomBookDetailsScrenViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.xmark)),
        IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.cartShopping))
      ],
    );
  }
}
