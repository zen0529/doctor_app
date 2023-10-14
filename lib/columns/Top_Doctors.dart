import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopDoctors extends StatelessWidget {
  const TopDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 22,
            width: 99,
            child: Text('Top Doctors',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  color: const Color(0xFF25282B),
                  fontWeight: FontWeight.bold,
                )),
          ),
          SizedBox(
            height: 13,
            width: 40,
            child: Text('View all',
                style: GoogleFonts.lato(
                  fontSize: 11,
                  color: const Color(0xFF4485FD),
                  fontWeight: FontWeight.bold,
                )),
          )
        ],
      ),
    );
  }
}
