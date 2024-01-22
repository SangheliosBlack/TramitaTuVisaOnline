import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:skeleton/helpers/extensions.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  bool enabled = false;
  bool enabled2 = false;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return Container(
          padding: const EdgeInsets.all(20),
          width: context.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  context.router.pushNamed('/');
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
                        color: !enabled ? Colors.black : Colors.blueGrey),
                    duration: const Duration(milliseconds: 300),
                    child: const Icon(
                      FontAwesomeIcons.house,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.router.pushNamed('login');
                },
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  onEnter: (e) {
                    setState(() {
                      enabled2 = true;
                    });
                  },
                  onExit: (e) {
                    setState(() {
                      enabled2 = false;
                    });
                  },
                  child: AnimatedContainer(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: !enabled2 ? Colors.black : Colors.blueGrey),
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
