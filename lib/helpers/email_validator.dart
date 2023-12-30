String? emailValidator({required String email}) {
    final RegExp regex =
        RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');

    if (regex.hasMatch(email)) {
      return null;
    } else {
      return "Email invalido";
    }
  }