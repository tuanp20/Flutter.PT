import 'package:flutter/material.dart';
import 'package:listview_data/network.dart';
import 'package:listview_data/table.dart';

import 'index.dart';
import 'login.dart';
//
// import 'login.dart';
//
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: "List Data",
      //Cấu hình cho toàn bộ app
      theme: new ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.black,
          buttonColor: Colors.black,
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(
              bodyText1: TextStyle(color: Colors.black, fontFamily: "Aveny")),
          textTheme: TextTheme(bodyText1: TextStyle(color: Colors.black))),
      home: index(),
    );
  }
}

class LadiPage extends StatefulWidget{
  @override
  _ladi createState() => _ladi();
}

class _ladi extends State<LadiPage>{

  List<table> _listdata = List<table>();
  List<table> _displayTable = List<table>();

  @override
  void initState() {
    fetchTable().then((value) =>
    {
     setState((){
      _listdata.addAll(value);
      _displayTable = _listdata;
    })
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table Data'),
      ),
      body: ListView.builder(
          itemCount: _listdata.length,
          itemBuilder: (BuildContext context, int index){
            return Card(
              child: Padding(
                padding: EdgeInsets.only(top: 32, bottom: 32, left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      _displayTable[index].title,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),

                    Text(
                      _displayTable[index].body,
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}


