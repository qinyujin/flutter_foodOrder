import 'package:flutter/material.dart';

main() =>runApp(app());

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: listView());
  }
}

class listView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        MyItem('title1', 'subTitle1'),
        Divider(),
        MyItem('title2','subTitle2'),
        Divider(),
        MyItem('title3','subTitle')
      ],
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
