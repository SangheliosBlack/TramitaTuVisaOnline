import 'package:auto_route/auto_route.dart';
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
                      url: 'visa_renovacion',
                    ),
                    Container(
                      width: 50,
                      height: 1,
                      color: Colors.grey.withOpacity(.6),
                    ),
                    const Option(
                      titulo: 'VISA Renovacion',
                      url: 'visa_renovacion',
                    ),
                    Container(
                      width: 50,
                      height: 1,
                      color: Colors.grey.withOpacity(.6),
                    ),
                    const Option(
                      show: true,
                      titulo: 'Global Entry',
                      url: 'visa_renovacion',
                    ),
                    Container(
                      width: 50,
                      height: 1,
                      color: Colors.grey.withOpacity(.6),
                    ),
                    const Option(
                      titulo: 'Pasaporte Mexicano',
                      url: 'visa_renovacion',
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

class Option extends StatefulWidget {
  final String url;
  final String titulo;
  final bool show;
  const Option({
    super.key,
    required this.titulo,
    this.show = false,
    required this.url,
  });

  @override
  State<Option> createState() => _OptionState();
}

class _OptionState extends State<Option> {
  bool enabled = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.pushNamed(widget.url);
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (e) {
          setState(() {
            enabled = true;
          });
        },
        onExit: (e) {
          setState(() {
            enabled = false;
          });
        },
        child: Stack(
          children: [
            AnimatedContainer(
                margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(1),
                    border: Border.all(color: Colors.black.withOpacity(.1)),
                    borderRadius: BorderRadius.circular(100)),
                duration: const Duration(milliseconds: 400),
                child: Text(
                  widget.titulo,
                  style: GoogleFonts.quicksand(color: Colors.white),
                )),
            Positioned(
              right: 0,
              top: 0,
              child: widget.show
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
        ),
      ),
    );
  }
}
