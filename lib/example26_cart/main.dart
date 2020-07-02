

import 'package:flutter/material.dart';
import 'package:flutterapp/example26_cart/module/cart.dart';
import 'package:flutterapp/example26_cart/module/catalog.dart';
import 'package:flutterapp/example26_cart/screen/cart.dart';
import 'package:flutterapp/example26_cart/screen/catalog.dart';
import 'package:provider/provider.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CartModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => CatalogModel(),
        )
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => Catalog(),
          "/cart": (context) => Cart(),
        },
      ),
    );
  }
}