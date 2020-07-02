

import 'dart:wasm';

import 'package:flutter/material.dart';

main() =>runApp(myApp());

class myApp extends StatelessWidget{
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
      appBar: AppBar(),
      body: myListView(),
    );
  }
}


class myListView extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return myListViewState();
  }
}

class myListViewState extends State<myListView>{
  List<Item> _item=[];
  int _count=0;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      _item.add(Item('BO-${_count++}'));
      setState(() {
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RefreshIndicator(
        child: ListView.builder(
          itemCount: _item.length,
            itemBuilder: (context,index){
            return _buildItem(Item(_item[index].title));
            }),
        onRefresh: _onfresh);
  }

  Future<Void> _onfresh(){
    return Future.delayed(Duration(seconds: 1),(){
      _item.insert(0,Item('Sun-${_count++}'));
      setState(() {

      });
    });
  }

   _buildItem(Item item){
    return Card(
      child: ListTile(
        title: Text(item.title, style: TextStyle(fontSize: 20),),
        trailing: IconButton(icon: Icon(Icons.delete,color:Colors.red,), onPressed: (){}),
      ),
    );
  }

}

class Item{
  String title;

  Item(this.title);

}