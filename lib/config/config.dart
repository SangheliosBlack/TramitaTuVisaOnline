// config_dev.dart

import 'package:ansicolor/ansicolor.dart';
import 'package:logging/logging.dart';
import 'package:skeleton/helpers/colorized_helper.dart';
import 'package:skeleton/helpers/logger.dart';

class Developer {
  final backendUrl = "http://192.168.100.24";
  //final backendUrl = "https://www.tramitesvisaonline.com/api/v1";
  final port = "3000";
  final apiVersion = "api/v1";
  Logger logger = LogHelper.getLogger(LogNames.SERVER_CONNECTION);

  String apiUrl() {
    if (port.isNotEmpty) {
      logger.info(colorize(
          "Conectado a la dirección $backendUrl en el puerto $port",
          AnsiPen()..green()));
    } else {
      logger.info("Conectado a la dirección $backendUrl");
    }

    if (port.isNotEmpty) {
      return '$backendUrl:$port/$apiVersion';
    } else {
      return backendUrl;
    }
  }
}
