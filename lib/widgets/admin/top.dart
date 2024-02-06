import 'package:auto_route/auto_route.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeleton/blocs/auth_bloc/auth_bloc.dart';
import 'package:skeleton/routes/app_routers.dart';

class TopLayout extends StatelessWidget {
  const TopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DottedBorder(
            borderType: BorderType.RRect,
            radius: const Radius.circular(100),
            padding: const EdgeInsets.all(10),
            child: const ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              child: Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
          ),
          Row(
            children: [
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  authBloc.add(LogoutEvent());
                  context.router.pushAndPopUntil(
                    const WelcomeRoute(),
                    predicate: (_) => false,
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color.fromRGBO(2, 2, 2, 1)),
                  child: const Icon(
                    Icons.logout_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
