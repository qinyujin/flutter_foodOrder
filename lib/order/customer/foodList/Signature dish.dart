

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp/order/module/CartModel.dart';
import 'package:flutterapp/order/module/catalogModel.dart';
import 'package:provider/provider.dart';

class signalFood extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: MySignatureDishList(),
    );
  }
}

class MySignatureDishList extends StatelessWidget{
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
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, '/food1/2');
          },
          child: ListTile(
            title: Text('猪肉炖粉条'),
          ),
        ),
        InkWell(
          onTap: (){},
          child: ListTile(
            title: Text('小鸡炖蘑菇'),
          ),
        )
      ],
    );
  }
}

/*
* CatalogModel catalog;

  @override
  void initState() {
    super.initState();
    _load();
  }
  // 模拟进入页面的网络异步请求
  _load() {
    // 必须异步执行
    Future.delayed(Duration.zero, () => catalog.loadProducts());
  }
  * */

class DunDiSanXian extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DunDiSanXianState();
  }
}

class DunDiSanXianState extends State<DunDiSanXian>{
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
        Image.asset('images/disanxian.jpg',fit: BoxFit.contain,),
        Row(
          children: <Widget>[
            Expanded(
                child: Container(
                    padding: EdgeInsets.all(20),
                    child: Text('地三鲜：18.00',style: TextStyle(fontSize: 35),))),
            RaisedButton(
                color: Colors.yellow,
                child: Text('点餐'),
                onPressed: (){
                  cart.addItem(Product(18.0, '地三鲜'));
                })
          ],
        ),
        Text('食材：三种地里时令新鲜的食材：茄子、土豆和青椒。',
          softWrap: true,
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 20),
        ),
        Divider(),
        Text('营养价值：土豆：土豆是低热能、多维生素和微量元素的食物，是理想的减肥食品。每100克土豆含钾高达300毫'
            '克。专家认为，每周吃'
            '5～6个土豆可使中风几率下降40%。同时土豆对辅助治疗消化不良、习惯性便秘、神疲乏力'
            '、慢性胃痛、关节疼痛、皮肤湿疹等症有良好效果，是胃病和心脏病患者的优质保健食品，还可以降脂降'
            '糖，美容、抗衰老等。',
          softWrap: true,
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }
}

class ZhuRouDunFenTiao extends StatelessWidget{
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
        Image.asset('images/ZhuRouDunFenTiao.jpg',fit: BoxFit.contain,),
        Row(
          children: <Widget>[
            Expanded(
                child: Container(
                    padding: EdgeInsets.all(20),
                    child: Text('猪肉炖粉条：20',style: TextStyle(fontSize: 35),))),
            RaisedButton(
                color: Colors.yellow,
                child: Text('点餐'),
                onPressed: (){
                  cart.addItem(Product(20, '猪肉炖粉条'));
                })
          ],
        ),
        Text('食材：五花肉 ，粉条，酸菜或白菜，大葱，花椒，蒜，八角，桂皮，红薯粉',
          softWrap: true,
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 20),
        ),
        Divider(),
        Text('营养价值：猪肋条肉（五花肉）：猪肉含有丰富的优质蛋白质和必需的脂肪酸，并提供血红素（有机铁）和促进铁吸收的半胱氨酸，能改善缺铁性贫血；具有补肾养血，滋阴润燥的功效；但由于猪肉中胆固醇含量偏高，故肥胖人群及血脂较高者不宜多食 猪肉如果调煮得宜，它亦可成为“长寿之药”。猪肉经长时间炖煮后，脂肪会减少30%-50%，不饱和脂肪酸增加，而胆固醇含量会大大降低。'
        '粉条：粉条里富含碳水化合物、膳食纤维、蛋白质、烟酸和钙、镁、铁、钾、磷、钠等矿物质。粉条有良好的附味性，它能吸收各种鲜美汤料的味道，再加上粉条本身的柔润嫩滑，更加爽口宜人，但是因为粉条含铝很多一次不宜食用过多。'
        '酸白菜：酸菜中的乳酸能开胃提神、醒酒去腻，还能能增进食欲、帮助消化，还可以促进人体对铁元素的吸收。同时，白菜变酸，其所含营养成分不易损失。但酸菜只能偶尔食用，如果人体缺乏维C就应少吃，长期贪食，则可能引起泌尿系统结石，使红细胞失去携氧能力，导致组织缺氧，出现皮肤和嘴唇青紫、头痛头晕、恶心呕吐、心慌等中毒症状，严重者还能致死。',
          softWrap: true,
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }
  }

