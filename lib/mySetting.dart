import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      home: new ListDemo(),
    ),
  );
}

class ListDemo extends StatefulWidget {
  @override
  _ListDemoState  createState() {
    return new _ListDemoState();
  }
}

class _ListDemoState extends State<ListDemo> {
//buildListTile相当于ListView的Adapter
  Widget buildListTile(BuildContext context, String item) {
    return new ListTile(
      title: new Column(
        children: <Widget>[
          new Container(
            height: 20.0,
          ),
          new Row(
            children: <Widget>[
              new Container(
                width: 20.0,
              ),
              ClipOval(
                child: SizedBox(
                  width: 100.0,
                  height: 100.0,
                  child: Image(
                    image: NetworkImage(
                      'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1889660434,1069288854&fm=15&gp=0.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
//              new Image.network(
//                'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1889660434,1069288854&fm=15&gp=0.jpg',
//                fit: BoxFit.cover,
//                height: 60.0,
//              ),
              new Container(
                width: 20.0,
              ),
              new Column(
                children: <Widget>[
                  new Text(
                    '叫外卖我最强',
                    style: new TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  new Container(
                    height: 5.0,
                  ),
                  new Text(
                    '188****6868',
                    style: new TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              new Container(
                width: 100.0,
              ),
              new Icon(
                Icons.keyboard_arrow_right,
                color: Colors.blue,
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              new Container(
                width: 25.0,
                height: 140.0,
              ), //控制钱包与左边的距离
              new Column(
                children: <Widget>[
                  new Text(
                    '10.0元',
                    style: new TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  new Text(
                    '钱包',
                  ),
                ],
              ),
              new Container(
                width: 100.0,
              ),
              new Column(
                children: <Widget>[
                  new Text(
                    '8个',
                    style: new TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  new Text(
                    '红包',
                  ),
                ],
              ),
              new Container(
                width: 100.0,
              ),
              new Column(
                children: <Widget>[
                  new Text(
                    '6个',
                    style: new TextStyle(
                      color: Colors.orange,
                    ),
                  ),
                  new Text(
                    '红金币',
                  ),
                ],
              )
            ],
          ),
          new Row(
            children: <Widget>[
              new Container(
                width: 378.0,
                height: 80.0,
                color: Colors.white,
              ),
            ],
          ),
          new Container(
            height: 30.0,
          ),
          new Row(
            children: <Widget>[
              new Container(
                width: 16.0,
              ),
              new Icon(
                Icons.edit_location,
                color: Colors.blue,
              ),
              new Container(
                width: 16.0,
              ),
              new Text(
                '收货地址',
                style: new TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    List<String> items = <String>['A'];
    Iterable<Widget> listTitles = items.map((String item) {
      //将items的内容设置给Adapter
      return buildListTile(context, item);
    });
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('我的'),
      ),
      body: new Scrollbar(
        child: new ListView(
          children: listTitles.toList(), //添加ListView控件
        ),
      ),
    );
  }
}
