import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';

class SubMenuOptionWidget extends StatefulWidget {
  final String titulo;
  final bool last;
  const SubMenuOptionWidget(
      {super.key, required this.titulo, this.last = false});

  @override
  State<SubMenuOptionWidget> createState() => _SubMenuOptionWidgetState();
}

class _SubMenuOptionWidgetState extends State<SubMenuOptionWidget> {
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
      child: GestureDetector(
        onTap: () {
          context.router.pushNamed(widget.titulo.toLowerCase());
        },
        behavior: HitTestBehavior.translucent,
        child: HoverAnimatedContainer(
          cursor: SystemMouseCursors.click,
          hoverDecoration: BoxDecoration(
              color: Colors.black.withOpacity(.5),
              borderRadius: BorderRadius.circular(20)),
          decoration: const BoxDecoration(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 35),
                height: 35,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: .5,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      width: 11,
                      height: 11,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.transparent,
                          border: Border.all(
                            width: 1,
                            color: Colors.white,
                          )),
                      child: AnimatedContainer(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: hover
                              ? const Color.fromRGBO(176, 251, 187, 1)
                              : Colors.transparent,
                        ),
                        duration: const Duration(milliseconds: 200),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: .5,
                        color: Colors.white.withOpacity(widget.last ? 0 : 1),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                widget.titulo,
                style: GoogleFonts.quicksand(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
