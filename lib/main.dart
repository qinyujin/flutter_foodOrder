

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

main() =>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) =>MyCount())
      ],
      child: MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: MyContent(),
            ),
          ),
          MySliderBar()
        ],
      ),
    );
  }
}

class MyContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Consumer<MyCount>(
        builder:(context,myCount,child){
          return Text('${myCount.value}',style: TextStyle(fontSize: 40),);
        } );
  }
}

class MySliderBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final myCount = Provider.of<MyCount>(context);


    // TODO: implement build
    return Slider(
        value: myCount.value, onChanged: (v)=>myCount.value=v);
  }
}

class MyCount with ChangeNotifier{
  double _value=0.2;

  double get value => _value;

  set value(double value) {
    _value = value;
    notifyListeners();
  }

}