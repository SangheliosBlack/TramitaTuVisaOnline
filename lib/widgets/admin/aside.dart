import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeleton/config/global.dart';
import 'package:skeleton/widgets/admin/aside_option.dart';

class AsideLayout extends StatefulWidget {
  const AsideLayout({super.key});

  @override
  State<AsideLayout> createState() => _AsideLayoutState();
}

bool isOpen = true;

class _AsideLayoutState extends State<AsideLayout> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 200),
      child: SizedBox(
        width: isOpen ? 280 : 100,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: const Color.fromRGBO(30, 30, 30, 1),
                      child: Text(
                        "T",
                        style: GoogleFonts.quicksand(color: Colors.white),
                      ),
                    ),
                    isOpen
                        ? Row(
                            children: [
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Tramita tu VISA",
                                style: GoogleFonts.quicksand(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          )
                        : Container(),
                  ],
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Container(
                margin: const EdgeInsets.only(left: 15, top: 10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isOpen = !isOpen;
                    });
                  },
                  child: Icon(isOpen ? Icons.chevron_left : Icons.chevron_right,
                      color: Colors.white),
                ),
              ),
              isOpen
                  ? Container(
                      margin: const EdgeInsets.only(top: 15),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.1),
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.grey.withOpacity(.3),
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Buscar aqui",
                                style: GoogleFonts.quicksand(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromRGBO(2, 2, 2, 1)),
                            child: Row(
                              children: [
                                const FaIcon(
                                  FontAwesomeIcons.windows,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "S",
                                  style: GoogleFonts.quicksand(
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  : Container(
                      margin: const EdgeInsets.only(top: 17),
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.1),
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.grey.withOpacity(.3),
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
              const SizedBox(
                height: 30,
              ),
              Text(
                isOpen ? "MENU PRINCIPAL" : "",
                style: GoogleFonts.quicksand(color: Colors.white),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromRGBO(30, 30, 30, 1)),
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (_, i) => AsideOptionWidget(
                      isOpen: isOpen,
                      menuOption: Statics.listMenuOptions[i],
                    ),
                    separatorBuilder: (_, __) => Container(),
                    itemCount: Statics.listMenuOptions.length,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
