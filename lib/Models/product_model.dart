import 'package:cloud_firestore/cloud_firestore.dart';

class Producto {
  final String nombre;
  final int precio;
  final String imagenUrl;
  final String menu;

  const Producto(
      {required this.nombre,
      required this.precio,
      required this.imagenUrl,
      required this.menu});

  static Producto fromSnapshot(DocumentSnapshot snap) {
    Producto producto = Producto(
      nombre: snap['nombre'],
      precio: snap['precio'],
      imagenUrl: snap['imagenUrl'],
      menu: snap['menu'],
    );
    print(producto.precio);
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

class Menu {
  final String nombre;
  final String restId;

  const Menu({
    required this.nombre,
    required this.restId,
  });

  static Menu fromSnapshot(DocumentSnapshot snap) {
    Menu menu = Menu(
      nombre: snap['nombre'],
      restId: snap['restId'],
    );
    return menu;
  }
}
