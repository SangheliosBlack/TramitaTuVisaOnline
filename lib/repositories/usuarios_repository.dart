import 'dart:convert';

import 'package:skeleton/models/general_response.dart';
import 'package:skeleton/models/user.dart';
import 'package:skeleton/services/http_service.dart';

class UsuariosRepository {
  final HttpService httpService;

  UsuariosRepository({required this.httpService});

  Future<GeneralResponse> getAllInternalUsers() async {
    try {
      final response = await httpService.get(
        path: '/users/internal',
      );

      await Future.delayed(const Duration(seconds: 1));

      final result = (jsonDecode(response.body));

      switch (response.statusCode) {
        case 200:
          return ResponseSuccess<List<Usuario>>(
              message: result["message"] ?? "not message",
              data: listUsuarioFromJson(result["doc"]["data"]));
        default:
          return ResponseError(message: result["message"]);
      }
    } catch (e) {
      return ResponseError(message: 'Unknow error');
    }
  }

  Future<GeneralResponse> getUsers() async {
    try {
      final response = await httpService.get(
        path: '/users',
      );

      await Future.delayed(const Duration(seconds: 1));

      final result = (jsonDecode(response.body));

      switch (response.statusCode) {
        case 200:
          return ResponseSuccess<List<Usuario>>(
              message: result["message"] ?? "not message",
              data: listUsuarioFromJson(result["doc"]["data"]));
        default:
          return ResponseError(message: result["message"]);
      }
    } catch (e) {
      return ResponseError(message: 'Unknow error');
    }
  }

  Future<GeneralResponse> getReferredUsers() async {
    try {
      final response = await httpService.get(
        path: '/users/referred',
      );

      await Future.delayed(const Duration(seconds: 1));

      final result = (jsonDecode(response.body));

      switch (response.statusCode) {
        case 200:
          return ResponseSuccess<List<Usuario>>(
              message: result["message"] ?? "not message",
              data: listUsuarioFromJson(result["doc"]["data"]));
        default:
          return ResponseError(message: result["message"]);
      }
    } catch (e) {
      return ResponseError(message: 'Unknow error');
    }
  }
}
