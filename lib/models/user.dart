import 'dart:convert';

Usuario usuarioFromJson(String str) => Usuario.fromJson(json.decode(str));
List<Usuario> listUsuarioFromJson(List<dynamic> jsonList) {
  return jsonList.map((json) => Usuario.fromJson(json)).toList();
}

class Usuario {
  String id;
  String email;
  String phone;
  String name;
  String role;
  bool online;
  DateTime createAt;
  DateTime lastConnection;

  Usuario(
      {required this.id,
      required this.lastConnection,
      required this.email,
      required this.online,
      required this.name,
      required this.createAt,
      required this.phone,
      required this.role});

  factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
        online: json["online"],
        role: json["role"],
        id: json["id"] ?? json["uid"],
        email: json["email"],
        phone: json["phone"],
        name: json["name"],
        createAt: DateTime.parse(json["createdAt"]),
        lastConnection: DateTime.parse(json["last_connection"]),
      );
}
