


import 'package:flutter/material.dart';

main() =>runApp(myApp());

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context,bool innerBoxIsScrolled){
            return <Widget>[
              SliverAppBar(
                primary: false,
                expandedHeight: 200,
                pinned: true,
                floating: true,
                snap: true,
                flexibleSpace: _getFlexBar(),
              )
            ];
          },
          body: _getListItems()),
    );
  }
}


_getFlexBar() {
  return FlexibleSpaceBar(
    title: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text('Leila Hatami', style: TextStyle(fontSize: 12)),
        Text(
          'Ecole Polytechnique Fédérale de Lausanne',
          style: TextStyle(fontSize: 10),
        ),
      ],
    ),
    background: Image.asset(
      'images/jojo.jpg',
      fit: BoxFit.fill,
    ),
  );
}

_getListItems(){
  return ListView.separated(
      itemBuilder: (context,index){
        return ListTile(title: Text('条目$index'));
      },
      separatorBuilder:(context,index){
        return Divider();
      } ,
      itemCount: 20);
}