import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:skeleton/blocs/auth_bloc/auth_bloc.dart';
import 'package:skeleton/helpers/extensions.dart';
import 'package:skeleton/helpers/meesages_app_helper.dart';
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
            body: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is AuthError) {
              if (state.message.isNotEmpty) {
                AppMessages.showSnackBar(
                    context: context,
                    message: state.message,
                    backgroundColor: Colors.red);
              }
            } else if (state is AuthSuccess) {
              context.router.replaceNamed('/dashboard');
            }
          },
          child: Stack(
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
              const Positioned(
                top: 0,
                child: Row(
                  children: [
                    LoginButton(),
                  ],
                ),
              ),
              Container(
                height: context.height,
                width: context.width,
              ),
              const Positioned(bottom: 0, child: Footer()),
            ],
          ),
        ));
      },
    );
  }
}
