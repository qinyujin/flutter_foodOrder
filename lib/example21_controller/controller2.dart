import 'package:flutter/material.dart';

main() => runApp(MyApp());


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
  MyHomePageState createState() {
    return new MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage>{
  var _controller=ScrollController();
  var _height;
  bool _show=false;

  @override
  void initState() {
    _controller.addListener((){
      if(_controller.offset>=_height && !_show){
        _show=true;
        setState(() {
        });
      }
      else if(_controller.offset<_height && _show){
        _show=false;
        setState(() {
        });
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _height=MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
          controller: _controller,
          itemBuilder: (context,index){return Container(
              padding: EdgeInsets.only(top: 15,bottom: 15),
              child: Text('$index'));},
          separatorBuilder: (_,index)=>Divider(),
          itemCount: 30),
      floatingActionButton: _show?FloatingActionButton(
          child: Icon(Icons.arrow_upward),
          onPressed: (){
            _controller.animateTo(.0, duration: Duration(milliseconds: 800), curve:Curves.ease);
          }):null,
    );
  }

}