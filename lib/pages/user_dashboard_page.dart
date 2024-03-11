import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeleton/blocs/referred/referred_bloc.dart';
import 'package:skeleton/blocs/usuarios/usuarios_bloc.dart';
import 'package:skeleton/widgets/admin/aside.dart';
import 'package:skeleton/injection_container.dart' as di;

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                di.sl<UsersBloc>()..add(InitUsers())),
        BlocProvider(create: (context) => di.sl<UsersBloc>()..add(InitUsers())),
        BlocProvider(
            create: (context) =>
                di.sl<ReferredBloc>()..add(InitialReferredUsers()))
      ],
      child: const Scaffold(
          backgroundColor: Color.fromRGBO(2, 2, 2, 1),
          body: Row(
            children: [
              AsideLayout(),
              Expanded(
                child: Expanded(
                  child: AutoRouter(),
                ),
              ),
            ],
          )),
    );
  }
}
