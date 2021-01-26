import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _appNew createState() => _appNew();
}

class _appNew extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List Product Box",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "List Product Apple",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        body: MyListHome(),
      ),
    );
  }
}

class MyListHome extends StatefulWidget {
  @override
  _listProduct createState() => _listProduct();
}

class _listProduct extends State<MyListHome> {
  //final String title;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
      children: <Widget>[
        ProductBox(
            name: "iPhone 12",
            description: "iPhone is the stylist phone ever",
            price: 1000,
            image: "iphone12.jpg"),
        ProductBox(
            name: "Air Pods",
            description: "Air Pods is the stylist phone ever",
            price: 562,
            image: "airpods.png"),
        ProductBox(
            name: "Apple Watch",
            description: "Apple Watch is the stylist phone ever",
            price: 692,
            image: "applewatch.jpg"),
        ProductBox(
            name: "iMac",
            description: "iMac is the stylist phone ever",
            price: 1520,
            image: "imac.jpeg"),
        ProductBox(
            name: "iPad",
            description: "iPad is the stylist phone ever",
            price: 999,
            image: "ipad.jpg"),
        ProductBox(
            name: "Macbook Pro",
            description: "MacBook Pro is the stylist phone ever",
            price: 563,
            image: "macbookpro.jpg"),
        ProductBox(
            name: "Mac Mini",
            description: "Mac Mini is the stylist phone ever",
            price: 1000,
            image: "macmini.jpg"),

      ],
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.name, this.description, this.price, this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset("assets/img/" + image),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Price: " + this.price.toString()),
                        ],
                      )))
            ])));
  }
}
