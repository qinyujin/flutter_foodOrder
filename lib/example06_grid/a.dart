

import 'package:flutter/material.dart';

main() =>runApp(Myapp());

class Myapp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage  extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Demo'),
      ),
      body: MyGridView()
    );
  }
}

class MyGridView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return GridView.extent(maxCrossAxisExtent: 150,
padding: EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: _buildGridTitleList(20),
    );
  }
}
 List<Widget> _buildGridTitleList(int count){

  List<Widget> containers=[];
  for(var i=0;i<count;i++){
    var image=Image.network('https://picsum.photos/id/$i/150');
    containers.add(image);
  }
  return containers;
 }