import 'package:auto_route/auto_route.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeleton/views/admin/nuevo_tramite_page.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController pageController;
  late ValueNotifier<int> currentPageNotifier;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0, viewportFraction: 1);
    currentPageNotifier = ValueNotifier<int>(0);

    pageController.addListener(() {
      currentPageNotifier.value = pageController.page?.round() ?? 0;
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    currentPageNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Tramites",
              style: GoogleFonts.quicksand(color: Colors.black, fontSize: 30),
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                )),
            GestureDetector(
              onTap: () {
                pageController.animateToPage(0,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear);
              },
              behavior: HitTestBehavior.translucent,
              child: Text(
                "Visa Primera Vez",
                style:
                    GoogleFonts.quicksand(color: Colors.black, fontSize: 30),
              ),
            ),
            ValueListenableBuilder<int>(
              valueListenable: currentPageNotifier,
              builder: (context, currentPage, child) {
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: currentPage == 1
                      ? Row(
                          children: [
                            Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 6),
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                )),
                            Text(
                              "Nuevo tramite",
                              style: GoogleFonts.quicksand(
                                  color: Colors.black, fontSize: 30),
                            ),
                          ],
                        )
                      : Container(),
                );
              },
            ),
          ],
        ),
        const Divider(),
        Expanded(
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            children: [
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        pageController.animateToPage(1,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.linear);
                      },
                      behavior: HitTestBehavior.translucent,
                      child: Row(
                        children: [
                          Expanded(
                            child: DottedBorder(
                              borderType: BorderType.RRect,
                              radius: const Radius.circular(100),
                              padding: const EdgeInsets.all(6),
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(12)),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 5),
                                    child: Text(
                                      "Agregar nuevo tramite",
                                      style: GoogleFonts.quicksand(
                                          color: Colors.black),
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            child: const Icon(
                              FontAwesomeIcons.faceSadTear,
                              size: 70,
                            ),
                          ),
                          Text(
                            "Nada que mostrar, realiza tu primer tramite!!",
                            style: GoogleFonts.quicksand(
                                color: Colors.black, fontSize: 25),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const NuevoTramiteView()
            ],
          ),
        )
      ],
    ));
  }

  // Función para obtener la página actual
  int getCurrentPage() {
    try {
      return pageController.page?.round() ?? 0;
    } catch (e) {
      return 0;
    }
  }
}
