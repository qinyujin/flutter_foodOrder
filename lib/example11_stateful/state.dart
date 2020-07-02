import 'package:flutter/material.dart';
import 'package:flutterapp/example06_grid/a.dart';

main() => runApp(app());

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyHomePage('Stateful Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage(this.title);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int _count;
  var _location;

  _add() {
    _count++;
    _location = _count % 2 == 0
        ? FloatingActionButtonLocation.endFloat
        : FloatingActionButtonLocation.centerFloat;
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _count = 0;
  }

  @override
  Widget build(BuildContext context) {
    widget.title;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body:
          Center(child: Text('count:$_count', style: TextStyle(fontSize: 40))),
      floatingActionButtonLocation: _location,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_shopping_cart, color: Colors.red),
        onPressed: _add,
      ),
    );
  }
}
