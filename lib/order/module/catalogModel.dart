import 'package:flutter/material.dart';
class Product {
  double price;
  String name;

  Product(this.price, this.name);
}

class CatalogModel with ChangeNotifier {
  List<Product> _products = [];

  // 也可以声明为listProducts()方法，但是调用时不同
  List<Product> listProducts() {
    return _products;
  }

  // 方法名称可以像业务方法一样命名
  loadProducts() async {
    _products = await Future.delayed(Duration(seconds: 2), () {
      return [
        Product(18.0, '地三鲜')
      ];
    });
    notifyListeners();
  }
}