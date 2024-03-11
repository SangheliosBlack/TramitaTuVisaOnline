import 'dart:convert';

import 'package:skeleton/models/auth_response.dart';
import 'package:skeleton/models/user.dart';
import 'package:skeleton/services/http_service.dart';

class AuthRepository {
  final HttpService httpService;

  AuthRepository({required this.httpService});

  Future<AuthResponse<String>> login(
      {required String userName, required String password}) async {
    try {
      final response = await httpService.post(
          path: '/auth/login', data: {'email': userName, 'password': password});

      print(response.body);

      final result = (jsonDecode(response.body));

      print(result);

      httpService.actualizarToken(result["accessToken"]);

      switch (response.statusCode) {
        case 200:
          return AuthRSuccess<String>(
            message: result["message"] ?? 'not message',
            usuario: Usuario.fromJson(result["user"]),
          );
        default:
          return AuthRError(message: result["message"]);
      }
    } catch (e) {
      print("error");
      print(e);
      return AuthRError();
    }
  }

  Future<AuthResponse<String>> isLoggedIn() async {
    try {
      final response = await httpService.get(
        path: '/auth/renewCode',
      );

      final result = (jsonDecode(response.body));

      switch (response.statusCode) {
        case 200:
          httpService.actualizarToken(result["accessToken"]);
          return AuthRSuccess<String>(
            message: result["message"] ?? "not message",
            usuario: Usuario.fromJson(result["user"]),
          );
        default:
          return AuthRError(message: result["message"]);
      }
    } catch (e) {
      print(e);
      return AuthRError();
    }
  }
}
