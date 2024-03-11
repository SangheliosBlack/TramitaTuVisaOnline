import 'package:auto_route/auto_route.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeleton/blocs/usuarios/usuarios_bloc.dart';
import 'package:skeleton/helpers/avatar_letters.dart';
import 'package:skeleton/helpers/dates.dart';
import 'package:skeleton/helpers/extensions.dart';
import 'package:skeleton/helpers/mask_phone.dart';
import 'package:skeleton/models/user.dart';
import 'package:skeleton/themes/main_theme.dart';
import 'package:skeleton/widgets/admin/menus/all_user_menu.dart';

@RoutePage()
class PlataformaPage extends StatelessWidget {
  const PlataformaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final UsersBloc usersBloc = BlocProvider.of<UsersBloc>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 15, right: 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Plataforma",
                            style: GoogleFonts.quicksand(
                                color: Colors.black, fontSize: 25),
                          ),
                          const Gap(1),
                          Text(
                            "23 documentos",
                            style: GoogleFonts.quicksand(
                                color: Colors.blueGrey, fontSize: 13),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color.fromRGBO(66, 84, 237, 1)),
                            child: Text(
                              "Nuevo tramite",
                              style: GoogleFonts.quicksand(color: Colors.white),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Gap(15),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: context.width,
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 20),
                        decoration: BoxDecoration(
                            color: Themes.secondary,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Row(
                          children: [
                            const Icon(
                              BootstrapIcons.search,
                              color: Colors.black,
                              size: 20,
                            ),
                            Expanded(
                                child: Center(
                              child: TextFormField(
                                style:
                                    GoogleFonts.quicksand(color: Colors.black),
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 13, vertical: 13),
                                  fillColor: Colors.transparent,
                                  filled: false,
                                  focusColor: Colors.transparent,
                                  hintText: "Buscar...",
                                  hintStyle: GoogleFonts.quicksand(
                                      color: Colors.black),
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  isDense: true,
                                  enabledBorder: InputBorder.none,
                                ),
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.all(9),
                      decoration: BoxDecoration(
                          color: Themes.secondary,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Text(
                            "Filtrar",
                            style: GoogleFonts.quicksand(color: Colors.black),
                          ),
                          const Gap(5),
                          const Icon(
                            BootstrapIcons.filter,
                            color: Colors.black,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        usersBloc.add(InitUsers());
                      },
                      behavior: HitTestBehavior.translucent,
                      child: Container(
                        padding: const EdgeInsets.all(9),
                        decoration: BoxDecoration(
                            color: Themes.secondary,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          BootstrapIcons.arrow_clockwise,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.all(9),
                      decoration: BoxDecoration(
                          color: Themes.secondary,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(
                        BootstrapIcons.cloud_download,
                        color: Colors.black,
                        size: 20,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Nombre",
                              style: GoogleFonts.quicksand(color: Colors.black),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            const Icon(
                              Icons.unfold_more,
                              color: Colors.blueGrey,
                              size: 20,
                            )
                          ],
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 270,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ultima conexion",
                                style:
                                    GoogleFonts.quicksand(color: Colors.black),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              const Icon(
                                Icons.unfold_more,
                                color: Colors.blueGrey,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 115,
                          child: Row(
                            children: [
                              Text(
                                "Telefono",
                                style:
                                    GoogleFonts.quicksand(color: Colors.black),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              const Icon(
                                Icons.unfold_more,
                                color: Colors.blueGrey,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        SizedBox(
                          width: 120,
                          child: Row(
                            children: [
                              Text(
                                "Rol",
                                style:
                                    GoogleFonts.quicksand(color: Colors.black),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              const Icon(
                                Icons.unfold_more,
                                color: Colors.blueGrey,
                                size: 20,
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 30,
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey.withOpacity(.1),
                    height: 1,
                  ),
                  Expanded(
                    child: BlocBuilder<UsersBloc, UsersState>(
                      builder: (context, state) {
                        return AnimatedSwitcher(
                          duration: const Duration(milliseconds: 200),
                          child: state is UsersLoading
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircularProgressIndicator(
                                      color: Themes.primary,
                                    )
                                  ],
                                )
                              : state is UsersSuccess
                                  ? state.listUsers.isNotEmpty
                                      ? Column(
                                          children: [
                                            Expanded(
                                              child: ListView.separated(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 0,
                                                        vertical: 0),
                                                physics:
                                                    const BouncingScrollPhysics(),
                                                itemBuilder: (_, int i) {
                                                  final usuario =
                                                      state.listUsers[i];

                                                  return UserWidgetFinal(
                                                    color: usuario.online
                                                        ? Colors.green
                                                        : Colors.grey,
                                                    usuario: usuario,
                                                  );
                                                },
                                                separatorBuilder:
                                                    (BuildContext context,
                                                            int index) =>
                                                        Divider(
                                                  height: .5,
                                                  color: Colors.grey
                                                      .withOpacity(.1),
                                                  thickness: 1,
                                                ),
                                                itemCount:
                                                    state.listUsers.length,
                                              ),
                                            ),
                                            Divider(
                                              height: 0,
                                              color:
                                                  Colors.grey.withOpacity(.15),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  bottom: 15,
                                                  left: 20,
                                                  right: 20,
                                                  top: 15),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    "Filas por hoja",
                                                    style:
                                                        GoogleFonts.quicksand(
                                                            color:
                                                                Colors.black),
                                                  ),
                                                  Container(
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 20),
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 15,
                                                        vertical: 0),
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 1,
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    .2)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15)),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          state.listUsers.length
                                                              .toString(),
                                                          style: GoogleFonts
                                                              .quicksand(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        const Icon(
                                                          Icons.arrow_drop_down,
                                                          color: Colors.black,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    "1 - ${state.listUsers.length}",
                                                    style:
                                                        GoogleFonts.quicksand(
                                                            color:
                                                                Colors.black),
                                                  ),
                                                  const SizedBox(
                                                    width: 25,
                                                  ),
                                                  Row(
                                                    children: [
                                                      const Icon(
                                                        Icons.chevron_left,
                                                        color: Colors.grey,
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      const Icon(
                                                        Icons
                                                            .keyboard_double_arrow_left,
                                                        color: Colors.grey,
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      Icon(Icons.chevron_right,
                                                          color:
                                                              Themes.primary),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      Icon(
                                                        Icons
                                                            .keyboard_double_arrow_right,
                                                        color: Themes.primary,
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      : Expanded(
                                          child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  bottom: 20),
                                              child: const Icon(
                                                FontAwesomeIcons.faceSadTear,
                                                size: 70,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              "Nada que mostrar",
                                              style: GoogleFonts.quicksand(
                                                  color: Colors.white,
                                                  fontSize: 25),
                                            )
                                          ],
                                        ))
                                  : Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
            ),
          ),
        ],
      ),
    );
  }
}

class UserWidgetFinal extends StatefulWidget {
  final Usuario usuario;
  final Color color;
  const UserWidgetFinal({
    super.key,
    required this.color,
    required this.usuario,
  });

  @override
  State<UserWidgetFinal> createState() => _UserWidgetFinalState();
}

class _UserWidgetFinalState extends State<UserWidgetFinal> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (e) {
        setState(() {
          hover = true;
        });
      },
      onExit: (e) {
        setState(() {
          hover = false;
        });
      },
      child: AnimatedContainer(
        decoration:
            BoxDecoration(color: Themes.secondary.withOpacity(hover ? .3 : 0)),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        duration: const Duration(milliseconds: 200),
        child: Row(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Themes.primary),
                  child: Center(
                    child: Text(
                      avatarLetters(name: widget.usuario.name),
                      style: GoogleFonts.quicksand(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(
                  child: Text(
                    widget.usuario.name,
                    style: GoogleFonts.quicksand(color: Colors.black),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.only(right: 20),
              width: 270,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dateTimeParse(date: widget.usuario.lastConnection),
                    style: GoogleFonts.quicksand(color: Colors.black),
                  ),
                  Text(
                    obtenerTiempoTranscurrido(
                        date: widget.usuario.lastConnection),
                    style: GoogleFonts.quicksand(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20),
              width: 115,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    formatPhone(numero: widget.usuario.phone),
                    style: GoogleFonts.quicksand(color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 15),
              width: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 25,
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Usuario",
                        style: GoogleFonts.quicksand(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ExampleMenuAllUser(
              builder: (_, showMenu) => CupertinoButton(
                onPressed: showMenu,
                padding: EdgeInsets.zero,
                pressedOpacity: 1,
                child: const Icon(
                  BootstrapIcons.three_dots,
                  color: Colors.black,
                ),
              ),
              usuario: widget.usuario,
              color: widget.color,
            )
          ],
        ),
      ),
    );
  }
}
