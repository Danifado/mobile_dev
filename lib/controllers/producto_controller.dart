import 'package:get/get.dart';
import 'package:sprint1/Models/product_model.dart';
import 'package:sprint1/services/firebase_services.dart';

class ProductoControler extends GetxController {
  final productos = <Producto>[].obs;
  final restaurante = <Restaurante>[].obs;

  @override
  void onInit() {
    productos.bindStream(FirestoreDB().getAllProductos());
    restaurante.bindStream(FirestoreDB().getRestName());
    super.onInit();
  }
}
