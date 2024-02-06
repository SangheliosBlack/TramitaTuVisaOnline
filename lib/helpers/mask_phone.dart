String formatPhone({required String numero}) {
  // Asegurarse de que el número tenga la longitud esperada
  if (numero.length != 10) {
    throw ArgumentError("El número de teléfono debe tener 10 dígitos.");
  }

  // Aplicar el formato deseado
  return "${numero.substring(0, 3)}-${numero.substring(3, 6)}-${numero.substring(6)}";
}
