import 'package:auto_route/auto_route.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeleton/helpers/extensions.dart';
import 'package:skeleton/themes/main_theme.dart';
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
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  pageController.animateToPage(0,
                                      duration:
                                          const Duration(milliseconds: 300),
                                      curve: Curves.linear);
                                },
                                behavior: HitTestBehavior.translucent,
                                child: Text(
                                  "Visa Primera Vez",
                                  style: GoogleFonts.quicksand(
                                      color: Colors.black, fontSize: 25),
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
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 6),
                                                  child: const Icon(
                                                    Icons.arrow_forward_ios,
                                                    size: 15,
                                                  )),
                                              Text(
                                                "Nuevo tramite",
                                                style: GoogleFonts.quicksand(
                                                    color: Colors.black,
                                                    fontSize: 25),
                                              ),
                                            ],
                                          )
                                        : Container(),
                                  );
                                },
                              ),
                            ],
                          ),
                          const Gap(1),
                          Text(
                            "0 documentos",
                            style: GoogleFonts.quicksand(
                                color: Colors.blueGrey, fontSize: 13),
                          ),
                        ],
                      ),
                      GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          pageController.animateToPage(1,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.linear);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromRGBO(66, 84, 237, 1)),
                          child: Text(
                            "Nuevo tramite",
                            style: GoogleFonts.quicksand(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                  const Gap(15),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: context.width,
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 20),
                          decoration: BoxDecoration(
                              color: Themes.secondary,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: Row(
                            children: [
                              const Icon(
                                BootstrapIcons.search,
                                color: Colors.black,
                                size: 20,
                              ),
                              Expanded(
                                  child: Center(
                                child: TextFormField(
                                  style: GoogleFonts.quicksand(
                                      color: Colors.black),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 13, vertical: 13),
                                    fillColor: Colors.transparent,
                                    filled: false,
                                    focusColor: Colors.transparent,
                                    hintText: "Buscar...",
                                    hintStyle: GoogleFonts.quicksand(
                                        color: Colors.black),
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    isDense: true,
                                    enabledBorder: InputBorder.none,
                                  ),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        padding: const EdgeInsets.all(9),
                        decoration: BoxDecoration(
                            color: Themes.secondary,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Text(
                              "Filtrar",
                              style: GoogleFonts.quicksand(color: Colors.black),
                            ),
                            const Gap(5),
                            const Icon(
                              BootstrapIcons.filter,
                              color: Colors.black,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {},
                        behavior: HitTestBehavior.translucent,
                        child: Container(
                          padding: const EdgeInsets.all(9),
                          decoration: BoxDecoration(
                              color: Themes.secondary,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            BootstrapIcons.arrow_clockwise,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        padding: const EdgeInsets.all(9),
                        decoration: BoxDecoration(
                            color: Themes.secondary,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          BootstrapIcons.cloud_download,
                          color: Colors.black,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
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
