import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      routes: {
        '/': (context) {
          return myHomePage();
        },
        '/cart': (_) => MyCart()
      },
    );
  }
}

class myHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Item item=Item('面包',99);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('懒猫商城'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {
            Navigator.pushNamed(context, '/cart',arguments: item);
          })
        ],
      ),
    );
  }
}

class MyCart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   Item item= ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(title: Text('购物车')),
      body: Center(
        child: 
        Text('cart ${item}',style: TextStyle(fontSize: 30))
      )
    );
  }
}

class Item{
  String name;
  int price;

  Item(this.name, this.price);

}
