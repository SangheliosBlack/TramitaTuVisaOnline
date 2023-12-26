import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeleton/widgets/admin/aside.dart';
import 'package:skeleton/widgets/admin/top.dart';



@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
      ],
      child: Scaffold(
          backgroundColor: const Color.fromRGBO(236, 240, 245, 1),
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
                            padding: EdgeInsets.symmetric(horizontal: 20),
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
