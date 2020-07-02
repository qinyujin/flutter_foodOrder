

import 'package:flutter/material.dart';

main(){
  return runApp(myApp());
}

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
    home: myhomepage(),
    );
  }

}

class myhomepage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return myhomepageState();
  }

}

class myhomepageState extends State<myhomepage>{
  final _controller=TextEditingController();
  String _inputValue='';


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener((){
      _inputValue=_controller.value.text;
      setState(() {

      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              labelText: '输入'
            ),
          ),
          Divider(),
          Text('输入的值是：$_inputValue')
        ],
      ),
    );
  }
}