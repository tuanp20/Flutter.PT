// import 'dart:math';
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
//
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Animation App",
//       home: AnimationPage(),
//     );
//   }
// }
//
// class AnimationPage extends StatefulWidget{
//   @override
//   _myAnimation createState() => _myAnimation();
// }
//
// class _myAnimation extends State<AnimationPage> with SingleTickerProviderStateMixin {
//
//   AnimationController _controller;
//   Animation<double> _animation;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller =
//         AnimationController(duration: const Duration(seconds: 3), vsync: this);
//     _animation = Tween(begin: 50.0, end: 200.0).animate(_controller)
//       ..addListener(() {
//         setState(() {});
//       })
//       ..addStatusListener((state) {
//         if (state == AnimationStatus.completed) {
//           print("complete");
//         }
//       });
//     _controller.repeat();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromRGBO(202, 103, 50, 1.0),
//         title: Text("200lab Playground", style: TextStyle(color: Colors.white),),
//       ),
//       body: Container(
//         color: Colors.white,
//         child: Column(
//           children: <Widget>[
//             Expanded(
//               flex: 6,
//               child: Container(
//                 alignment: AlignmentDirectional.center,
//                 child: Container(
//                   margin: EdgeInsets.only(top: 50.0),
//                   child: Transform.rotate(
//                     angle: -_animation.value * 2 * pi / 200,
//                     child: Image.asset(
//                       "assets/img/gg.png",
//                       fit: BoxFit.fitHeight,
//                       width: _animation.value,
//                       height: _animation.value,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Expanded(
//                 flex: 1,
//                 child: Center(
//                   child: FloatingActionButton(
//                     backgroundColor: Color.fromRGBO(202, 103, 50, 1.0),
//                     onPressed: () {
//                       _controller.repeat();
//                     },
//                     child: Icon(Icons.refresh, color: Colors.white,),
//                   ),
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }

import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePage createState() => _WelcomePage();
}

class _WelcomePage extends State<WelcomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: const Duration(seconds: 3), vsync: this);
    _animation = Tween(begin: 50.0, end: 200.0).animate(_controller)..addListener(() {setState(() {});})
      ..addStatusListener((state) {
        if (state == AnimationStatus.completed) {
          print("complete");
        }
      });
    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(202, 103, 50, 1.0),
        title: Text("200lab Playground", style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Container(
                alignment: AlignmentDirectional.center,
                child: Container(
                  margin: EdgeInsets.only(top: 50.0),
                  child: Transform.rotate(
                    angle: -_animation.value * 2 * pi / 200,
                    child: Image.asset(
                      'assets/img/gg.png',
                      fit: BoxFit.fitHeight,
                      width: _animation.value,
                      height: _animation.value,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Center(
                  child: FloatingActionButton(
                    backgroundColor: Color.fromRGBO(202, 103, 50, 1.0),
                    onPressed: () {
                      _controller.repeat();
                    },
                    child: Icon(Icons.refresh, color: Colors.white,),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}