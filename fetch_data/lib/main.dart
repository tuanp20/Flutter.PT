import 'package:fetch_data/product.dart';
import 'package:flutter/material.dart';

import 'Api.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  _listProduct createState() => _listProduct();
}

class _listProduct extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'list data',
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget{
  @override
  _homePage createState() => _homePage();
}

class _homePage extends State{
  List<Product> _products = List<Product>();
  List<Product> _displayProducts = List<Product>();

  @override
  void initState(){
    fetchProduct().then((value) {
      setState(() {
        _products.addAll(value);
        _displayProducts = _products;
      });
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('List Data'),),
      body: ListView.builder(
        itemCount: _displayProducts.length,
        itemBuilder: (BuildContext context, int index){
          return Card(
            child: Padding(
              padding: EdgeInsets.only(top: 32, bottom: 32, left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    _displayProducts[index].TEN,
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}