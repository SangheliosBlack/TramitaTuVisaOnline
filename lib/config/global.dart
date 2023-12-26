import 'package:skeleton/models/menu_option_model.dart';
import 'package:flutter/material.dart';

class Statics {
  static List<MenuOption> listMenuOptions = [
    MenuOption(titulo: "Home", icono: Icons.dashboard, subMenu: []),
    MenuOption(
        titulo: "Ingresar registro",
        icono: Icons.app_registration,
        subMenu: ["Carta porte", "Metricos", "Facturas", "Inventarios"]),
    MenuOption(
        titulo: "Registros Tresga",
        icono: Icons.description,
        subMenu: ["Fletes", "Metricos", "Facturas", "Inventarios"]),
    MenuOption(
        titulo: "Planeacion logistica",
        icono: Icons.route,
        subMenu: ["Puntos de recoleccion", "Puntos de Descarga"]),
    MenuOption(
      titulo: "Flotilla de transporte",
      icono: Icons.local_shipping,
      subMenu: ["Unidades", "Tanques", "Cajas Secas"],
    ),
    MenuOption(
      titulo: "Proveedores",
      icono: Icons.handshake,
      subMenu: ["Proveedores", "Vales de servicio"],
    ),
    MenuOption(
      titulo: "Clientes",
      icono: Icons.diversity_3,
      subMenu: [],
    ),
    MenuOption(
      titulo: "Equipo",
      icono: Icons.public,
      subMenu: ["Empleados", "Usuarios"],
    )
  ];
}
