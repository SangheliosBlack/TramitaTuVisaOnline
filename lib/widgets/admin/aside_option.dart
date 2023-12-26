import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:skeleton/models/menu_option_model.dart';
import 'package:skeleton/widgets/admin/aside_sub_menu.dart';

class AsideOptionWidget extends StatefulWidget {
  final MenuOption menuOption;

  final bool isOpen;
  const AsideOptionWidget(
      {super.key, required this.isOpen, required this.menuOption});

  @override
  State<AsideOptionWidget> createState() => _AsideOptionWidgetState();
}

bool selected = false;

class _AsideOptionWidgetState extends State<AsideOptionWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.isOpen
        ? Column(
            children: [
              GestureDetector(
                onTap: widget.menuOption.subMenu.isEmpty
                    ? null
                    : () {
                        setState(() {
                          selected = !selected;
                        });
                      },
                behavior: HitTestBehavior.translucent,
                child: HoverAnimatedContainer(
                  decoration: const BoxDecoration(color: Colors.transparent),
                  cursor: SystemMouseCursors.click,
                  hoverDecoration: BoxDecoration(
                      color: Colors.black.withOpacity(.5),
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
                            style: GoogleFonts.quicksand(color: Colors.grey),
                          ),
                        ],
                      ),
                      widget.menuOption.subMenu.isEmpty
                          ? Container()
                          : const Icon(
                              Icons.expand_more,
                              color: Colors.white,
                            )
                    ],
                  ),
                ),
              ),
              AnimatedSize(
                duration: const Duration(milliseconds: 300),
                child: selected
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
          )
        : Container(
            padding: const EdgeInsets.all(10),
            child: Icon(
              widget.menuOption.icono,
              color: Colors.white,
              size: 20,
            ),
          );
  }
}
