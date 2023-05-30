import 'package:get/get.dart';
import '../Models/product_model.dart';

class CartController extends GetxController {
  var _productos = {}.obs;
  Map ids = {};
  get productos => _productos;

  void addProductos(Producto producto) {
    if (_productos.containsKey(producto)) {
      _productos[producto] += 1;
      ids[producto.id] += 1;
    } else {
      ids[producto.id] = 1;
      _productos[producto] = 1;
    }
  }

  void removeProductos(Producto producto) {
    if (_productos.containsKey(producto) && _productos[producto] == 1) {
      _productos.removeWhere((key, value) => key == producto);
      ids.removeWhere((key, value) => key == producto.id);
    } else {
      _productos[producto] -= 1;
      ids[producto.id] -= 1;
    }
  }

  void deleteProductos(Producto producto) {
    if (_productos.containsKey(producto)) {
      _productos.removeWhere((key, value) => key == producto);
    }
  }

  get productSubtotal => _productos.entries
      .map((producto) => producto.key.precio * producto.value)
      .toList();

  get total {
    num sum = 0;
    _productos.entries
        .map((producto) => producto.key.precio * producto.value)
        .toList()
        .forEach((e) => sum += e);
    return sum;
  }
}
