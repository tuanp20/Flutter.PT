// import 'package:flutter/material.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatefulWidget {
//   @override
//   _appNew createState() => _appNew();
// }
//
// class _appNew extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "List Product Box",
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             "List Product Apple",
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//         ),
//         body: MyListHome(),
//       ),
//     );
//   }
// }
//
// class MyListHome extends StatefulWidget {
//   @override
//   _listProduct createState() => _listProduct();
// }
//
// class _listProduct extends State<MyListHome> {
//   //final String title;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       shrinkWrap: true,
//       padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
//       children: <Widget>[
//         ProductBox(
//             name: "iPhone 12",
//             description: "iPhone is the stylist phone ever",
//             price: 1000,
//             image: "iphone12.jpg"),
//         ProductBox(
//             name: "Air Pods",
//             description: "Air Pods is the stylist phone ever",
//             price: 562,
//             image: "airpods.png"),
//         ProductBox(
//             name: "Apple Watch",
//             description: "Apple Watch is the stylist phone ever",
//             price: 692,
//             image: "applewatch.jpg"),
//         ProductBox(
//             name: "iMac",
//             description: "iMac is the stylist phone ever",
//             price: 1520,
//             image: "imac.jpeg"),
//         ProductBox(
//             name: "iPad",
//             description: "iPad is the stylist phone ever",
//             price: 999,
//             image: "ipad.jpg"),
//         ProductBox(
//             name: "Macbook Pro",
//             description: "MacBook Pro is the stylist phone ever",
//             price: 563,
//             image: "macbookpro.jpg"),
//         ProductBox(
//             name: "Mac Mini",
//             description: "Mac Mini is the stylist phone ever",
//             price: 1000,
//             image: "macmini.jpg"),
//
//       ],
//     );
//   }
// }
//
// class ProductBox extends StatelessWidget {
//   ProductBox({Key key, this.name, this.description, this.price, this.image})
//       : super(key: key);
//   final String name;
//   final String description;
//   final int price;
//   final String image;
//
//   Widget build(BuildContext context) {
//     return Container(
//         padding: EdgeInsets.all(2),
//         height: 120,
//         child: Card(
//             child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//               Image.asset("assets/img/" + image),
//               Expanded(
//                   child: Container(
//                       padding: EdgeInsets.all(5),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: <Widget>[
//                           Text(this.name,
//                               style: TextStyle(fontWeight: FontWeight.bold)),
//                           Text(this.description),
//                           Text("Price: " + this.price.toString()),
//                         ],
//                       )))
//             ])));
//   }
// }


// import 'package:flutter/material.dart';
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello World Demo Application',
//       theme: ThemeData( primarySwatch: Colors.blue,),
//       home: MyHomePage(title: 'Home page'),
//     );
//   }
// }
// class MyHomePage extends StatelessWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;
//
//   // user defined function
//   void _showDialog(BuildContext context) {
//     // user defined function void _showDialog(BuildContext context) {
//     // flutter defined function
//     showDialog(context: context, builder: (BuildContext context) {
//       // return object of type Dialog
//       return AlertDialog(
//         title: new Text("Message"),
//         content: new Text("Hello World"),
//         actions: <Widget>[
//           new FlatButton(
//             child: new Text("Close"),
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//           ),
//         ],
//       );
//     },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(this.title),),
//       body: Center(
//           child: GestureDetector(
//               onTap: () {
//                 _showDialog(context);
//               },
//               child: Text( 'Hello World', )
//           )
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', theme: ThemeData(
      primarySwatch: Colors.blue,),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:Text("Product Listing")),
        body: ListView(
          shrinkWrap: true, padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget> [
            ProductBox(
                name: "iPhone",
                description: "iPhone is the stylist phone ever",
                price: 1000,
                image: "iphone.jpg"
            ),
            ProductBox(
                name: "Pixel",
                description: "Pixel is the most featureful phone ever",
                price: 800,
                image: "pixel.jpg"
            ),
            ProductBox(
                name: "Laptop",
                description: "Laptop is most productive development tool",
                price: 2000,
                image: "laptop.jpg"
            ),
            ProductBox(
                name: "Tablet",
                description: "Tablet is the most useful device ever for meeting",
                price: 1500,
                image: "tablet.jpg"
            ),
            ProductBox(
                name: "Pendrive",
                description: "Pendrive is useful storage medium",
                price: 100,
                image: "pendrive.jpg"
            ),
            ProductBox(
                name: "Floppy Drive",
                description: "Floppy drive is useful rescue storage medium",
                price: 20,
                image: "floppydisk.jpg"
            ),
          ],
        )
    );
  }
}
class RatingBox extends StatefulWidget {
  @override
  _RatingBoxState createState() => _RatingBoxState();
}
class _RatingBoxState extends State<RatingBox> {
  int _rating = 0;
  void _setRatingAsOne() {
    setState( () {
      _rating = 1;
    });
  }
  void _setRatingAsTwo() {
    setState( () {
      _rating = 2;
    });
  }
  void _setRatingAsThree() {
    setState( () {
      _rating = 3;
    });
  }
  Widget build(BuildContext context) {
    double _size = 20;
    print(_rating);

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 1 ? Icon(Icons.star, size: _size,) :
            Icon(Icons.star_border, size: _size,)),
            color: Colors.red[500],
            onPressed: _setRatingAsOne,
            iconSize: _size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 2 ? Icon(Icons.star, size: _size,) :
            Icon(Icons.star_border, size: _size,)),
            color: Colors.red[500],
            onPressed: _setRatingAsTwo,
            iconSize: _size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 3 ? Icon(Icons.star, size: _size,) :
            Icon(Icons.star_border, size: _size,)),
            color: Colors.red[500],
            onPressed: _setRatingAsThree,
            iconSize: _size,
          ),
        ),
      ],
    );
  }
}
class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.name, this.description, this.price, this.image}) :
        super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 140,
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
                              Text(this.name, style: TextStyle(fontWeight: FontWeight.bold)),
                              Text(this.description),
                              Text("Price: " + this.price.toString()),
                              RatingBox(),
                            ],
                          )
                      )
                  )
                ]
            )
        )
    );
  }
}