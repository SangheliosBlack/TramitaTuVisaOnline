import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import 'package:skeleton/themes/main_theme.dart';
import 'package:skeleton/views/dashboard/pasos/paso1.dart';

class NuevoTramiteView extends StatelessWidget {
  const NuevoTramiteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Divider(
            indent: 0,
            thickness: 0,
            endIndent: 0,
            height: 0,
            color: Themes.secondary,
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: const [Paso1()],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15),
                width: 1,
                height: double.infinity,
              ),
              Container(
                width: 270,
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nuevo tramite",
                      style: GoogleFonts.quicksand(
                        color: Colors.black,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const StepWidget(
                            titulo: 'Personal 1',
                            completado: false,
                            timepo: 20,
                          ),
                          const StepWidget(
                            titulo: 'Personal 2',
                            completado: false,
                            timepo: 2,
                          ),
                          const StepWidget(
                            titulo: 'Travel',
                            completado: false,
                            timepo: 10,
                          ),
                          const StepWidget(
                            titulo: 'Travel Companions',
                            completado: false,
                            timepo: 5,
                          ),
                          const StepWidget(
                            titulo: 'Previous U.S. Travel',
                            completado: false,
                            timepo: 10,
                          ),
                          const StepWidget(
                            titulo: 'Address and Phone',
                            completado: false,
                            timepo: 20,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total: ",
                          style: GoogleFonts.quicksand(
                              color: Colors.black, fontSize: 20),
                        ),
                        Text(
                          "\$899.90",
                          style: GoogleFonts.bebasNeue(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Finalizar",
                          style: GoogleFonts.quicksand(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}

class StepWidget extends StatelessWidget {
  final bool completado;
  final String titulo;
  final int timepo;
  const StepWidget(
      {super.key,
      required this.titulo,
      required this.completado,
      required this.timepo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 15),
                  height: 30,
                  width: 30,
                  child: SimpleCircularProgressBar(
                    progressStrokeWidth: 5,
                    backStrokeWidth: 5,
                    backColor: Colors.grey.withOpacity(.2),
                    fullProgressColor: Colors.orange,
                    progressColors: const [Colors.black],
                    valueNotifier: ValueNotifier(10),
                    mergeMode: false,
                    maxValue: 100,
                    onGetText: (value) {
                      return Text(
                        '${value.toInt()}',
                        style: GoogleFonts.quicksand(
                            color: Colors.black, fontSize: 10),
                      );
                    },
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titulo,
                      style: GoogleFonts.quicksand(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      completado ? "Completado" : "Incompleto",
                      style: GoogleFonts.quicksand(
                          color: Colors.blueGrey, fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
          ),
          Text(
            "${timepo}m",
            style: GoogleFonts.quicksand(color: Colors.black),
          )
        ],
      ),
    );
  }
}
