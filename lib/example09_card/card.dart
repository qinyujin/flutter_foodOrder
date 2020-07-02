


import 'package:flutter/material.dart';

main() =>runApp(myApp());

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyHomePage('梁静茹','勇气'),
    );
  }
}

class MyHomePage extends StatelessWidget{
 double  _value=0.2;
 String title=null;
 String detail=null;


 MyHomePage(this.title, this.detail);

 @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        elevation: 20,
        color:Colors.pink,
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15) ),
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.album,size: 84,),
                Column(
                  children: <Widget>[
                    Text(title,style: TextStyle(fontSize: 20,color: Colors.white),),
                    Text(detail,style: TextStyle(color: Colors.white))
                  ],
                )
              ],
            ),
            Slider(value: _value, onChanged: (v){
              _value=v;
              setState(){};
            }),
            Container(
              padding: EdgeInsets.all(20),
              child: ButtonBar(
                children: <Widget>[
                  Icon(Icons.skip_previous,color: Colors.white,),
                  Icon(Icons.play_arrow,color: Colors.white,),
                  Icon(Icons.skip_next,color: Colors.white,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}