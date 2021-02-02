
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class login extends StatefulWidget{
  @override
  _loginPage createState() => _loginPage();
}

class _loginPage extends State<login>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Center(
              //padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Image.asset('assets/img/instagram-logo.jpg', fit:BoxFit.fill, width: 200,)
            ),
            // Form(child: Container(
            //   child: Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
            //   child: TextFormField(
            //     decoration: InputDecoration(
            //       contentPadding: EdgeInsets.all(15),
            //       border: OutlineInputBorder(),
            //       labelText: 'Số điện thoại, tên người dùng hoặc email',
            //       labelStyle: TextStyle(fontSize: 13),
            //     ),
            //   ),),
            //
            // )),
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: TextField(
                //controller: ,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  border: OutlineInputBorder(),
                  labelText: 'Số điện thoại, tên người dùng hoặc email',
                  labelStyle: TextStyle(fontSize: 13),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: TextField(
                //controller: ,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  border: OutlineInputBorder(),
                  labelText: 'Mật khẩu',
                  labelStyle: TextStyle(fontSize: 13),
                  suffix: Icon(Icons.remove_red_eye_outlined, size: 14.0,),

                ),
              ),
            ),
            Row(
              //padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('Quên mật khẩu?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.blue), textAlign: TextAlign.center,)
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('Đăng nhập'),
                onPressed: (){},
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Divider(
                  thickness: 2,
                ),
                Text(''),
                Divider(),
              ],
            ),
            Divider(
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(FontAwesomeIcons.facebookSquare, color: Colors.blue,),
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Text('Đăng nhập bằng Facebook', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 14),),
                ),
              ],
            ),
            SizedBox(height: 100,),
            Divider(
              thickness: 1.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Container(
                //   child: Text('Bạn không có tài khoản ư?', style: TextStyle(color: Colors.black,fontSize: 12, fontWeight: FontWeight.w100),),
                //   margin: EdgeInsets.only(left: 10),
                //   child: Text('Đăng ký'),
                // ),
                Text('Bạn không có tài khoản ư?',  style: TextStyle(color: Colors.black,fontSize: 12, fontWeight: FontWeight.w300),),
                Text('Đăng ký', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
              ],
            ),
          ],
        ),

      ),
    );
  }
}
