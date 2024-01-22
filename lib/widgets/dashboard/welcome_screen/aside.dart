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
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        width: 2,
                        color: Colors.black.withOpacity(.0),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          )),
                      child: Text(
                        "Global Entry",
                        style: GoogleFonts.quicksand(color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 7),
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
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 7),
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
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 7),
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
                    Container(
                      height: 80,
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
