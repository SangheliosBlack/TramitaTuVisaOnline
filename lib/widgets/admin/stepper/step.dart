import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StepWidget extends StatelessWidget {
  final String title;
  final bool completed;
  final String label;
  const StepWidget(
      {super.key,
      required this.title,
      required this.completed,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: const Color.fromRGBO(0, 140, 118, 1)),
              child: const Icon(
                Icons.check,
                size: 15,
                color: Colors.white,
              ),
            ),
            Container(
              width: 100,
              height: 3,
              color: const Color.fromRGBO(0, 140, 118, 1),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          label,
          style: GoogleFonts.quicksand(
              color: Colors.black.withOpacity(.8), fontSize: 12),
        ),
        Text(
          title,
          style: GoogleFonts.quicksand(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16),
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          completed ? "Completedo" : "Pendiente",
          style: GoogleFonts.quicksand(
              color: const Color.fromRGBO(0, 140, 118, 1), fontSize: 12),
        ),
      ],
    );
  }
}
