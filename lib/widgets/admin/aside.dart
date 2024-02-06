import 'package:flutter/material.dart';
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
      reverseDuration: const Duration(milliseconds: 200),
      duration: const Duration(milliseconds: 200),
      child: SizedBox(
        width: isOpen ? 280 : 90,
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
                              Container(
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.grey.withOpacity(.4))),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: const SizedBox(
                                    height: 35,
                                    width: 35,
                                    child: Image(
                                      image: NetworkImage(
                                          "https://t3.ftcdn.net/jpg/05/16/27/58/360_F_516275801_f3Fsp17x6HQK0xQgDQEELoTuERO4SsWV.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Julio Villagrana",
                                    style: GoogleFonts.quicksand(
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "Desarrollador",
                                    style: GoogleFonts.quicksand(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromRGBO(2, 2, 2, 1)),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.arrow_forward_rounded,
                                  color: Colors.white,
                                  size: 13,
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
                        Icons.person,
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
