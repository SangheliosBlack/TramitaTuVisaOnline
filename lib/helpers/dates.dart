import 'package:intl/intl.dart';

String dateTimeParse({required DateTime date}) {
  DateTime fecha = date.toLocal();

  String nuevaFechaString2 = DateFormat("dd/MM/yyyy", "es-MX").format(fecha);

  return nuevaFechaString2.toString();
}
