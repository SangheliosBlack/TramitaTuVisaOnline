import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:skeleton/helpers/extensions.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

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
                          style: GoogleFonts.quicksand(
                              color: Colors.black, fontSize: 18),
                        ),
                        const SizedBox(
                          width: 20,
                        )
                      ],
                    )
                  : Container(),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black),
                child: const Icon(
                  FontAwesomeIcons.solidUser,
                  color: Colors.white,
                  size: 15,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
