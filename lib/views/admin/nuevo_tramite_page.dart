import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeleton/views/dashboard/pasos/paso1.dart';
import 'package:skeleton/widgets/admin/stepper/step.dart';

class NuevoTramiteView extends StatelessWidget {
  const NuevoTramiteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          const Row(
            children: [
              StepWidget(
                title: 'Personal',
                completed: false,
                label: 'Paso 1',
              ),
              StepWidget(
                title: 'Travel',
                completed: false,
                label: 'Paso 2',
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: Stack(
            children: [
              Positioned.fill(
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: const [ Paso1()],
                ),
              ),
              Positioned(
                bottom: 25,
                right: 25,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.05),
                          offset: const Offset(0, 2),
                          blurRadius: 10,
                          spreadRadius: 3,
                        ),
                      ]),
                  child: Row(
                    children: [
                      Text(
                        "Continuar",
                        style: GoogleFonts.quicksand(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
