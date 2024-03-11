
import 'package:skeleton/helpers/service_message.dart';
import 'package:skeleton/models/user.dart';

class AuthResponse<T> {
  AuthResponse({
    required this.status,
    required this.message,
    this.usuario,
  });

  String status;
  String message;
  Usuario? usuario;
}

class AuthRSuccess<T> extends AuthResponse<T> {
  AuthRSuccess({
    String message = ServiceMessages.messageSuccess,
    Usuario? usuario,
  }) : super(
          status: ServiceMessages.success,
          message: message,
          usuario: usuario,
        );
}

class AuthRError<T> extends AuthResponse<T> {
  AuthRError({
    String message = ServiceMessages.messageError,
    Usuario? usuario,
  }) : super(
          status: ServiceMessages.messageError,
          message: message,
          usuario: usuario,
        );
}

