import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  List<bool> _selected;
  List<Student> _students;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _students=[
      Student('BO', 2020001, 66),
      Student('Sun', 2020005,77)
    ];
    _selected=[false,false];
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          DataTable(
              columns:[
                DataColumn(label: Text('姓名')),
                DataColumn(label: Text('学号')),
                DataColumn(label: Text('总成绩'))
              ],
              rows: [
                DataRow(cells: [
                  DataCell(
                    Row(
                      children: <Widget>[
                        Text('BO'),
                        IconButton(icon: Icon(Icons.edit), onPressed: (){})
                      ],
                    )
                  ),
                  DataCell(Text('2017214228')),
                  DataCell(Text('66'))
                ]),
                DataRow(cells: [
                  DataCell(
                      Row(
                        children: <Widget>[
                          Text('Sun'),
                          IconButton(icon: Icon(Icons.edit), onPressed: (){})
                        ],
                      )
                  ),
                  DataCell(Text('2020005')),
                  DataCell(Text('99'))
                ])
              ]),
          Divider(),
          DataTable(
              columns: [
            DataColumn(label: Text('姓名')),
            DataColumn(label: Text('学号')),
            DataColumn(label: Text('总成绩'))
          ], rows: _listDataRows())
        ],
      ),
    );
  }

  List<DataRow> _listDataRows(){
    List<DataRow> rows=[];
    for(int i=0;i<_students.length;i++){
      rows.add(
        DataRow(
            selected: _selected[i],
            onSelectChanged: (v){
              _selected[i]=v;
              setState(() {});
            },
            cells: [
          DataCell(Row(children: <Widget>[
            Text(_students[i].name),
            IconButton(icon: Icon(Icons.edit), onPressed: (){})
          ],)),
          DataCell(Text('${_students[i].num}')),
          DataCell(Text('${_students[i].score}'))
        ])
      );
    }
    return rows;
  }
}

class Student{
  String name;
  int num;
  double score;

  Student(this.name, this.num, this.score);

}