String? passwordValidator(String? value) {
    if (value!.isEmpty) return "Ingrese una contraseña";
    final password = value.trim();

    if (password.length >= 8) {
      return null;
    } else {
      return "Minimo 8 caracteres";
    }
  }