import 'package:flutter/material.dart';

class ColorManager {
  final List<Color> _colores = [
    const Color.fromRGBO(113, 163, 194, 1),
    const Color.fromRGBO(193, 103, 180, 1),
    const Color.fromRGBO(76, 182, 92, 1),
    const Color.fromRGBO(200, 144, 75, 1),
  ];

  Color avatarColor(int indice) {
    // Obtén el índice real considerando la repetición cada 4
    int indiceReal = indice % _colores.length;

    return _colores[indiceReal];
  }
}
