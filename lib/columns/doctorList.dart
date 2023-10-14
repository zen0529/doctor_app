import 'package:doctor_app/grid_menu.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/DoctorScreen',
                  arguments: Doctors(
                      image: doctors[index].image,
                      assigned: doctors[index].assigned,
                      name: doctors[index].name,
                      //box: doctors[index].image,
                      reviewNum: doctors[index].reviewNum,
                      Description: doctors[index].Description));
            },
            child: Column(
              children: [
                Container(
                  width: 327,
                  height: 80,
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 88,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xFFEAEAEA),
                        ),
                        child: Image(
                            image: AssetImage(
                                'assets/images/${doctors[index].image}')),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 24,
                            child: Text(
                              doctors[index].name,
                              textAlign: TextAlign.left,
                              style: GoogleFonts.lato(
                                color: const Color(0xFF404345),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            height: 21,
                            width: 185,
                            child: Text(
                              doctors[index].assigned,
                              style: GoogleFonts.sourceSans3(
                                color: const Color(0xFFAAAAAA),
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: 223,
                            height: 24,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    // width: 114,
                                    height: 21,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        RatingBar.builder(
                                          itemSize: 16,
                                          initialRating: 5,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          itemCount: 5,
                                          itemPadding: EdgeInsets.zero,
                                          itemBuilder: (context, _) =>
                                              const Icon(
                                            Icons.star,
                                            color: Color(0xFFFFE848),
                                          ),
                                          onRatingUpdate: (rating) {},
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          doctors[index].reviewNum,
                                          style: const TextStyle(
                                              color: Color(0xFFC4C4C4)),
                                        ),
                                      ],
                                    )),
                                const SizedBox(width: 10),
                                Image(
                                    image: AssetImage(doctors[index].isOpen
                                        ? 'assets/images/Btn_open.png'
                                        : 'assets/images/Btn_Closed.png'))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          );
        },
        itemCount: 4,
      ),
    );
  }
}
