import 'package:flutter/material.dart';
import 'package:flutterapp/order/customer/foodList/DiscountDish.dart';
import 'package:flutterapp/order/customer/foodList/MeatFood.dart';
import 'package:flutterapp/order/customer/foodList/Signature%20dish.dart';
import 'package:flutterapp/order/customer/myOrder.dart';
import 'package:flutterapp/order/module/catalogModel.dart';
import 'package:flutterapp/order/module/CartModel.dart';
import 'package:flutterapp/order/index/index.dart';
import 'package:flutterapp/order/login/login.dart';
import 'package:provider/provider.dart';

import 'customer/home.dart';
import 'module/tableNum.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget{
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
        ),
        ChangeNotifierProvider(
            create: (_) => tableModel()
        )
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => login(),
          "/index": (context) => index(),
          '/customer':(_) => customerHome(),
        '/food1':(_) => signalFood(),
        '/food1/1':(_) => DunDiSanXian(),
          '/food1/2':(_) => ZhuRouDunFenTiao(),
          '/food2':(_) => DiscountDish(),
          '/food3':(_) => MeatFood(),
          '/food3/1':(_) => HongShaoZhouZi(),
          '/myOrder':(_) =>MyOrder()
        },
      ),
    );
  }
}