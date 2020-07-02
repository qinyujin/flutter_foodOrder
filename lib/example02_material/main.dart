import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/main.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'myFirstHomePage',)
    );
  }
}

class MyHomePage extends StatelessWidget{
final String title;
MyHomePage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(title),),
    body: Container(child: Text(
      'hello world'
    ),),
    );
  }
}