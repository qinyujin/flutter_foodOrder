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
  bool _checkbox1=false;
  bool _checkbox2=false;
  bool _checkbox3=false;
  bool _checkbox4=false;
  bool _checkbox5=false;
  var _enable=false;
  var _radioGroup1;
  var _radioGroup2;

  _change(value){
    _radioGroup2=value;
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
            Checkbox(
                value: _checkbox1,
                onChanged: (v){
                  _checkbox1=v;
                  setState(() {

                  });
                }
            ),
          CheckboxListTile(
              value: _checkbox2,
              onChanged: (v){
                _checkbox2=v;
                setState(() {
                  
                });
              },
          title: Text('Java'),
            subtitle: Text('java并发，线程安全，jvm'),
            secondary: Icon(Icons.school),
          ),
          CheckboxListTile(
            value: _checkbox3,
            onChanged: (v){
              _checkbox3=v;
              setState(() {

              });
            },
            title: Text('Web'),
            subtitle: Text('前端职位和薪资都很高'),
            secondary: Icon(Icons.school),
          ),
          Row(
            children: <Widget>[
              Switch(
                  value: _checkbox4,
                  onChanged: (v){
                    _checkbox4=v;
                    setState(() {

                    });
                  },
              ),
            ],
          ),
          SwitchListTile(
              value: _checkbox4, 
              onChanged: (b){
            _checkbox4=b;
            setState(() {

            });
          },
          title: Text('listtile-switch'),
            subtitle: Text('subtitle'),
            secondary: Icon(Icons.title),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Radio<String>(
                  value: '英语',
                  groupValue: _radioGroup1,
                  onChanged: (v){
                    _radioGroup1=v;
                    setState(() {

                    });
                  })
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: RadioListTile(
                    title: Text('英语'),
                  value: 1,
                  groupValue: _radioGroup2,
                  onChanged: _change)),
              Expanded(
                  child: RadioListTile(
                    title: Text('日语'),
                      value: 2,
                      groupValue: _radioGroup2,
                      onChanged: _change)),
              Expanded(
                  child: RadioListTile(
                    title: Text('法语'),
                      value: 3,
                      groupValue: _radioGroup2,
                      onChanged: _change)),
            ],
          ),
          CheckboxListTile(
            title: Text('同意条款'),
              value: _enable,
              onChanged: (v){
                _enable=v;
                setState(() {
                });
              }),
          CheckboxListTile(
            title: Text('可用'),
              value: _checkbox5,
              onChanged: _enable?(v){
              _checkbox5=v;
              setState(() {

              });
              }:null)
        ],
      ),
    );
  }
}