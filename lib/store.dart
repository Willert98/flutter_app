import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter_app/foodCategory.dart';

class store extends StatelessWidget {
  final String name;

  const store({
    Key key,
    @required this.name,
  })  : assert(name != null),
        super(key: key);

  Widget build(BuildContext context) {
    String storePic = "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1535018502577&di=e6e955d230517f4441689227dfb7e3ad&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F0117e2571b8b246ac72538120dd8a4.jpg%401280w_1l_2o_100sh.jpg";

    return new Center(
      child: Column(
        children: [
          new Container(
            height: 300.0,
            child: Image.network(
              storePic
            ),
          ),
          new Container(
            child: Row(
              children: <Widget>[

              ],
            ),
          )
        ]
      ),

    );
  }

}




