import 'package:flutter/material.dart';
import 'package:flutter_app/home.dart';
import 'package:flutter_app/loginOK.dart';

class login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyAppState();

  }
}

class MyAppState extends State<login> {

//用户名输入框的控制器
  TextEditingController _userNameController = new TextEditingController();
//密码输入框的控制器
  TextEditingController _userPasswordController = new TextEditingController();

  void _home(BuildContext context,String username) {
    Navigator.of(context).push(MaterialPageRoute<Null>(
      builder: (BuildContext context) {
        print(_userNameController.text.toString());
        return home(username: username,);
      },
    ));
  }

  void onTextClear() {
    setState(() {
      _userNameController.text = "";
      _userPasswordController.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    //设置页面标题
    return new Scaffold(
        appBar: new AppBar(
        ),
        body: new Column(
          children: <Widget>[
            //用户名文本输入框的装饰
            new TextField(
              controller: _userNameController,
              decoration: new InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 10.0),
                  icon: new Icon(Icons.perm_identity),
                  labelText: "请输入用户名",
                  helperText: "注册时填写的名字"),
            ),
            //密码输入框的装饰
            new TextField(
              controller: _userPasswordController,
              decoration: new InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 10.0),
                  icon: new Icon(Icons.lock),
                  labelText: "请输入密码",
                  helperText: "登录密码"),
              obscureText: true,
            ),
            new Builder(builder: (BuildContext context) {
              //监听RaisedButton的点击事件，并做相应的处理，即点击登录按钮的处理
              return new RaisedButton(
                  onPressed: () {
                    String username = _userNameController.text.toString();
                    String userpswd = _userPasswordController.text.toString();
                    if (username == 'admin' &&
                         userpswd== 'admin') {
                      Scaffold.of(context).showSnackBar(
                          new SnackBar(content: new Text("登录成功")));

                      _home(context,username);
                    } else {
                      Scaffold.of(context).showSnackBar(
                          new SnackBar(content: new Text("登录失败，用户名密码有误")));
                    }

                    onTextClear();
                  },
                  color: Colors.blue,
                  highlightColor: Colors.lightBlueAccent,
                  disabledColor: Colors.lightBlueAccent,
                  child: new Text(
                    "登录",
                    style: new TextStyle(color: Colors.white),
                  ));
            })
          ],
        ));
  }
}