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

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}


class MyHomePageState extends State<MyHomePage>{

  final _formKey = GlobalKey<FormState>();

  var _switchList1=true;

  _change(v){
    _switchList1=v;
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 5),
              child: TextFormField(
                validator: (str) => str.length>5 ? null:'长度大于等于5',
                decoration: InputDecoration(
                  labelText: '用户名',
                  prefixIcon: Icon(Icons.person),
                  hintText: '请输入你的用户名'
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            SwitchListTile(
                title: Row(children: <Widget>[
                  Icon(Icons.hearing),
                  Text('蓝牙')
                ],),
                subtitle: Text('不受form影响'),
                value: _switchList1, onChanged: _change),
            RaisedButton(
                child: Text('submit'),
                onPressed: (){
                  var _state=_formKey.currentState;
                  _state.validate();
                  setState(() {

                  });
                }),
            RaisedButton(
                child: Text('submit'),
                onPressed: (){
                  var _state=_formKey.currentState;
                  _state.reset();
                  setState(() {

                  });
                }),
          ],
        ),
      ),
    );
  }
}