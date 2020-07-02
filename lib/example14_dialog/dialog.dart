import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: myhomepage(),
    );
  }
}

class myhomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
                child: Text('AlterDialog'),
                onPressed: () {
                  showDialog(
                    barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return myFlatButton();
                      });
                }),
            RaisedButton(
              child: Text('simpleDialog'),
                onPressed: (){
                showDialog(
                    context: context,
                builder: (context){
                 return mySimpleButton();     
                }
                );
                })
          ],
        ),
      ),
    );
  }
}

class myFlatButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AlertDialog(
      title: Row(
        children: <Widget>[
          Icon(Icons.warning),
          Text('AlertDialog')
        ],
      ),
      content: Text('enterDialog'),
      elevation: 20,
      actions: <Widget>[
        FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('no')),
        FlatButton(onPressed: () {}, child: Text('yes'))
      ],
    );
  }
}


class mySimpleButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SimpleDialog(
      title: Text('simpleDialog'),
      elevation: 20,
      children: <Widget>[
        FlatButton(
            onPressed: (){
              Navigator.of(context).pop();
            }, 
            child: Text('no')),
        FlatButton(
            onPressed: (){}, 
            child: Text('yes',style: TextStyle(color: Colors.red)))
      ],
    );
  }
}