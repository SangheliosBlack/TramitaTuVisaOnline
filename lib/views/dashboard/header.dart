import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return sizingInformation.isMobile
            ? Container()
            : Container(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 1,
                      color: Colors.grey.withOpacity(.6),
                    )),
                    const Option(
                      titulo: 'VISA Primera vez',
                    ),
                    Container(
                      width: 50,
                      height: 1,
                      color: Colors.grey.withOpacity(.6),
                    ),
                    const Option(
                      titulo: 'VISA Renovacion',
                    ),
                    Container(
                      width: 50,
                      height: 1,
                      color: Colors.grey.withOpacity(.6),
                    ),
                    const Option(
                      show: true,
                      titulo: 'Global Entry',
                    ),
                    Container(
                      width: 50,
                      height: 1,
                      color: Colors.grey.withOpacity(.6),
                    ),
                    const Option(
                      titulo: 'Pasaporte Mexicano',
                    ),
                    Expanded(
                        child: Container(
                      height: 1,
                      color: Colors.grey.withOpacity(.6),
                    )),
                  ],
                ),
              );
      },
    );
  }
}

class Option extends StatelessWidget {
  final String titulo;
  final bool show;
  const Option({
    super.key,
    required this.titulo,
    this.show = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black.withOpacity(.1)),
                borderRadius: BorderRadius.circular(100)),
            child: Text(
              titulo,
              style: GoogleFonts.quicksand(color: Colors.black),
            )),
        Positioned(
          right: 0,
          top: 0,
          child: show
              ? Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white),
                  child: const Icon(
                    Icons.bolt,
                    size: 20,
                  ))
              : Container(),
        ),
      ],
    );
  }
}
