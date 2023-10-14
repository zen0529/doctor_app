import 'package:doctor_app/grid_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Doctors;
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: 'assets/images/${args.image}',
            child: Material(
              type: MaterialType.transparency,
              child: Container(
                alignment: Alignment.topCenter,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  color: const Color(0xFFEAEAEA),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/${args.image}',
                    ),
                  ),
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 24,
                            width: 24,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: Svg('assets/icons/icon-back.svg'),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 24,
                            width: 24,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: Svg('assets/icons/icon-bookmark.svg'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                Hero(
                  tag: args.name,
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      args.name,
                      style: GoogleFonts.lato(
                        color: const Color(0xFF25282B),
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  args.assigned,
                  style: GoogleFonts.lato(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xFFAAAAAA)),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  args.Description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 6,
                  style: GoogleFonts.sourceSans3(
                      color: const Color(0xFFC4C4C4),
                      //letterSpacing: 0.5,
                      //height: 24,
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 16,
                ),
                //const Spacer(),
                Container(
                  height: 72,
                  width: 320,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 45,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Experience',
                                style: GoogleFonts.lato(
                                  color: const Color(0xFF25282B),
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '3',
                                    style: GoogleFonts.sourceSans3(
                                        //height: 36,
                                        color: const Color(0xFF2B92E4),
                                        fontSize: 24,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'yr',
                                    style: GoogleFonts.sourceSans3(
                                        color: const Color(0xFFAAAAAA),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal),
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const VerticalDivider(
                            thickness: 1,
                            color: Color(0xFFEAEAEA),
                          ),
                          Column(
                            children: [
                              Text(
                                'Patient',
                                style: GoogleFonts.lato(
                                  color: const Color(0xFF25282B),
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  letterSpacing: 0.5,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    args.reviewNum,
                                    style: GoogleFonts.sourceSans3(
                                        color: const Color(0xFF2B92E4),
                                        fontSize: 24,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'ps',
                                    style: GoogleFonts.sourceSans3(
                                        color: const Color(0xFFAAAAAA),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal),
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const VerticalDivider(
                            thickness: 1,
                            color: Color(0xFFEAEAEA),
                          ),
                          Column(
                            children: [
                              Text(
                                'Rating',
                                style: GoogleFonts.lato(
                                  color: const Color(0xFF25282B),
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  letterSpacing: 0.5,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '5.0',
                                    style: GoogleFonts.sourceSans3(
                                        color: const Color(0xFF2B92E4),
                                        fontSize: 24,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xFF4485FD),
                        image: const DecorationImage(
                          image: Svg(
                            'assets/icons/icon-chat.svg',
                            size: Size(
                              36,
                              36,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 56,
                      width: MediaQuery.of(context).size.width - 104,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xFF00CC6A),
                      ),
                      child: Center(
                        child: Text('Make an Appoinment',
                            style: GoogleFonts.lato(
                                color: const Color(0xFFF9F9FA),
                                fontWeight: FontWeight.bold,
                                fontSize: 14)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
