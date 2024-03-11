import 'package:intl/intl.dart';

String dateParse({required DateTime date}) {
  DateTime fecha = date.toLocal();

  String nuevaFechaString2 = DateFormat("dd/MM/yyyy", "es-MX").format(fecha);

  return nuevaFechaString2.toString();
}

String dateStringParse({required String date}) {
  DateTime dateTime = DateTime.parse(date);

  String newDateTime = DateFormat("dd/MM/yyyy", "es-MX").format(dateTime);

  return newDateTime;
}

String dateTimeParse({required DateTime date}) {
  DateTime fecha = date.toLocal();

  String nuevaFechaString2 =
      DateFormat("dd/MM/yyyy HH:mm:ss", "es-MX").format(fecha);

  return nuevaFechaString2.toString();
}

String obtenerDiaSemana(DateTime fecha) {
  // Crear un objeto DateFormat para obtener el nombre del día de la semana
  final formatoDiaSemana = DateFormat('EEEE', 'es');

  // Utilizar el objeto para formatear la fecha y obtener el día de la semana
  final diaSemana = formatoDiaSemana.format(fecha);

  return diaSemana.toUpperCase();
}
String obtenerNombreMes(DateTime fecha) {
  // Crear un objeto DateFormat para obtener el nombre del mes
  final formatoNombreMes = DateFormat('MMMM', 'es');

  // Utilizar el objeto para formatear la fecha y obtener el nombre del mes
  final nombreMes = formatoNombreMes.format(fecha);

  return nombreMes;
}

String obtenerTiempoTranscurrido({required DateTime date}) {
  DateTime fechaActual = DateTime.now();
  Duration diferencia = fechaActual.difference(date);

  if (diferencia.inSeconds < 60) {
    return 'hace ${diferencia.inSeconds} segundos';
  } else if (diferencia.inMinutes < 60) {
    return 'hace ${diferencia.inMinutes} minutos';
  } else if (diferencia.inHours < 24) {
    return 'hace ${diferencia.inHours} horas';
  } else if (diferencia.inDays < 7) {
    return 'hace ${diferencia.inDays} días';
  } else if (diferencia.inDays < 30) {
    int semanas = (diferencia.inDays / 7).floor();
    return 'hace $semanas semanas';
  } else if (diferencia.inDays < 365) {
    int meses = (diferencia.inDays / 30).floor();
    return 'hace $meses meses';
  } else {
    int anos = (diferencia.inDays / 365).floor();
    return 'hace $anos años';
  }
}
