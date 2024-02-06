import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';

class SubMenuOptionWidget extends StatelessWidget {
  final String titulo;
  final bool last;
  const SubMenuOptionWidget(
      {super.key, required this.titulo, this.last = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.pushNamed(titulo.toLowerCase());
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
              height: 40,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      width: .5,
                      color: Colors.white.withOpacity(.2),
                    ),
                  ),
                  const Icon(
                    Icons.circle_outlined,
                    color: Colors.white,
                    size: 13,
                  ),
                  Expanded(
                    child: Container(
                      width: .5,
                      color: Colors.white.withOpacity(last ? 0 : .2),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              titulo,
              style: GoogleFonts.quicksand(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
