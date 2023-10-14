import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class HomepageNavbar extends StatelessWidget {
  const HomepageNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(image: Svg('assets/icons/icon-burger.svg')),
          Image(image: AssetImage('assets/images/bung.png'))
        ],
      ),
    );
  }
}
