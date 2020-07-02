

import 'package:flutter/material.dart';
import 'package:flutterapp/example03_vh-loyout/a.dart';

main() =>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('row-1',style: TextStyle(fontSize: 30)),
              Text('row-2',style: TextStyle(fontSize: 30)),
              Text('row-3',style: TextStyle(fontSize: 30)),
              Column(
                children: <Widget>[
                  Text('col-1',style: TextStyle(fontSize: 30)),
                  Text('col-2',style: TextStyle(fontSize: 30))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}