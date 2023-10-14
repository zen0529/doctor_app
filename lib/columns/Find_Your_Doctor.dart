import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FindyourdoctorText extends StatelessWidget {
  const FindyourdoctorText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 41,
      child: Row(children: [
        Text(
          'Find',
          style: GoogleFonts.lato(
            fontSize: 34,
            color: const Color(0xFF25282B),
          ),
        ),
        Text(
          ' your doctor',
          style: GoogleFonts.lato(
            fontSize: 34,
            color: const Color(0xFFA0A4A8),
          ),
        ),
      ]),
    );
  }
}
