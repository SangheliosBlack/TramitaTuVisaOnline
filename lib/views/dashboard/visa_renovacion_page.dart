import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeleton/helpers/extensions.dart';
import 'package:stroke_text/stroke_text.dart';

@RoutePage()
class VisaRenovacionPage extends StatefulWidget {
  const VisaRenovacionPage({super.key});

  @override
  State<VisaRenovacionPage> createState() => _VisaRenovacionPageState();
}

class _VisaRenovacionPageState extends State<VisaRenovacionPage> {
  late ScrollController _scrollController;
  bool isMouseOver = false;
  bool isMouseOver2 = false;
  double opacity = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {
        opacity = _scrollController.offset == 0
            ? 0.0
            : (_scrollController.offset / 100).clamp(0.0, 1.0);
        print(opacity);
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final path = context.router.currentPath.split("/")[1];

    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              width: context.width,
              child: NotificationListener(
                onNotification: (notification) {
                  // Puedes manejar eventos de desplazamiento aquí
                  return false;
                },
                child: ListView.separated(
                  controller: _scrollController,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) =>
                      const TipoTramiteWidget(),
                  separatorBuilder: (_, __) => const SizedBox(
                    width: 25,
                  ),
                  itemCount: 5,
                ),
              ),
            ),
            Positioned.fill(
              child: AnimatedOpacity(
                opacity: opacity,
                duration: const Duration(milliseconds: 300),
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 25,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _scrollController.animateTo(
                            0,
                            duration: const Duration(seconds: 1),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          onEnter: (_) => setState(() => isMouseOver2 = true),
                          onExit: (_) => setState(() => isMouseOver2 = false),
                          child: AnimatedContainer(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: isMouseOver2
                                      ? Colors.orange
                                      : Colors.white),
                              padding: const EdgeInsets.all(15),
                              duration: const Duration(milliseconds: 300),
                              child: Icon(
                                Icons.arrow_back,
                                color:
                                    isMouseOver2 ? Colors.white : Colors.black,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: AnimatedOpacity(
                opacity: opacity == 1 ? 0 : 1,
                duration: const Duration(milliseconds: 300),
                child: MouseRegion(
                  onEnter: (_) => setState(() => isMouseOver = true),
                  onExit: (_) => setState(() => isMouseOver = false),
                  cursor: SystemMouseCursors.click,
                  child: Container(
                    height: context.height - 145,
                    margin: const EdgeInsets.only(right: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _scrollController.animateTo(
                              _scrollController.position.maxScrollExtent,
                              duration: const Duration(seconds: 1),
                              curve: Curves.easeInOut,
                            );
                          },
                          behavior: HitTestBehavior.translucent,
                          child: AnimatedContainer(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: isMouseOver
                                      ? Colors.orange
                                      : Colors.white),
                              padding: const EdgeInsets.all(15),
                              duration: const Duration(milliseconds: 300),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color:
                                    isMouseOver ? Colors.white : Colors.black,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

class TipoTramiteWidget extends StatefulWidget {
  const TipoTramiteWidget({
    super.key,
  });

  @override
  State<TipoTramiteWidget> createState() => _TipoTramiteWidgetState();
}

class _TipoTramiteWidgetState extends State<TipoTramiteWidget> {
  bool enabled = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: MouseRegion(
        hitTestBehavior: HitTestBehavior.translucent,
        cursor: SystemMouseCursors.click,
        onEnter: (e) {
          setState(() {
            enabled = true;
          });
        },
        onExit: (e) {
          setState(() {
            enabled = false;
          });
        },
        child: AnimatedContainer(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.orange.withOpacity(enabled ? 1 : 0), width: 5),
              borderRadius: BorderRadius.circular(25)),
          duration: const Duration(milliseconds: 200),
          child: Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        enabled ? Colors.transparent : Colors.grey,
                        BlendMode.saturation),
                    child: Image(
                      image: const NetworkImage(
                        "https://images.unsplash.com/photo-1605833556294-ea5c7a74f57d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D",
                      ),
                      errorBuilder: (context, error, stackTrace) {
                        print("Error loading image: $error");
                        return const Text("Error loading image");
                      },
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                width: context.width / 3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        end: Alignment.topCenter,
                        begin: Alignment.bottomCenter,
                        stops: const [.35, 1],
                        colors: [Colors.black, Colors.black.withOpacity(.0)])),
              ),
              Container(
                width: context.width / 3,
                height: context.height - 180,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Mas informacion",
                          style: GoogleFonts.quicksand(
                              color: Colors.white,
                              decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      "VISA PRIMERA VEZ",
                      style:
                          GoogleFonts.lato(color: Colors.white, fontSize: 30),
                      overflow: TextOverflow.visible,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    StrokeText(
                      text: "\$ 899.00",
                      strokeColor: Colors.white,
                      strokeWidth: 1,
                      textColor: Colors.transparent,
                      textStyle: GoogleFonts.roboto(
                          color: Colors.transparent, fontSize: 50),
                    ),
                    Text(
                      "*aplica restricciones",
                      style: GoogleFonts.quicksand(
                          color: Colors.grey, fontSize: 10),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_month,
                          color: Colors.white,
                          size: 16,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Mas inforamacion",
                          style: GoogleFonts.quicksand(color: Colors.white),
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_month,
                          color: Colors.white,
                          size: 16,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Mas inforamacion",
                          style: GoogleFonts.quicksand(color: Colors.white),
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_month,
                          color: Colors.white,
                          size: 16,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Mas inforamacion",
                          style: GoogleFonts.quicksand(color: Colors.white),
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
    );
  }
}
