import 'dart:math';

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

  var _decend=true;
  var _index;
  List<Student> _students = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      _students=_listStudents();
      setState(() {

      });
    });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:DataTable(
              sortColumnIndex: _index,
            sortAscending: _decend,
            columns: [
              DataColumn(label: Text('姓名')),
              DataColumn(
                  label: Text('学号'),
                onSort: (index,acending){
                    _index=index;
                    _decend=acending;
                    if(!acending){
                      _students.sort((a,b) => a.number.compareTo(b.number));
                    }
                    else _students.sort((a,b) => b.number.compareTo(a.number));
                    setState(() {

                    });
                }
              ),
              DataColumn(label: Text('学院')),
              DataColumn(label: Text('专业')),
              DataColumn(label: Text('年级')),
              DataColumn(
                  label: Text('成绩'),
              onSort: (index,acending){
                    _index=index;
                    _decend=acending;
                    if(!acending){
                      _students.sort((a,b) =>a.score.compareTo(b.score));
                    }
                    else _students.sort((a,b) =>b.score.compareTo(a.score));
                    setState(() {

                    });
              }
              ),
            ],
            rows: __listRows()),
          )
        ],
      ),
    );
  }

  List<DataRow> __listRows() {
    List<DataRow> rs = [];
    for (var i = 0; i < _students.length; i++) {
      rs.add(DataRow(cells: [
        DataCell(Text('${_students[i].name}')),
        DataCell(Text('${_students[i].number}')),
        DataCell(Text('${_students[i].college}')),
        DataCell(Text('${_students[i].subject}')),
        DataCell(Text('${_students[i].year}')),
        DataCell(Text('${_students[i].score}')),
      ]));
    }
    return rs;
  }

  List<Student> _listStudents() {
    List<Student> list = [];
    var r = Random();
    for (var i = 0; i < 20; i++) {
      var s = Student(
          'BO', 202000 + i, '信息与计算机工程学院', '软件工程专业', 2020, 60.0 + r.nextInt(30));
      list.add(s);
    }
    return list;
  }
}


class Student{
  String name;
  int number;
  String college;
  String subject;
  int year;
  double score;

  Student(this.name, this.number, this.college, this.subject, this.year,
      this.score);
}