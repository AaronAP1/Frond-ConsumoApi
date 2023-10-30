class Producto {
  int id;
  String nombre;
  String proveedor;
  String descripcion;
  int stock;

  Producto({
    required this.id, required this.nombre, required this.proveedor, required this.descripcion ,
    required this.stock
});

  factory Producto.fromJson(Map json){
    return Producto(
      id: json["id"],
      nombre: json["nombre"],
      proveedor: json["proveedor"],
      descripcion: json["descripcion"],
      stock: json["stock"]

    );
  }





}