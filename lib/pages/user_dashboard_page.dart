import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeleton/blocs/auth_bloc/auth_bloc.dart';
import 'package:skeleton/helpers/meesages_app_helper.dart';
import 'package:skeleton/widgets/admin/aside.dart';
import 'package:skeleton/widgets/admin/top.dart';

@RoutePage()
class UserDashboardPage extends StatefulWidget {
  const UserDashboardPage({super.key});

  @override
  State<UserDashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<UserDashboardPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthError) {
          if (state.message.isNotEmpty) {
            AppMessages.showSnackBar(
                context: context,
                message: state.message,
                backgroundColor: Colors.red);
          }
        } else if (state is AuthSuccess) {
          context.router.replaceNamed('/dashdddboard');
        }
      },
      child: Scaffold(
          backgroundColor: Color.fromRGBO(2, 2, 2, 1),
          body: Row(
            children: [
              const AsideLayout(),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 20, top: 20, bottom: 20),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.1),
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.grey.withOpacity(.3),
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      const TopLayout(),
                      Expanded(
                        child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: const AutoRouter()),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
