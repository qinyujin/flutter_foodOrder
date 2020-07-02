

import 'package:flutter/material.dart';

main() => runApp(app());

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
  body: MyListTile(),
);
  }
}

class MyListTile extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      _listTileBuild('CineArts at the Empire', 'CineArts at the Empire',
          Icon(Icons.theaters,color: Colors.red,), context),
      _listTileBuild('The Castro Theater', '429 Castro St',
          Icon(Icons.theaters), context),
      _listTileBuild('Alamo Drafthouse Cinema', '2550 Mission St',
          Icon(Icons.theaters), context),
      _listTileBuild(
          'Roxie Theater', '3117 16th St', Icon(Icons.theaters), context),
      Divider(),
      _listTileBuild('Kescaped_code#39;s Kitchen', '757 Monterey Blvd',
          Icon(Icons.restaurant), context,
          iconTrailing: Icon(Icons.more_vert)),
      _listTileBuild('Emmyescaped_code#39;s Restaurant', '1923 Ocean Ave',
          Icon(Icons.restaurant), context,
          iconTrailing: Icon(Icons.more_vert)),
    ],
    );
  }
}

ListTile _listTileBuild(
    String title,String subTitle,Icon icon,BuildContext context,
{Icon iconTrailing}){
return ListTile(
  leading: icon,
  title: Text(title),
  subtitle: Text(subTitle),
  trailing: iconTrailing,
  onTap: (){},
);
}