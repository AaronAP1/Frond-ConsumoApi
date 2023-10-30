class Usuario {
  int id;
  String dni;
  String nombre;
  String apellidop;
  String apellidom;
  String correo;
  int telefono;
  String direccion;
  String contrasena;


  Usuario({
    required this.id, required this.dni,
    required this.nombre,
    required this.apellidop,
    required this.apellidom,
    required this.correo,
    required this.telefono,
    required this.direccion,
    required this.contrasena,

  });

  factory Usuario.fromJson(Map json){
    return Usuario(
      id: json["id"],
      dni: json["dni"],
      nombre: json["nombres"],
      apellidop: json["apellidop"],
      apellidom: json["apellidom"],
      correo: json["correo"],
      telefono: json["telefono"],
      direccion: json["direccion"],
      contrasena: json["contraseña"],

    );
  }
}