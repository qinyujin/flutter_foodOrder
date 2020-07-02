

import 'package:flutter/material.dart';
import 'package:flutterapp/example07_listView/a.dart';
main() =>runApp(app());


class app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: _getAppBar(),
      body: Text('data')
    );
  }
}

_getAppBar(){
  return AppBar(
        leading: Icon(Icons.ac_unit),
    title: Text('My AppBar'),
    actions: <Widget>[
IconButton(icon: Icon(Icons.search), onPressed: (){}),
      IconButton(icon: Icon(Icons.shop), onPressed: (){}),
      _popupMenu()
    ],
      );
}

PopupMenuButton _popupMenu(){
  return     PopupMenuButton(
    onSelected: (value){print(value);},
      icon: Icon(Icons.menu),
          itemBuilder: (context){
           return [
             PopupMenuItem(value: 1,
                 child: ListTile(
               leading: Icon(Icons.message),
               title: Text('发起群聊'),
             )),
             PopupMenuItem(value: 2,
                 child: ListTile(
                   leading: Icon(Icons.add),
                   title: Text('添加朋友'),
                 )),
             PopupMenuItem(value: 3,
                 child: ListTile(
                   leading: Icon(Icons.scanner),
                   title: Text('扫一扫'),
                 ))
           ];
          });
}