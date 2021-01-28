import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:scoped_model/main.dart';

class login1 extends StatefulWidget {
  @override
  _myLogin createState() => _myLogin();
}

class _myLogin extends State<login1> {
  /// sử dụng để lưu thông tin đăng nhập
  SharedPreferences sharedStorage;

  /// kiểm soát giá trị của TextInput
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();

  /// trạng thái lưu thôgn tin đăng nhập
  bool rememberMe = false;

  /// trạng thái tải dữ liệu
  bool isLoading = false;
  final GlobalKey<State> _keyLoader = new GlobalKey<State>();

  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  checkLogin() async {
    sharedStorage = await SharedPreferences.getInstance();
    if (sharedStorage.containsKey("username") &&
        sharedStorage.containsKey("password")) {
      String username = sharedStorage.getString("username");
      String password = sharedStorage.getString("password");
      bool rememberAccount = sharedStorage.getBool("rememberme");
      userController.text = username;
      passController.text = password;
      setState(() {
        rememberMe = rememberAccount;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Tạo đối tượng User
    User user = User();

    void saveUser(String inputUser) {
      user.user = inputUser;
    }

    void savePass(String inputPass) {
      user.pass = inputPass;
    }

    final formStateKey = GlobalKey<FormState>();

    void submitForm() {
      // Khi form gọi hàm validate thì tất cả các TextFormField sẽ gọi hàm validate.
      // Đó là sức mạnh và lý do cần sử dụng widget Form
      if (formStateKey.currentState
          .validate()) { // hàm validate trả về true là thành công, false là thất bại
        print('Trước khi save: Tên: ${user.user} và tuổi: ${user.pass}');
        formStateKey.currentState
            .save(); // khi form gọi hàm save thì tất cả các TextFormField sẽ gọi hàm save
        print('Sau khi save: Tên: ${user.user} và tuổi: ${user
            .pass}'); // log ra kiểm tra form lưu thành công không
      } else {
        print('Validate thất bại. Vui lòng thử lại');
      }
    }

    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        //Căn chỉnh Nội dung (các phần tử) với viền
        constraints: BoxConstraints.expand(),
        //Định nghĩa rằng buộc về thuộc tính của cont và thường sẽ được sử dụng
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          //Thuộc tính này để căn chỉnh các phần tử con trong hàng hoặc cột (In this case: được căn chỉnh cho Column)
          crossAxisAlignment: CrossAxisAlignment.start,
          //Chức năng như mainAxisAlignment
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: Container(
                width: 70,
                height: 70,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  //image: AssetImage('graphics/background.png'),
                  // Image.asset('assets/images/1.png'),
                  //image: Image.asset('assets/images/lake.jpg'),
                  color: Color(0xffd8d8d8),
                ),
                child: FlutterLogo(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
              child: Text(
                "Hello\nWelcome\tLogin",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
            //   child: TextField(
            //       style: TextStyle(fontSize: 18, color: Colors.black),
            //       //Style cho text được nhập tronme
            //       decoration: InputDecoration(
            //         labelText: "USERNAME",
            //         labelStyle:
            //             TextStyle(color: Color(0xff888888), fontSize: 15),
            //       )),
            // ),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
            //   child: Stack(
            //     alignment: AlignmentDirectional.centerEnd,
            //     children: <Widget>[
            //       TextField(
            //           style: TextStyle(fontSize: 18, color: Colors.black),
            //           //Style cho text được nhập tronme
            //           obscureText: true,
            //           //Mã hoá thành mật khẩu
            //           decoration: InputDecoration(
            //             labelText: "PASSWORD",
            //             labelStyle:
            //                 TextStyle(color: Color(0xff888888), fontSize: 15),
            //           )),
            //       Text(
            //         "SHOW",
            //         style: TextStyle(
            //           color: Colors.blue,
            //           fontSize: 13,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            Form(
              key: formStateKey,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: userController,
                      decoration: InputDecoration(
                        //hintText: 'Vui lòng nhập USERNAME',
                        labelText: 'USERNAM',
                      ),
                      validator: validateUser,
                      onSaved: saveUser,
                    ),
                    TextFormField(
                      controller: passController,
                      obscureText: true,
                      decoration: InputDecoration(
                        //hintText: 'Vui lòng nhập PASSWORD',
                        labelText: 'PASSWORD',
                      ),
                      validator: validatePass,
                      onSaved: savePass,
                    ),
                  ],
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
            //   child: SizedBox(
            //     width: double.infinity,
            //     height: 50,
            //     child: RaisedButton(
            //       color: Colors.blue,
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.all(Radius.circular(8))),
            //       onPressed: () {},
            //       child: Text(
            //         "SIGN IN",
            //         style: TextStyle(color: Colors.white, fontSize: 16),
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: FlatButton(
                child: Text("SIGN IN",
                  style: TextStyle(color: Colors.white, fontSize: 16),),
                color: Colors.blue,
                //onPressed: submitForm,
                onPressed: () {
                  //submitForm();
                  setState(() {
                    isLoading = true;
                  });
                  login(userController.text.trim(),
                      passController.text, context);
                },
              ),
            ),
            Container(
              height: 130,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //Tạo khoảng cách giữa sign up và fog
                children: <Widget>[
                  Text(
                    "NEW USER? SIGN UP",
                    style: TextStyle(color: Color(0xff888888), fontSize: 15),
                  ),
                  Text(
                    "FORGOT PASSWORD",
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  Future<void> login(String user, String pass, BuildContext _keyLoader) async {
    if (user == 'admin' && pass == 'admin') {
      await Future.delayed(Duration(milliseconds: 100));
      Navigator.of(_keyLoader).pushAndRemoveUntil(
          MaterialPageRoute(builder: (BuildContext context) => Home()), (
          Route<dynamic> route) => false);
    } else {
      await Future.delayed(Duration(milliseconds: 100));
      Navigator.of(_keyLoader, rootNavigator: true).pop();
    }
  }

}
//   Future<void> login(String username, String password,BuildContext context) async {
//     // setState(() {
//     //   isLoading = true;
//     // });
//     //Dialogs.showLoadingDialog(context, _keyLoader);
//     /// kiểm tra các input tài khoản mật khẩu có hợp lệ không
//     if (userController.text.isNotEmpty &&
//         passController.text.isNotEmpty) {
//       if (username == "admin" && password == "admin") {
//         ///lưu token đăng nhập
//         sharedStorage.setString("token", "token");
//         sharedStorage.setBool("rememberme", rememberMe);
//         sharedStorage.setString("loginwith", "account");
//
//         ///lưu tài khoản + mật khẩu nếu có đăng ký ghi nhớ tên tài khoản
//         if (rememberMe) {
//           sharedStorage.setString("username", username);
//           sharedStorage.setString("password", password);
//         }
//         // print(sharedStorage.getString("username"));
//         // setState(() {
//         //   isLoading = false;
//         // });
//         await Future.delayed(Duration(seconds: 5));
//         Navigator.of(_keyLoader.currentContext,rootNavigator: true).pop();
//         ///hiển thị trang chủ nếu đăng nhập thành công
//         Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
//             builder: (BuildContext context) => Home()), (
//             Route<dynamic> route) => false);
//       }
//       else{
//         // setState(() {
//         //   isLoading = false;
//         // });
//         await Future.delayed(Duration(seconds: 3));
//         Navigator.of(_keyLoader.currentContext,rootNavigator: true).pop();
//         //showAlertDialog(context, "Tài khoản hoặc mật khẩu khống đúng");
//       }
//     }
//     else{
//       // setState(() {
//       //   isLoading = false;
//       // });
//       await Future.delayed(Duration(seconds: 3));
//       Navigator.of(_keyLoader.currentContext,rootNavigator: true).pop();
//       //showAlertDialog(context, "Tài khoản và mật khẩu không được trống");
//     }
//   }
// }



class User{
  User({this.user, this.pass});
  String user;
  String pass;
}

String validateUser(String inputUser){
  if(inputUser.isEmpty){
    return 'User không được trống';
  }else{
    return null;
  }
}

String validatePass(String inputPass){
  if(inputPass.isEmpty){
    return 'Pass không được để trống';
  } else{
    return null;
  }
}


