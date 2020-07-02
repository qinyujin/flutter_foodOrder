

import 'package:flutter/material.dart';
import 'package:flutterapp/order/module/catalogModel.dart';
import 'package:flutterapp/order/module/CartModel.dart';
import 'package:provider/provider.dart';

class MeatFood extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: MyMeatFoodList(),
    );
  }
}

class MyMeatFoodList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, '/food3/1');
          },
          child: ListTile(
            title: Text('红烧肘子'),
          ),
        ),
      ],
    );
  }
}

class HongShaoZhouZi extends StatelessWidget{
  CartModel cart;

  @override
  Widget build(BuildContext context) {
    cart=Provider.of<CartModel>(context);

    // TODO: implement build
    return Scaffold(
        appBar: AppBar(),
        body:SingleChildScrollView(
          child: _buildContent(),
        )
    );
  }

  Widget _buildContent(){
    return Column(
      children: <Widget>[
        Image.asset('images/HongShaoZhouZi.jpg',fit: BoxFit.contain,),
        Row(
          children: <Widget>[
            Expanded(
                child: Container(
                    padding: EdgeInsets.all(20),
                    child: Text('红烧肘子：38.0',style: TextStyle(fontSize: 35),))),
            RaisedButton(
                color: Colors.yellow,
                child: Text('点餐'),
                onPressed: (){
                  cart.addItem(Product(38.0, '红烧肘子'));
                })
          ],
        ),
        Text('食材：肘子肉500克，酱油15克，精盐10克大料1颗，大葱白2段，鲜姜2片，50克，蜂蜜、木耳、玉兰片、味精、湿团粉各少许，二道清汤适量，香菜。',
          softWrap: true,
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 20),
        ),
        Divider(),
        Text('营养价值：猪肘营养很丰富，含较多的蛋白质，特别是含有大量的胶原蛋白质，和肉皮一样，是使'
            '皮肤丰满、润泽，强体增肥的食疗佳品。'
            ,
          softWrap: true,
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }
}