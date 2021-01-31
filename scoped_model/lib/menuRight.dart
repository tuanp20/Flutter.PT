import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/login.dart';
import 'package:scoped_model/main.dart';
import 'package:shared_preferences/shared_preferences.dart';


class MenuRight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      borderRadius:
                      BorderRadius.all(Radius.circular(50.0)),
                      elevation: 10,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image.asset("assets/img/avartar-icon.png",
                            height: 60, width: 60),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      // name == null ? "admin" : name,
                      "Pham Tuan",
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      // email == null ? "admin@support.com" : email,
                      "phamtuan@simax.com",
                      style: TextStyle(color: Colors.blue, fontSize: 16.0),
                    )
                  ],
                ),
              )),
          new ListTile(
            title: new Text('Cài đặt'),
            // trailing: new Icon(Icons.exit_to_app),
            trailing: new IconButton(
              icon: new Icon(Icons.settings),
              onPressed: () {},
            ),
            onTap: () {},
          ),
          new ListTile(
            title: new Text('Đăng xuất'),
            // trailing: new Icon(Icons.exit_to_app),
            trailing: new IconButton(
              icon: new Icon(Icons.exit_to_app),
            ),
            onTap: () {
              logOut(context);
            },
          ),
        ],
      ),
    );
  }
}


void logOut(BuildContext context) async{
  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => login1()), (Route<dynamic> route) => false);
}
