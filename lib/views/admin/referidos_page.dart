import 'package:auto_route/auto_route.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeleton/blocs/referred/referred_bloc.dart';
import 'package:skeleton/helpers/avatar_color.dart';
import 'package:skeleton/helpers/avatar_letters.dart';
import 'package:skeleton/helpers/dates.dart';
import 'package:skeleton/models/user.dart';
import 'package:skeleton/themes/main_theme.dart';

@RoutePage()
class ReferidosPage extends StatelessWidget {
  const ReferidosPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ReferredBloc usuariosPlataformaBloc =
        BlocProvider.of<ReferredBloc>(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10, right: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Referidos",
                      style: GoogleFonts.quicksand(
                          color: Colors.black, fontSize: 30),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "JVM123",
                              style: GoogleFonts.quicksand(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 6),
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(13),
                                      bottomRight: Radius.circular(13)),
                                  color: Colors.black),
                              child: const Center(
                                child: Icon(
                                  BootstrapIcons.link_45deg,
                                  color: Colors.white,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 200,
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 14),
                      decoration: BoxDecoration(
                          color: Themes.primary,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Buscar",
                            style: GoogleFonts.quicksand(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        usuariosPlataformaBloc.add(InitialReferredUsers());
                      },
                      behavior: HitTestBehavior.translucent,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Themes.primary,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Icon(
                          Icons.sync,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Themes.primary,
                          borderRadius: BorderRadius.circular(15)),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Themes.primary,
                          borderRadius: BorderRadius.circular(15)),
                      child: const Icon(
                        BootstrapIcons.funnel,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Nombre",
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w600, color: Colors.blueGrey),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const Icon(
                    Icons.unfold_more,
                    color: Colors.grey,
                    size: 20,
                  )
                ],
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(right: 15),
                width: 130,
                child: Row(
                  children: [
                    Text(
                      "Plano",
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w600, color: Colors.blueGrey),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    const Icon(
                      Icons.unfold_more,
                      color: Colors.grey,
                      size: 20,
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 15),
                width: 220,
                child: Row(
                  children: [
                    Text(
                      "Correo",
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w600, color: Colors.blueGrey),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    const Icon(
                      Icons.unfold_more,
                      color: Colors.grey,
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 150,
                child: Row(
                  children: [
                    Text(
                      "Fecha registro",
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w600, color: Colors.blueGrey),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    const Icon(
                      Icons.unfold_more,
                      color: Colors.grey,
                      size: 20,
                    ),
                    const Spacer()
                  ],
                ),
              ),
              Container(
                width: 50,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: BlocBuilder<ReferredBloc, ReferredState>(
              builder: (context, state) {
                ColorManager colorManager = ColorManager();
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 200),
                  child: state is ReferredUsersLoading
                      ? const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [CircularProgressIndicator()],
                        )
                      : state is ReferredUsersSuccess
                          ? state.listUsers.isNotEmpty
                              ? ListView.separated(
                                  itemBuilder: (_, int i) {
                                    final usuario = state.listUsers[i];

                                    return UserReferidosWidget(
                                      color: colorManager.avatarColor(i),
                                      usuario: usuario,
                                    );
                                  },
                                  separatorBuilder:
                                      (BuildContext context, int index) =>
                                          const SizedBox(
                                    height: 10,
                                  ),
                                  itemCount: state.listUsers.length,
                                )
                              : Expanded(
                                  child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 20),
                                      child: const Icon(
                                        FontAwesomeIcons.faceSadTear,
                                        size: 70,
                                      ),
                                    ),
                                    Text(
                                      "Nada que mostrar",
                                      style: GoogleFonts.quicksand(
                                          color: Colors.black, fontSize: 25),
                                    )
                                  ],
                                ))
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                  Text(
                                    "Error desconocido",
                                    style: GoogleFonts.quicksand(
                                        color: Colors.black),
                                  )
                                ]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class UserReferidosWidget extends StatelessWidget {
  final Usuario usuario;
  final Color color;
  const UserReferidosWidget({
    super.key,
    required this.color,
    required this.usuario,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                  border: Border.all(width: .2, color: color.withOpacity(.6)),
                  borderRadius: BorderRadius.circular(12),
                  color: color.withOpacity(.1)),
              child: Center(
                child: Text(
                  avatarLetters(name: usuario.name),
                  style: GoogleFonts.quicksand(
                      color: color, fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Text(
              usuario.name,
              style: GoogleFonts.quicksand(
                  color: Colors.black, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const Spacer(),
        Container(
          margin: const EdgeInsets.only(right: 15),
          width: 130,
          child: Row(
            children: [
              Container(
                height: 25,
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                decoration: BoxDecoration(
                  color: usuario.role == "ADMIN"
                      ? const Color.fromRGBO(221, 232, 240, 1)
                      : const Color.fromRGBO(240, 219, 219, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    usuario.role == "ADMIN" ? "Administrador" : "Desarrollador",
                    style: GoogleFonts.quicksand(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 15),
          width: 220,
          child: Text(
            usuario.email,
            style: GoogleFonts.quicksand(
                color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          width: 150,
          child: Row(
            children: [
              Text(
                dateTimeParse(date: usuario.createAt),
                style: GoogleFonts.quicksand(
                    color: Colors.black, fontWeight: FontWeight.w600),
              ),
              const Spacer()
            ],
          ),
        ),
        const SizedBox(width: 50, child: Icon(Icons.more_horiz))
      ],
    );
  }
}
