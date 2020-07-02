import 'package:flutter/material.dart';
import 'package:flutterapp/order/component/toast.dart';

class customerHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:MyList(),
    );
  }
}

class MyList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: _buildListItem(context),
    );
  }

 List<Widget> _buildListItem(BuildContext context){
    return [
      InkWell(
        onTap: (){
          Navigator.pushNamed(context, '/food1');
        },
        child: ListTile(
          leading: Icon(Icons.fastfood),
          title: Text('特色菜'),
        ),
      ),
      InkWell(
        onTap: (){
          Navigator.pushNamed(context, '/food2');
        },
        child: ListTile(
          leading: Icon(Icons.fastfood),
          title: Text('特价菜'),
        ),
      ),
      InkWell(
        onTap: (){
          Navigator.pushNamed(context, '/food3');
        },
        child: ListTile(
          leading: Icon(Icons.fastfood),
          title: Text('肉类'),
        ),
      ),
      InkWell(
        onTap: (){},
        child: ListTile(
          leading: Icon(Icons.fastfood),
          title: Text('素食'),
        ),
      ),
      InkWell(
        onTap: (){},
        child: ListTile(
          leading: Icon(Icons.fastfood),
          title: Text('酒水'),
        ),
      ),
      InkWell(
        onTap: (){},
        child: ListTile(
          leading: Icon(Icons.fastfood),
          title: Text('汤羹'),
        )
      ),
      InkWell(
        onTap: (){
          Navigator.pushNamed(context, '/myOrder');
        },
        child: ListTile(
          leading: Icon(Icons.person),
          title: Text('我的'),
        ),
      ),
      InkWell(
        onTap: (){
          Navigator.of(context).pop();
        },
        child: ListTile(
          leading: Icon(Icons.arrow_back),
          title: Text('返回'),
        ),
      ),
    ];
  }
}
