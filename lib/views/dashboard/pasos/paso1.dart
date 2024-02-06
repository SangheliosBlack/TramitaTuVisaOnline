import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Paso1 extends StatelessWidget {
  const Paso1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(right: 25),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Surnames",
                      style: GoogleFonts.quicksand(
                          color: Colors.black, fontSize: 22),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          helperText: "Eg., FERNANDEZ GARCIA"),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Given Names",
                      style: GoogleFonts.quicksand(
                          color: Colors.black, fontSize: 22),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          helperText: "Eg., FERNANDEZ GARCIA"),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Full Name in Native Alphabet",
                          style: GoogleFonts.quicksand(
                              color: Colors.black, fontSize: 22),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          helperText: "Eg., FERNANDEZ GARCIA"),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Checkbox(value: false, onChanged: (val) {}),
                    Text(
                      "Does Not Apply/Technology Not Available",
                      style: GoogleFonts.quicksand(
                          color: Colors.black, fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: Column(
            children: [
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.white, Colors.white.withOpacity((0))])),
              ),
            ],
          ),
        ),
        Positioned.fill(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.white.withOpacity(0), Colors.white])),
              ),
            ],
          ),
        )
      ],
    );
  }
}
