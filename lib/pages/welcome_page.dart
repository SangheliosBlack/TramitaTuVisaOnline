import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:skeleton/helpers/extensions.dart';
import 'package:skeleton/widgets/dashboard/login_screen/home_button.dart';
import 'package:skeleton/widgets/dashboard/welcome_screen/footer.dart';
import 'package:skeleton/widgets/dashboard/welcome_screen/header.dart';
import 'package:skeleton/widgets/dashboard/welcome_screen/login_button.dart';

@RoutePage()
class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return Scaffold(
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
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    const Color.fromRGBO(175, 178, 179, .0),
                    Color.fromRGBO(
                        175, 178, 179, sizingInformation.isMobile ? .7 : 1)
                  ])),
            )),
            const Positioned.fill(child: AutoRouter()),
            const Header(),
            Positioned(
              top: 0,
              child: Container(
                child: Row(
                  children: [
                    LoginButton(),
                  ],
                ),
              ),
            ),
            Container(
              height: context.height,
              width: context.width,
            ),
            const Positioned(bottom: 0, child: Footer()),
          ],
        ));
      },
    );
  }
}
