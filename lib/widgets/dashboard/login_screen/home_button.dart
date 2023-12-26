import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:skeleton/helpers/extensions.dart';

class HomeButton extends StatefulWidget {
  const HomeButton({super.key});

  @override
  State<HomeButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<HomeButton> {
  bool enabled = false;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return Container(
          padding: const EdgeInsets.all(20),
          width: context.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              sizingInformation.isMobile
                  ? Row(
                      children: [
                        Text(
                          "Ingresar",
                          style: GoogleFonts.quicksand(color: Colors.black),
                        ),
                        const SizedBox(
                          width: 20,
                        )
                      ],
                    )
                  : Container(),
              GestureDetector(
                onTap: () {
                  context.router.pushNamed('/login');
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
                  child: AnimatedContainer(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: !enabled ? Colors.grey : Colors.black),
                    duration: const Duration(milliseconds: 300),
                    child: const Icon(
                      FontAwesomeIcons.solidUser,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
