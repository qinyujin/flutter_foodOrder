
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: RaisedButton(
        child: Text('modalButtonSheet'),
          onPressed: (){
          showModalBottomSheet(
              context: context,
              builder:(context){
                return Container(
                  height: 200,//不要和isScrollController（全屏）一起使用
                  color: Colors.amber,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('modalButtonSheet'),
                        RaisedButton(
                            child: Text('close modalButtonSheet'),
                            onPressed: (){
                          Navigator.pop(context);
                        })
                      ],
                    ),
                  ),
                );
              },
          isDismissible: false,);
          }),
    );
  }
}