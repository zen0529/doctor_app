import 'package:doctor_app/Grid_Menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class Gridview extends StatelessWidget {
  const Gridview({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 8,
      ),
      padding: EdgeInsets.zero,
      itemCount: grid.length,
      itemBuilder: (BuildContext context, index) {
        return GestureDetector(
          child: Container(
            constraints: const BoxConstraints(
              maxHeight: 81,
            ),
            child: Column(
              children: [
                Container(
                    constraints: const BoxConstraints(
                      minHeight: 56,
                      minWidth: 56,
                      maxHeight: 56,
                      maxWidth: 56,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Svg('assets/icons/${grid[index].image}')),
                    )),
                const SizedBox(
                  height: 4,
                ),
                Expanded(
                    child: Text(
                  grid[index].name,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontFamily: GoogleFonts.lato().fontFamily,
                  ),
                ))
              ],
            ),
          ),
        );
      },
    );
  }
}
