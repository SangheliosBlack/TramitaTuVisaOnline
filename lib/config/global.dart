import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:skeleton/models/menu_option_model.dart';

class Statics {
  static List<MenuOption> listMenuOptions = [
    MenuOption(titulo: "Home", icono: BootstrapIcons.house, subMenu: []),
    MenuOption(titulo: "Tramites", icono: BootstrapIcons.archive, subMenu: [
      "VISA Primera vez",
      "VISA Renovacion",
      "Global Entry",
      "Pasaporte Mexicano"
    ]),
    MenuOption(
      titulo: "Usuarios",
      icono: BootstrapIcons.person,
      subMenu: ["Administracion", "Plataforma"],
    ),
    MenuOption(
        titulo: "Tiempos de espera",
        icono: BootstrapIcons.calendar_event,
        subMenu: []),
    MenuOption(
      titulo: "Referidos",
      icono: BootstrapIcons.globe_americas,
      subMenu: [],
    ),
  ];
}
