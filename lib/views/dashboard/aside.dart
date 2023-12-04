import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Aside extends StatelessWidget {
  const Aside({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return sizingInformation.isMobile
            ? Container(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        width: 2,
                        color: Colors.black.withOpacity(.0),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 7,
                          width: 7,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(.2),
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                width: 1,
                                color: Colors.black,
                              )),
                          child: Text(
                            "Visa Primera Vez",
                            style: GoogleFonts.quicksand(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 7,
                          width: 7,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(.2),
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                width: 1,
                                color: Colors.black,
                              )),
                          child: Text(
                            "Visa Renovacion",
                            style: GoogleFonts.quicksand(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 7,
                          width: 7,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(.2),
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.black,
                                  )),
                              child: Text(
                                "Global Entry",
                                style:
                                    GoogleFonts.quicksand(color: Colors.black),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 10),
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white),
                                child: const Icon(
                                  Icons.bolt,
                                  size: 20,
                                ))
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 7,
                          width: 7,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(.2),
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                width: 1,
                                color: Colors.black,
                              )),
                          child: Text(
                            "Pasaporte Mexicano",
                            style: GoogleFonts.quicksand(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 160,
                      width: 2,
                      color: Colors.black.withOpacity(0),
                    ),
                  ],
                ),
              )
            : Container();
      },
    );
  }
}
