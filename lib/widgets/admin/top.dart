import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Hola, ",
                    style: GoogleFonts.quicksand(
                        color: Colors.black, fontSize: 30),
                  ),
                  BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, state) {
                      if (state is AuthSuccess) {
                        return Text(
                          state.usuario.name.split(" ")[0],
                          style: GoogleFonts.quicksand(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 30),
                        );
                      }
                      return CircularProgressIndicator();
                    },
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromRGBO(2, 2, 2, 1)),
                child: const Icon(
                  Icons.alarm,
                  color: Colors.white,
                ),
              ),
              GestureDetector(
              behavior: HitTestBehavior.translucent,
                onTap: (){
                  authBloc.add(LogoutEvent());
                context.router.pushAndPopUntil(
                  const WelcomeRoute(),
                  predicate: (_) => false,
                );
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 10),
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
              const SizedBox(
                width: 50,
                height: 50,
                child: Image(
                  image: AssetImage("assets/images/world.png"),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
