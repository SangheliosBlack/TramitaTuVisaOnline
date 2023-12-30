import 'package:skeleton/models/menu_option_model.dart';
import 'package:flutter/material.dart';

class Statics {
  static List<MenuOption> listMenuOptions = [
    MenuOption(titulo: "Home", icono: Icons.dashboard, subMenu: []),
    MenuOption(titulo: "Tramites", icono: Icons.description, subMenu: [
      "VISA Primera vez",
      "VISA Renovacion",
      "Global Entry",
      "Pasaporte Mexicano"
    ]),
    MenuOption(titulo: "Tiempos de espera", icono: Icons.route, subMenu: []),
    MenuOption(
      titulo: "Clientes",
      icono: Icons.diversity_3,
      subMenu: [],
    ),
    MenuOption(
      titulo: "Usuarios",
      icono: Icons.public,
      subMenu: ["Referidos", "Sistema"],
    )
  ];
}
