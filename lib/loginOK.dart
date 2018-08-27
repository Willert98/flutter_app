import 'package:flutter_app/storeList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/home.dart';
import 'package:flutter_app/login.dart';
import 'dart:io';

class loginOK extends StatelessWidget {
  final String username;

  const loginOK({Key key, @required this.username})
      : assert(username != null),
        super(key: key);

  void _home(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<Null>(
      builder: (BuildContext context) {
        sleep(const Duration(seconds: 1));
        return home(username: username,

        );
      },
    ));
  }


  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: new Column(
          children: <Widget>[
            new Image.network(
                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1535281644657&di=4ecec71671f477cca818032f82919767&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2Fb9c07f3703b3b3a3ac463046cdd419975efbf9972d61f-XVbZWQ_fw658'
            ),

          ],
        ),
      ),
    );
  }
}
