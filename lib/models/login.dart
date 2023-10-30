class login{

  String dni;
  String contrasena;

  login({
    required this.dni, required this.contrasena,
  });

  factory login.fromJson(Map json){
    return login(
      dni: json["dni"],
      contrasena: json["contraseña"]
    );
  }
}