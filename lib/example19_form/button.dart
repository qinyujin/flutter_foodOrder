import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/example13_route/route.dart';

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

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}


class MyHomePageState extends State<MyHomePage>{

  var  _dropdownButton;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:
      AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            OutlineButton(
                child: Text('OutlineButton'),
                textColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                onPressed: (){}),
            RaisedButton(
                child: Text('raisedButton'),
                textColor:Colors.red,
                onPressed: (){}),
            FlatButton(
                onPressed: (){}, child: Text('flatButton'),color: Colors.green,),
            DropdownButton(
              hint: Text('请选择课程'),
                value: _dropdownButton,
//                icon: Icon(Icons.add_shopping_cart),
                items: [
                   DropdownMenuItem(value: 1,child: Text('Java')),
                  DropdownMenuItem(value: 2,child: Text('Web')),
                  DropdownMenuItem(value: 3,child: Text('Android'))
            ],
                onChanged: (v){
                _dropdownButton=v;
                setState(() {

                });
            }),
            BackButton(),
            CloseButton()
          ],
        ),
      ),
    );
  }
}