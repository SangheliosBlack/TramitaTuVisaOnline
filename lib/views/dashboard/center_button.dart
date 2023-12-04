import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CenterButton extends StatelessWidget {
  const CenterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black.withOpacity(.2))),
      child: Container(
        width: 280,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(width: 2, color: Colors.black)),
        child: Center(
          child: Text(
            "INICIAR",
            style: GoogleFonts.quicksand(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
