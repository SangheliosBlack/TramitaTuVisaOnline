import 'dart:convert';

import 'package:skeleton/helpers/service_message.dart';


class AuthResponse<T> {
  AuthResponse(
      {required this.status,
      required this.message,
      this.usuario,
      });

  String status;
  String message;
  Usuario? usuario;
}

class AuthRSuccess<T> extends AuthResponse<T> {
  AuthRSuccess(
      {String message = ServiceMessages.messageSuccess,
      Usuario? usuario,
      })
      : super(
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

Usuario usuarioFromJson(String str) => Usuario.fromJson(json.decode(str));


class Usuario {
  String id;
  String email;
  String phone;
  String name;
  String role;

  Usuario({
    required this.id,
    required this.email,
    required this.name,
    required this.phone,
    required this.role
  });

  factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
    role:json["role"],
        id: json["id"],
        email: json["email"],
        phone: json["phone"],
         name: json["name"],
      );

}

