import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeleton/config/global.dart';
import 'package:skeleton/models/menu_option_model.dart';
import 'package:skeleton/widgets/admin/aside_option.dart';

class AsideLayout extends StatefulWidget {
  const AsideLayout({super.key});

  @override
  State<AsideLayout> createState() => _AsideLayoutState();
}

class _AsideLayoutState extends State<AsideLayout> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      reverseDuration: const Duration(milliseconds: 200),
      duration: const Duration(milliseconds: 200),
      child: SizedBox(
        width: 250,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        const FlutterLogo(),
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
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      padding: const EdgeInsets.all(5),
                      child: ListView.separated(
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (_, i) => AsideOptionWidget(
                          menuOption: Statics.listMenuOptions[i],
                        ),
                        separatorBuilder: (_, __) => const Gap(5),
                        itemCount: Statics.listMenuOptions.length,
                      ),
                    ),
                    Positioned.fill(
                      bottom: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    stops: const [.1, .8],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.black.withOpacity(.1),
                                      Colors.black,
                                    ])),
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    Positioned.fill(
                      top: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    stops: const [.1, .8],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.black,
                                      Colors.black.withOpacity(.1),
                                    ])),
                            height: 20,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10, bottom: 10),
                child: Divider(
                  color: Colors.grey.withOpacity(.1),
                  height: 1,
                  indent: 10,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  children: [
                    AsideOptionWidget(
                      menuOption: MenuOption(
                          titulo: "Cerrar sesion",
                          icono: BootstrapIcons.box_arrow_left,
                          subMenu: []),
                    ),
                    const Gap(5),
                    AsideOptionWidget(
                      menuOption: MenuOption(
                          titulo: "Configuracion",
                          icono: BootstrapIcons.gear_wide_connected,
                          subMenu: []),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Badge(
                          backgroundColor:
                              const Color.fromRGBO(178, 254, 189, 1),
                          alignment: Alignment.bottomRight,
                          smallSize: 15,
                          child: Container(
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    width: 1,
                                    color: Colors.grey.withOpacity(.4))),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: const SizedBox(
                                height: 45,
                                width: 45,
                                child: Image(
                                  image: NetworkImage(
                                      "https://scontent.fntr10-1.fna.fbcdn.net/v/t39.30808-6/340763471_2316724038510720_8957264582514588295_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_ohc=8YaQWGH0FdIAX9bpxAD&_nc_ht=scontent.fntr10-1.fna&oh=00_AfAV5ryoyjmqx0tLkI-fZotb3d7Ng6-d1qBssgIsLQVzpg&oe=65F216CA"),
                                  fit: BoxFit.cover,
                                ),
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
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "@jvillagrana",
                              style: GoogleFonts.quicksand(
                                  color: Colors.grey, fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromRGBO(2, 2, 2, 1)),
                      child: const Row(
                        children: [
                          Icon(
                            BootstrapIcons.arrow_return_right,
                            color: Colors.white,
                            size: 20,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
