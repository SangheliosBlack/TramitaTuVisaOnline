import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:skeleton/helpers/extensions.dart';

@RoutePage()
class DashBoardDefaultPage extends StatefulWidget {
  const DashBoardDefaultPage({super.key});

  @override
  State<DashBoardDefaultPage> createState() => _DashBoardDefaultViewState();
}

class _DashBoardDefaultViewState extends State<DashBoardDefaultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
        resizeToAvoidBottomInset: true,
        extendBody: true,
        body: Stack(
          children: [
            Positioned.fill(
                child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.white, Colors.grey])),
            )),
            Positioned.fill(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: Container(
                      height: context.height - 60,
                      child: const Image(
                        image: AssetImage("assets/images/f2.jpg"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            )),
            Positioned.fill(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 120,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "TRAMITA",
                        style: GoogleFonts.anton(
                            height: 1, color: Colors.black, fontSize: 200),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "TU",
                            style: GoogleFonts.anton(
                                height: .8, color: Colors.red, fontSize: 80),
                          ),
                          Text(
                            "VISA",
                            style: GoogleFonts.anton(
                                height: 1, color: Colors.blue, fontSize: 80),
                          ),
                        ],
                      )
                    ],
                  ),
                  Text(
                    "ONL   INE",
                    style: GoogleFonts.anton(
                        height: .9, color: Colors.white, fontSize: 200),
                  ),
                ],
              ),
            ),
            Positioned(
                child: Container(
              width: context.width,
              height: context.height,
              child: const Image(
                image: AssetImage("assets/images/f1.png"),
                fit: BoxFit.contain,
              ),
            )),
            Positioned(
              top: 50,
              right: 50,
              child: Row(
                children: [
                  Container(
                    width: 250,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(width: 1, color: Colors.black)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.search,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Alguna busqueda",
                          style: GoogleFonts.quicksand(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 30,
                        height: 3,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        width: 30,
                        margin: const EdgeInsets.only(top: 5),
                        height: 3,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        width: 30,
                        height: 3,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        width: 30,
                        height: 3,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              left: 80,
              child: Container(
                height: context.height,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            width: 2,
                            color: Colors.black.withOpacity(.2),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 2,
                              color: Colors.black,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 33,
                                  height: 33,
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.black,
                                      )),
                                  child: Center(
                                    child: Text(
                                      "1",
                                      style: GoogleFonts.quicksand(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Renovacion",
                                  style: GoogleFonts.quicksand(
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 2,
                              color: Colors.black.withOpacity(.2),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 33,
                                  height: 33,
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.black.withOpacity(.1),
                                      )),
                                  child: Center(
                                    child: Text(
                                      "2",
                                      style: GoogleFonts.quicksand(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Primera vez",
                                  style:
                                      GoogleFonts.quicksand(color: Colors.grey),
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 2,
                              color: Colors.black.withOpacity(.2),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 33,
                                  height: 33,
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.black.withOpacity(.1),
                                      )),
                                  child: Center(
                                    child: Text(
                                      "3",
                                      style: GoogleFonts.quicksand(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Otro",
                                  style:
                                      GoogleFonts.quicksand(color: Colors.grey),
                                )
                              ],
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            width: 2,
                            color: Colors.black.withOpacity(.2),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              right: 40,
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.3),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Que esperas? Hoy te recomendamos",
                      style: GoogleFonts.quicksand(color: Colors.black),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                              width: 145,
                              height: 145,
                              child: Image(
                                image: NetworkImage(
                                    "https://a.cdn-hotels.com/gdcs/production92/d1580/9a28fc70-9bea-11e8-a1b5-0242ac110053.jpg?impolicy=fcrop&w=800&h=533&q=medium"),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              Text(
                                "San Francisco, CA",
                                style: GoogleFonts.quicksand(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 115,
                                child: Text(
                                  "Lorem Ipsum es simplemente el texto de relleno de las imprentas",
                                  overflow: TextOverflow.visible,
                                  style: GoogleFonts.quicksand(
                                      color: Colors.grey, fontSize: 12),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                width: 115,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(.6),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    "VER MAS",
                                    style: GoogleFonts.quicksand(
                                        color: Colors.black),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Row(
                children: [
                  const Icon(FontAwesomeIcons.paperPlane),
                  const SizedBox(
                    width: 40,
                  ),
                  Text(
                    "NOMBRE DE TU EMPRESA",
                    style: GoogleFonts.quicksand(
                        color: Colors.black, fontSize: 17),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 200,
              child: Container(
                width: context.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 280,
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black)),
                      child: Center(
                        child: Text(
                          "INICIAR",
                          style: GoogleFonts.quicksand(
                              color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
