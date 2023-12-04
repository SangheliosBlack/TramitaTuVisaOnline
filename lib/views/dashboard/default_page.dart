import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:skeleton/helpers/extensions.dart';
import 'package:skeleton/views/dashboard/aside.dart';
import 'package:skeleton/views/dashboard/footer.dart';
import 'package:skeleton/views/dashboard/header.dart';
import 'package:skeleton/views/dashboard/login_button.dart';

@RoutePage()
class DashBoardDefaultPage extends StatefulWidget {
  const DashBoardDefaultPage({super.key});

  @override
  State<DashBoardDefaultPage> createState() => _DashBoardDefaultViewState();
}

class _DashBoardDefaultViewState extends State<DashBoardDefaultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
        resizeToAvoidBottomInset: true,
        extendBody: true,
        body: Stack(
          children: [
            Positioned.fill(
                child: SizedBox(
              height: context.height,
              width: context.width,
              child: const Image(
                image: AssetImage("assets/images/f2.jpg"),
                fit: BoxFit.cover,
              ),
            )),
            Positioned.fill(
                child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color.fromRGBO(175, 178, 179, .0),
                    Color.fromRGBO(175, 178, 179, 1)
                  ])),
            )),
            const Header(),
            const Aside(),
            Positioned.fill(
              child: ResponsiveBuilder(
                builder: (BuildContext context,
                    SizingInformation sizingInformation) {
                  return sizingInformation.isMobile
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "TRAMITA",
                                  style: GoogleFonts.anton(
                                      height: 1,
                                      color: Colors.black,
                                      fontSize: 100),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "TU",
                                      style: GoogleFonts.anton(
                                          height: .8,
                                          color: Colors.red,
                                          fontSize: 40),
                                    ),
                                    Text(
                                      "VISA",
                                      style: GoogleFonts.anton(
                                          height: 1,
                                          color: Colors.blue,
                                          fontSize: 40),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Text(
                              "ONL   INE",
                              style: GoogleFonts.anton(
                                  height: .9,
                                  color: Colors.white,
                                  fontSize: 100),
                            ),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "TRAMITA",
                                  style: GoogleFonts.anton(
                                      height: 1,
                                      color: Colors.black,
                                      fontSize: 200),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "TU",
                                      style: GoogleFonts.anton(
                                          height: .8,
                                          color: Colors.red,
                                          fontSize: 80),
                                    ),
                                    Text(
                                      "VISA",
                                      style: GoogleFonts.anton(
                                          height: 1,
                                          color: Colors.blue,
                                          fontSize: 80),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Text(
                              "ONL   INE",
                              style: GoogleFonts.anton(
                                  height: .9,
                                  color: Colors.white,
                                  fontSize: 200),
                            ),
                          ],
                        );
                },
              ),
            ),
            Positioned(
                child: SizedBox(
              width: context.width,
              height: context.height,
              child: const Image(
                image: AssetImage("assets/images/f1.png"),
                fit: BoxFit.contain,
              ),
            )),
            const Positioned(bottom: 0, child: Footer()),
            const Positioned(top: 0, child: LoginButton())
          ],
        ));
  }
}
