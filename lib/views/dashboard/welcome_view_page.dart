import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:skeleton/helpers/extensions.dart';
import 'package:skeleton/widgets/dashboard/welcome_screen/aside.dart';

@RoutePage()
class WelcomeViewPage extends StatefulWidget {
  const WelcomeViewPage({super.key});

  @override
  State<WelcomeViewPage> createState() => _DashBoardDefaultViewState();
}

class _DashBoardDefaultViewState extends State<WelcomeViewPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return Scaffold(
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: true,
            extendBody: true,
            body: Stack(
              children: [
                Positioned.fill(
                  child: ResponsiveBuilder(
                    builder: (BuildContext context,
                        SizingInformation sizingInformation) {
                      return sizingInformation.isMobile
                          ? Stack(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: context.height * .15,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "TRAMITA",
                                          style: GoogleFonts.anton(
                                              height: 1,
                                              color: Colors.black,
                                              fontSize: 90),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "TU",
                                              style: GoogleFonts.anton(
                                                  height: .8,
                                                  color: Colors.red,
                                                  fontSize: 36),
                                            ),
                                            Text(
                                              "VISA",
                                              style: GoogleFonts.anton(
                                                  height: 1,
                                                  color: Colors.blue,
                                                  fontSize: 36),
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
                                          fontSize: 90),
                                    ),
                                  ],
                                ),
                                const Aside(),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                    top: 0,
                    child: SizedBox(
                      width: context.width,
                      height: context.height,
                      child: const Image(
                        image: AssetImage("assets/images/f1.png"),
                        fit: BoxFit.fitHeight,
                      ),
                    )),
              ],
            ));
      },
    );
  }
}
