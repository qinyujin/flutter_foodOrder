


import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
   int _count;
   bool _agreed;

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadCount();
    _loadAgree();
  }

  _loadCount() async{
     SharedPreferences prefs=await SharedPreferences.getInstance();
     _count=prefs.getInt('counter')??0;
     setState(() {});
  }

  _loadAgree() async{
     SharedPreferences prefs= await SharedPreferences.getInstance();
     _agreed=prefs.getBool(MyAlertDialog.ag)??false;
     if(!_agreed){
       showDialog(
           barrierDismissible: false,
           context: context,
       builder:(context)=>MyAlertDialog());
     }
     setState(() {});
  }

  _addCount() async{
     SharedPreferences prefs = await SharedPreferences.getInstance();
     prefs.setInt('counter', ++_count);
     setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            Text('${_count}',
              style: TextStyle(fontSize: 40),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            _addCount();
          }),
    );
  }

}

class MyAlertDialog extends StatefulWidget{

  static const String ag='agreeState';

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAlertDialogState();
  }
}

class MyAlertDialogState extends State<MyAlertDialog>{
  bool _selected=false;

  _agreed() async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    if(_selected){
      prefs.setBool(MyAlertDialog.ag,true);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AlertDialog(
      contentPadding: EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('是否允许应用拨打电话和管理通话？'),
          CheckboxListTile(
            title:Text('不再显示'),
            controlAffinity: ListTileControlAffinity.leading,
              value: _selected,
              onChanged: (v){
                _selected=v;
                setState(() {});
              }),
        ],
      ),
      actions: <Widget>[
        FlatButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            child: Text('NO')),
        FlatButton(
            onPressed: (){
              _agreed();
              Navigator.of(context).pop();
            },
            child: Text('Yes'))
      ],
    );
  }
}