


import 'package:flutter/material.dart';
import 'package:flutterapp/order/module/CartModel.dart';
import 'package:flutterapp/order/module/tableNum.dart';
import 'package:provider/provider.dart';

class MyOrder extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyOrderState();
  }
}

class MyOrderState extends State<MyOrder>{
  CartModel cart;
  tableModel table;


  @override
  Widget build(BuildContext context) {
    cart=Provider.of<CartModel>(context);
    table=Provider.of<tableModel>(context);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('我的订单'),
      ),
      body: Column(
        children: <Widget>[
          Text('桌号：${table.tableNum}号桌',style: TextStyle(fontSize: 30),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('菜品'),
              Text('数量'),
              Text('价格'),
              Text('状态')
            ],
          ),
          _buildFoodList(),

          Center(
            child:Row(
              children: <Widget>[
                Text('总价：',style: TextStyle(fontSize: 40),),
                Text('${cart.getTotalPrices()}',style: TextStyle(fontSize: 40))
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildFoodList(){
    return Flexible(
      child: ListView.separated(
        itemBuilder: (context,index){
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('${cart.items[index].product.name}'),
              Text('${cart.items[index].count}'),
              Text('${cart.items[index].product.price}'),
              cart.items[index].isExist?_buildIsExist():Row(
                children: <Widget>[
                  Container(
                    padding:EdgeInsets.only(right: 10),
                    child: SizedBox(
                      width: 30,
                      height: 32,
                      child: FlatButton(
                        //为什么要设置左右padding，因为如果不设置，那么会挤压文字空间
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        //文字颜色
                        textColor: Colors.black,
                        //按钮颜色
                        color:Colors.yellow,
                        //画圆角
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        //如果使用FlatButton，必须初始化onPressed这个方法
                        onPressed: () {
                          cart.items[index].isExist=true;
                          setState(() {

                          });
                        },
                        child: Text(
                          '催',
                          style: TextStyle(fontSize: 14),
                        ),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 30,
                    height: 32,
                    child: FlatButton(
                      //为什么要设置左右padding，因为如果不设置，那么会挤压文字空间
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      //文字颜色
                      textColor: Colors.black,
                      //按钮颜色
                      color:Colors.yellow,
                      //画圆角
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      //如果使用FlatButton，必须初始化onPressed这个方法
                      onPressed: () {
                        cart.removeItem(cart.items[index].product);
                      },
                      child: Text(
                        '退',
                        style: TextStyle(fontSize: 14),
                      ),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  )
                ],
              ),

            ],
          );
        },
        separatorBuilder: (_,__) =>Divider(),
        itemCount: cart.items.length,
      ),
    );
  }

  _buildIsExist(){
    return Row(
      children: <Widget>[
        Text('已上')
      ],
    );
  }
}
