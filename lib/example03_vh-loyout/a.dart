
import 'package:flutter/material.dart';
import 'package:flutterapp/example02_material/main.dart';

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
      appBar: AppBar()
      ,
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('row-1',style: TextStyle(
                fontSize: 30
              ),),
              Text('row-2',style: TextStyle(
                  fontSize: 30
              ),),
              Text('row-3',style: TextStyle(
                  fontSize: 30
              ),),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('col-1',style: TextStyle(
                      fontSize: 30
                  ),),
                  Text('col-2',style: TextStyle(
                      fontSize: 30
                  ),)
                ],
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Text('row-1',style: TextStyle(fontSize: 30))
              ),
              Expanded(
                  flex: 2,
                  child: Text('row-2',style: TextStyle(fontSize: 30)))
            ],
          )
        ],
      ),
    );
  }
}