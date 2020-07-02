

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
main() =>runApp(myApp());

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          TextFormField(
              maxLines:  4,
            maxLength: 100,
            keyboardType: TextInputType.number,
          ),
          TextFormField(
            enabled: true,
            obscureText: true,
            keyboardType: TextInputType.text,
          ),
          Container(
            padding: EdgeInsets.all(15),
            child:
            TextFormField(
              decoration: InputDecoration(
                labelText: '手机号',
                helperText: '注册手机号，用于找回',
                hintText: '请输入手机号',
                prefixIcon: Icon(Icons.person),
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  gapPadding: 10.0
                )

              ),
              keyboardType: TextInputType.number,
            ),
          )
        ],
      )
    );
  }
}