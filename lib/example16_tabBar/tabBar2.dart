



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
      length: _buildMyTab().length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tabs Demo'),
          bottom:TabBar(
              tabs: _buildMyTab().map((t)=>t.tab).toList(),
        )),
        body: TabBarView(children:_buildMyTab().map((t)=>t.body).toList()),
      ),
    );
  }
}

List<myTab> _buildMyTab(){
  return [
    myTab(Tab(icon: Icon(Icons.directions_car)),Icon(Icons.directions_car,color: Colors.pink)),
    myTab(Tab(icon: Icon(Icons.directions_transit)),Icon(Icons.directions_transit,color: Colors.pink)),
    myTab(Tab(icon: Icon(Icons.directions_bike)),Icon(Icons.directions_bike,color: Colors.pink)),
  ];
}

class myTab{
  Tab tab;
  Widget body;

  myTab(this.tab, this.body);

}