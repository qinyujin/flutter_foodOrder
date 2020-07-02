


import 'package:flutter/cupertino.dart';
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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
            _getText('row-1'),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _getText('col-1'),
              _getText('col-2'),
            ],
          ),
         Container(
           margin: EdgeInsets.all(15),
           padding: EdgeInsets.only(top: 20),
           decoration: BoxDecoration(
             color: Colors.blue,
             borderRadius:BorderRadius.all(Radius.circular(10)),
             border: Border.all(color: Colors.red,width: 2)
           ),
           child:_getText('row-3'),
         ),
          Expanded(
            child: _getText('Expanded'),
          )
        ],
      ),
    );
  }
}

 _getText(String txt){
  return Text(
    txt,
    style: TextStyle(color: Colors.pink,fontSize: 20),
  );
 }