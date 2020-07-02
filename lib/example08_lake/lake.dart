
import 'package:flutter/material.dart';

main () => runApp(app());

class app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:  myhomepage(),
    );
  }
}

class myhomepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _buildImage(),
          _buildTitleSection(),
          _buildButtonSection(),
          _buildContextSection()
        ],
      ),
    );
  }

  _buildImage(){
    return Image.asset('images/boki.jpg',
      fit: BoxFit.contain,);
  }

  _buildTitleSection(){
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('吉良吉影',style: TextStyle(fontSize: 40),),
                Text('替身：杀手皇后')
              ],
            ),
          ),
          Icon(Icons.star,color: Colors.orange,),
          Text('33')

        ],
      ),
    );
  }

  _buildButtonSection(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Column(
          children: <Widget>[
            Icon(Icons.touch_app,color: Colors.yellow,),
            Container(padding: EdgeInsets.all(8),child: Text('把任何接触的物品变成炸弹'))
          ],
        ),
        Column(
          children: <Widget>[
            Icon(Icons.directions_car,color: Colors.red,),
            Container(padding: EdgeInsets.all(8),child: Text('枯萎穿心攻击'))
          ],
        ),
        Column(
          children: <Widget>[
            Icon(Icons.av_timer,color: Colors.black,),
            Container(padding: EdgeInsets.all(8),child: Text('败者食尘'))
          ],
        )
      ],
    );
  }

  _buildContextSection(){
    return Container(
      padding: EdgeInsets.all(20),
      child: Text('我的名字叫吉良吉影，33岁。住在杜王町东北部的别墅区一带，未婚。'
          '我在龟友连锁店服务。每天都要加班到晚上8点才能回家。我不抽烟，酒仅止于浅尝。'
          '晚上11点睡，每天要睡足8个小时。睡前，我一定喝一杯温牛奶，然后做20分钟的柔软操，'
          '上了床，马上熟睡。一觉到天亮，决不把疲劳和压力，留到第二天。医生都说我很正常。',
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );
  }

}
