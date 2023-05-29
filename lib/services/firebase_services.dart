import 'package:cloud_firestore/cloud_firestore.dart';
import '../Models/product_model.dart';

final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

class FirestoreDB {
  Stream<List<Producto>> getAllProductos() {
    return _firebaseFirestore.collection('Platos').snapshots().map(
      (Snapshot) {
        return Snapshot.docs.map((doc) => Producto.fromSnapshot(doc)).toList();
      },
    );
  }

  Stream<List<Restaurante>> getRestName() {
    return _firebaseFirestore.collection('restaurante').snapshots().map(
      (Snapshot) {
        return Snapshot.docs
            .map((doc) => Restaurante.fromSnapshot(doc))
            .toList();
      },
    );
  }

  Stream<List<Menu>> getMenus() {
    return _firebaseFirestore.collection('menu').snapshots().map(
      (Snapshot) {
        return Snapshot.docs.map((doc) => Menu.fromSnapshot(doc)).toList();
      },
    );
  }
}

Future<void> addClientData(
    String name, String phone, String address, String obs) async {
  await _firebaseFirestore.collection('datos').add({
    "Direccion": address,
    "Nombre": name,
    "Observaciones": obs,
    "Telefono": phone
  });
}
