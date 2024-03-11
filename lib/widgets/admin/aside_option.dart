import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:skeleton/blocs/auth_bloc/auth_bloc.dart';
import 'package:skeleton/models/menu_option_model.dart';
import 'package:skeleton/routes/app_routers.dart';
import 'package:skeleton/widgets/admin/aside_sub_menu.dart';

class AsideOptionWidget extends StatefulWidget {
  final MenuOption menuOption;

  const AsideOptionWidget({super.key, required this.menuOption});

  @override
  State<AsideOptionWidget> createState() => _AsideOptionWidgetState();
}

class _AsideOptionWidgetState extends State<AsideOptionWidget>
    with TickerProviderStateMixin {
  bool _isPLay = false;
  late AnimationController animationController;
  bool selected = false;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);
    return Column(
      children: [
        GestureDetector(
          onTap: widget.menuOption.titulo == "Cerrar sesion" ?(){
            authBloc.add(LogoutEvent());
                        context.router.pushAndPopUntil(
                          const WelcomeRoute(),
                          predicate: (_) => false,
                        );
          } :  widget.menuOption.subMenu.isEmpty
              ? () {
                  context.router
                      .pushNamed(widget.menuOption.titulo.toLowerCase());
                }
              : () {
                  if (!_isPLay) {
                    animationController.forward();
                    _isPLay = true;
                  } else {
                    animationController.reverse();
                    _isPLay = false;
                  }
                  setState(() {});
                },
          behavior: HitTestBehavior.translucent,
          child: HoverAnimatedContainer(
            decoration: const BoxDecoration(color: Colors.transparent),
            cursor: SystemMouseCursors.click,
            hoverDecoration: BoxDecoration(
                color: Colors.grey.withOpacity(.1),
                borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 4,
                    ),
                    Icon(
                      widget.menuOption.icono,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 13,
                    ),
                    Text(
                      widget.menuOption.titulo,
                      style: GoogleFonts.quicksand(color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    widget.menuOption.titulo == "Tramites"
                        ? Container(
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(176, 251, 187, 1),
                                borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 7, vertical: 3),
                            child: Text(
                              "10",
                              style: GoogleFonts.quicksand(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        : Container(),
                    widget.menuOption.subMenu.isEmpty
                        ? Container()
                        : AnimatedIcon(
                            icon: AnimatedIcons.menu_close,
                            color: Colors.grey,
                            progress: animationController),
                  ],
                )
              ],
            ),
          ),
        ),
        AnimatedSize(
          reverseDuration: const Duration(milliseconds: 300),
          duration: const Duration(milliseconds: 300),
          child: _isPLay
              ? Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (_, int i) => SubMenuOptionWidget(
                          last: i == widget.menuOption.subMenu.length - 1,
                          titulo: widget.menuOption.subMenu[i],
                        ),
                        separatorBuilder: (_, __) => const SizedBox(
                          height: 0,
                        ),
                        itemCount: widget.menuOption.subMenu.length,
                      ),
                    ),
                  ],
                )
              : Container(),
        )
      ],
    );
  }
}
