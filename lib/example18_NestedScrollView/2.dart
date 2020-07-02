


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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
                  bottom: _getTabBar(),
                )
              ];
            },
            body:_getTabBarView(),
      ),
      ),
    );}
}

TabBar _getTabBar(){
  return TabBar(
      tabs: [
        Tab(icon: Icon(Icons.directions_car)),
        Tab(icon: Icon(Icons.directions_transit)),
        Tab(icon: Icon(Icons.directions_bike)),
      ]);
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

TabBarView _getTabBarView(){
  return TabBarView(
      children: <Widget>[
       _getListItems(),
        Icon(Icons.directions_transit, color: Colors.pink, size: 60),
        Icon(Icons.directions_bike, color: Colors.pink, size: 60),
      ]);
}

_getListItems(){
  return ListView.separated(
    padding:const  EdgeInsets.all(10),
      key:PageStorageKey('list'),
      itemBuilder: (context,index){
        return ListTile(title: Text('条目$index'));
      },
      separatorBuilder:(context,index){
        return Divider();
      } ,
      itemCount: 20);
}