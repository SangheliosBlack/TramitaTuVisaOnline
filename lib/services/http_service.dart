import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:skeleton/config/config.dart';
import 'package:skeleton/services/local_storage.dart';

// Reemplaza 'Developer', 'LocalStorage' y 'loadCertificate' con tus propias implementaciones o clases
// Reemplaza 'YourDataClass' con el nombre de tu clase de datos si es necesario.

class HttpService {
  final apiPath = Developer().apiUrl();

  late String token;

  HttpService() {
    token = LocalStorage.prefs.getString('token') ?? "";
  }

  void actualizarToken(String nuevoToken) {
    token = nuevoToken;
    LocalStorage.prefs.setString('token', nuevoToken);
  }

  void eliminarToken() {
    LocalStorage.prefs.remove("token");
  }

  Map<String, String> _headers() {
    return {
      "authorization": "Bearer $token",
      "Content-Type": "application/json"
    };
  }

  Future<http.Response> post(
      {required String path, required Object? data}) async {
    String jsonData = jsonEncode(data);

    print(jsonData);

    return await http.post(Uri.parse(apiPath + path),
        headers: _headers(), body: jsonData);
  }

  Future<http.Response> get({required String path}) async {
    return await http.get(Uri.parse(apiPath + path), headers: _headers());
  }

  Future<http.Response> patch({required String path, Object? data}) async {
    return await http.patch(Uri.parse(apiPath + path),
        headers: _headers(), body: data);
  }

  Future<http.Response> update({required String path, Object? data}) async {
    return await http.post(Uri.parse(apiPath + path),
        headers: _headers(), body: data);
  }

  Future<http.Response> delete({required String path, Object? data}) async {
    return await http.post(Uri.parse(apiPath + path),
        headers: _headers(), body: data);
  }
}
