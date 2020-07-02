
import 'package:flutter/material.dart';

main() =>runApp(app());

class app extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: MyListView(10),
    );
  }
}

class MyListView extends StatelessWidget{

   final int count;


   MyListView(this.count);

   @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: count,
        itemBuilder:(_,index){
        return MyItem('title$index', 'subTitle');
        },
      separatorBuilder: (_,__){
        return Divider();
      },
    );
  }
}

class MyItem extends StatelessWidget {
  final String title;
  final String subTitle;


  MyItem(this.title, this.subTitle);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title,style: TextStyle(color: Colors.red,fontSize: 30)),
          Text(subTitle)
        ],
      ),
    );
  }
}