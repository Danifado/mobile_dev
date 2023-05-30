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
}

Future<void> addPedidoData(String numPed, String idClient, String id) async {
  await _firebaseFirestore
      .collection('pedido')
      .doc(id)
      .set({"numPed": numPed, "usuarioId": idClient});
}

Future<void> addPedidoPlatoData(
    String pedidoId, String platoId, int cantidad) async {
  await _firebaseFirestore
      .collection('pedido-plato')
      .add({"pedidoId": pedidoId, "platoId": platoId, "cantidad": cantidad});
}

Future<void> addClientData(
    String name, String phone, String address, String obs, String id) async {
  await _firebaseFirestore.collection('datos').doc(id).set({
    "Direccion": address,
    "Nombre": name,
    "Observaciones": obs,
    "Telefono": phone
  });
}
