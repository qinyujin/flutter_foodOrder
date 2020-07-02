import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

main() => runApp(app());

class app extends StatelessWidget {
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
      appBar: AppBar(
        title: Text('gesture'),
      ),
      body: myListView(),
    );
  }
}

class myListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        _buildItem1(context, 'gestureDetector'),
        Divider(),
        _buildItem2(context, 'inkWell'),
        Divider(),
        _buildItem(context,'ink-inkWell')
      ],
    );
  }
}

_buildItem1(context, String title) {
  return GestureDetector(
      onTap: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('点击了$title'),
          action: SnackBarAction(label: 'OK', onPressed: () {}),
        ));
      },
      child: Container(
          padding: EdgeInsets.all(20),
          child: Text('GestureDetector',
              style: TextStyle(fontSize: 30, color: Colors.red))));
}

_buildItem2(context, String title) {
  return InkWell(
      splashColor: Colors.green,
      onTap: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('有波纹不能有颜色'),
          action: SnackBarAction(label: title, onPressed: () {}),
        ));
      },
      child: Container(
          color: Colors.red,
          padding: EdgeInsets.all(20),
          child: Text(title, style: TextStyle(fontSize: 30))));
}

_buildItem(context, String title) {
  return Ink(
    color: Colors.blue,
    child: InkWell(
      onTap: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('可以有颜色和波纹'),
          action: SnackBarAction(label: 'get it', onPressed: () {}),
        ));
      },
      child: Container(
          padding: EdgeInsets.all(20),
          child: Text(title,style: TextStyle(fontSize: 30)))
    ),
  );
}
