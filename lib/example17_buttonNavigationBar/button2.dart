

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

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage>{
  int _currentIndex=0;

  _change(int index){
    _currentIndex=index;
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('button'),),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          onTap: _change,
          currentIndex: _currentIndex,
          items: _listItem()),
      body:PageView.builder(
        onPageChanged: _change,
          itemBuilder: (context,index){
            return _listChilden()[_currentIndex];
          },
      itemCount: _listChilden().length,
      )
    );
  }

}

List<Widget> _listChilden(){
  return [
    Text('HOME',style: TextStyle(fontSize: 40,color: Colors.pink)),
    Text('BOOK',style: TextStyle(fontSize: 40,color: Colors.pink)),
    Text('MUSIC',style: TextStyle(fontSize: 40,color: Colors.pink)),
    Text('MOVIE',style: TextStyle(fontSize: 40,color: Colors.pink))
  ];
}

_listItem(){
  return [
    BottomNavigationBarItem(
        icon: Icon(Icons.message),
        title: Text('wechat')
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.contacts),
        title: Text('friends')
    ),BottomNavigationBarItem(
        icon: Icon(Icons.map),
        title: Text('find')
    ),BottomNavigationBarItem(
        icon: Icon(Icons.person),
        title: Text('me')
    ),
  ];
}