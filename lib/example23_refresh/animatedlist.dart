

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
 final _listKey=GlobalKey<AnimatedListState>();
 List<Item> _item=[];
 int _count=0;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 500),(){
      _item.add(Item('BO-${_count++}'));
      _listKey.currentState.insertItem(0,duration: Duration(milliseconds: 500));
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RefreshIndicator(
        child: AnimatedList(
            key: _listKey,
            initialItemCount: _item.length,
            padding: EdgeInsets.all(5),
            itemBuilder:(context,index,animation)=>_buildItem(_item[index], animation)),
        onRefresh: _onfresh);
  }

Future<Void>   _onfresh(){
   return Future.delayed(Duration(milliseconds: 500),(){
     _item.insert(0,Item('Sun-${_count++}'));
       _listKey.currentState.insertItem(0,duration: Duration(milliseconds: 500));
   });
  }
  
  _buildItem(Item item,Animation animation){
    return SizeTransition(
      child: Card(
        child: ListTile(
          title: Text(item.title,style: TextStyle(fontSize: 20),),
          trailing: IconButton(icon: Icon(Icons.delete,color: Colors.red,), onPressed: (){
            _listKey.currentState.removeItem(0,
                    (context,animation){
return _buildItem(item, animation);
            },
                duration: Duration(milliseconds: 500));
            _item.remove(item);
          }),
        ),
      ),
        sizeFactor: animation);
  }

}

class Item{
  String title;

  Item(this.title);

}