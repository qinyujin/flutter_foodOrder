

import 'package:flutter/material.dart';

class DiscountDish extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: MyDiscountDishList(),
    );
  }
}

class MyDiscountDishList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, '/food1/1');
          },
          child: ListTile(
            title: Text('炖地三鲜'),
          ),
        ),
      ],
    );
  }

}