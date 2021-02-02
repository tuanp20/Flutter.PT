import 'package:e_commerce/Models/Products.dart';
import 'package:e_commerce/common/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'body.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      //bottomNavigationBar: btNavigation(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 5.0,
    leading: IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: null,
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.search_outlined),
        onPressed: null,
      ),
      IconButton(icon: Icon(Icons.shopping_cart_outlined), onPressed: null)
    ],
  );
}

