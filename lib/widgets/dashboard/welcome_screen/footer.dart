import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:skeleton/helpers/extensions.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ResponsiveBuilder(
          builder: (BuildContext context, SizingInformation sizingInformation) {
            return Container(
              padding: EdgeInsets.symmetric(
                  horizontal: sizingInformation.isMobile ? 15 : 20,
                  vertical: sizingInformation.isMobile ? 10 : 20),
              child: const Row(
                children: [
                  Icon(
                    FontAwesomeIcons.ccMastercard,
                    size: 35,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    FontAwesomeIcons.ccVisa,
                    size: 35,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    FontAwesomeIcons.ccAmex,
                    size: 35,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            );
          },
        ),
        ResponsiveBuilder(
          builder: (BuildContext context, SizingInformation sizingInformation) {
            return Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: sizingInformation.isMobile ? 10 : 20),
                width: context.width,
                decoration: const BoxDecoration(color: Colors.black),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: sizingInformation.isMobile
                          ? MainAxisAlignment.center
                          : MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tramita tu visa Online © 2023",
                          style: GoogleFonts.quicksand(color: Colors.white),
                        ),
                        Row(
                          children: sizingInformation.isMobile
                              ? []
                              : [
                                  const OptionFooter(text: "Sobre nosotros"),
                                  const OptionFooter(text: "Visa B1B2"),
                                  const OptionFooter(
                                      text: "Preguntas frecuentes"),
                                  const OptionFooter(text: "Terminos de uso"),
                                  const OptionFooter(text: "Contacto"),
                                ],
                        )
                      ],
                    ),
                    sizingInformation.isMobile
                        ? Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: context.width,
                                child: const SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      OptionFooter(text: "Sobre nosotros"),
                                      OptionFooter(text: "Visa B1B2"),
                                      OptionFooter(
                                          text: "Preguntas frecuentes"),
                                      OptionFooter(text: "Terminos de uso"),
                                      OptionFooter(text: "Contacto"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Container()
                  ],
                ));
          },
        ),
      ],
    );
  }
}

class OptionFooter extends StatefulWidget {
  final String text;
  const OptionFooter({
    super.key,
    required this.text,
  });

  @override
  State<OptionFooter> createState() => _OptionFooterState();
}

class _OptionFooterState extends State<OptionFooter> {
  bool enabled = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
      cursor: SystemMouseCursors.click,
      child: Container(
        padding: const EdgeInsets.only(left: 25),
        child: Text(
          widget.text,
          style: GoogleFonts.quicksand(
              color: enabled ? Colors.white : Colors.grey),
        ),
      ),
    );
  }
}
