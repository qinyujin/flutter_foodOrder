


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
     body: myScroll(),
   );}
}

class myScroll extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(
      slivers: <Widget>[
        _buildSliverAppBar(),
        _buildSliverList()
      ],
    );
  }
}

_buildSliverAppBar(){
  return SliverAppBar(
    backgroundColor: Colors.white,
    expandedHeight: 200,
    pinned: false,
    floating: false,
    snap: false,
    flexibleSpace: FlexibleSpaceBar(
//      title: Text('custom card'),
      background: Card(
        color: Colors.pink,
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0)
        ),
        child: Column(
          children: <Widget>[
            Icon(
              Icons.add_shopping_cart,
              size: 60,
              color: Colors.white,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('VIP',
                style: TextStyle(fontSize: 20.0, color: Colors.white)),
            SizedBox(
              height: 10.0,
            ),
            Text(r'$ 99999.99',
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    ),
  );
}

SliverList _buildSliverList() {
  int count = 20;
  return SliverList(
    delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.black, width: 0.1))),
          padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text('list item $index'),
        );
      },
      childCount: count,
    ),
  );
}