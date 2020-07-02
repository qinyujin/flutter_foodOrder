import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp/order/module/CartModel.dart';
import 'package:flutterapp/order/module/tableNum.dart';
import 'package:provider/provider.dart';

class index extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: MyGridView(),
    );
  }
}

class MyGridView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 150,
      padding: EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: _buildGridTitleList(20,context),
    );
  }
}

List<Widget> _buildGridTitleList(int count,BuildContext context){

  List<Widget> containers=[];
  for(var i=1;i<=count;i++){
    var text;
    var colo;

    if(i==1 || i==6 || i==11 || i==16)colo=Colors.yellow;
    else colo=Colors.green;
    text= Container(
      decoration: new BoxDecoration(
        color: colo,
      ),
      child: Center(
        child: InkWell(
            onTap: (){
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return myFlatButton(i);
                  });
            },
            child: Text('$i号桌',style: TextStyle(fontSize: 40))),
      ),
    );

    containers.add(text);
  }
  return containers;
}

class myFlatButton extends StatefulWidget{
  var i;

  myFlatButton(this.i);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return myFlatButtonState(i);
  }
}

class myFlatButtonState extends State<myFlatButton> {
  int i;
String useful='';
tableModel table;

  myFlatButtonState(this.i);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(i==1||i==11||i==16||i==6){
      useful='不可用';
    }
    else useful='可用';
  }

  @override
  Widget build(BuildContext context) {
    table=Provider.of<tableModel>(context);

    // TODO: implement build
    return AlertDialog(
      title: Container(

        child: Row(
          children: <Widget>[
            Text('福满堂：$i号桌($useful)'),
            Divider()
          ],
        ),
      ),
      content: Text('是否确认开台：'),
      elevation: 20,
      actions: <Widget>[
        FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('取消')),
        FlatButton(onPressed: () {
          if(i==1||i==6||i==11||i==16)
            Navigator.of(context).pop();
          else
          {
            table.tableNum=i;
            Navigator.pushNamed(context, '/customer');}
        }, child: Text('确定'))
      ],
    );
  }
}