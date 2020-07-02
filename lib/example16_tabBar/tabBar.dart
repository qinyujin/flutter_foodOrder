

import 'package:flutter/material.dart';

main() =>runApp(myApp());

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: myhomepage(),
    );
  }
}

class myhomepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tabs Demo'),
          bottom:TabBar(
              tabs: _tabs()),
        ),
        body: TabBarView(children: _tabBarView()),
      ),
    );
  }
}

List<Tab> _tabs(){
  return [
    Tab(
      icon: Icon(Icons.directions_car),
    ),
    Tab(icon: Icon(Icons.directions_transit)),
    Tab(icon: Icon(Icons.directions_bike))
  ];
}

_tabBarView(){
  return [
    Icon(Icons.directions_car, color: Colors.pink, size: 60),
    Icon(Icons.directions_transit, color: Colors.pink, size: 60),
    Icon(Icons.directions_bike, color: Colors.pink, size: 60),
  ];
}