import 'package:cloud_firestore/cloud_firestore.dart';

class Producto {
  final String id;
  final String nombre;
  final int precio;
  final String imagenUrl;
  final String menu;

  const Producto(
      {required this.id,
      required this.nombre,
      required this.precio,
      required this.imagenUrl,
      required this.menu});

  static Producto fromSnapshot(DocumentSnapshot snap) {
    Producto producto = Producto(
      id: snap.id,
      nombre: snap['nombre'],
      precio: snap['precio'],
      imagenUrl: snap['imagenUrl'],
      menu: snap['menu'],
    );
    return producto;
  }
}

class Restaurante {
  final String nombre;

  const Restaurante({
    required this.nombre,
  });

  static Restaurante fromSnapshot(DocumentSnapshot snap) {
    Restaurante restaurante = Restaurante(
      nombre: snap['nombre'],
    );
    return restaurante;
  }
}
