import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeleton/helpers/extensions.dart';

@RoutePage()
class VisaPrimeraVezPage
 extends StatelessWidget {
  const VisaPrimeraVezPage
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.only(top: 100, bottom: 130, left: 70, right: 70),
        width: context.width,
        height: context.height,
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 00,
                      sigmaY: 00,
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Visa primera vez",
                            style: GoogleFonts.quicksand(
                                color: Colors.black, fontSize: 40),
                          ),
                          const Divider(),
                          Text(
                            "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500,",
                            style: GoogleFonts.quicksand(color: Colors.grey),
                            overflow: TextOverflow.visible,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: ColorFiltered(
                                      colorFilter: const ColorFilter.mode(
                                          Colors.grey, BlendMode.saturation),
                                      child: Image(
                                        image: const NetworkImage(
                                          "https://images.unsplash.com/photo-1605833556294-ea5c7a74f57d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D",
                                        ),
                                        errorBuilder:
                                            (context, error, stackTrace) {
                                          print("Error loading image: $error");
                                          return const Text("Error loading image");
                                        },
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 20),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 15),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Text(
                                        "BENEFICIO 1",
                                        style: GoogleFonts.quicksand(
                                            color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 20),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 15),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Text(
                                        "BENEFICIO 2",
                                        style: GoogleFonts.quicksand(
                                            color: Colors.white),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(
                  width: 30,
                ),
                Text(
                  "Continuar",
                  style:
                      GoogleFonts.quicksand(color: Colors.black, fontSize: 25),
                ),
                const SizedBox(width: 20),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: const Icon(Icons.arrow_forward, color: Colors.black),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
