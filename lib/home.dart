import 'package:flutter/material.dart';
import 'package:flutter_app/storeListRoute.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class home extends StatelessWidget {
  final String username;

  const home({Key key, @required this.username})
      : assert(username != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    var a = storeListRoute().a;
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '外卖',
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.fastfood),
            title: new Text('外卖'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.add_shopping_cart),
            title: new Text('订单'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.perm_identity),
            title: new Text('我的'),
          ),
        ]),
        appBar: new AppBar(
          title: new Row(
            children: <Widget>[
              new Icon(Icons.location_on),
              new Text('广东东软学院'),
            ],
          ),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.playlist_play),
              tooltip: 'Air it',
            ),
            new IconButton(
              icon: new Icon(Icons.playlist_add),
              tooltip: 'Restitch it',
            ),
            new IconButton(
              icon: new Icon(Icons.playlist_add_check),
              tooltip: 'Repair it',
            ),
          ],
        ),
        body: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            new Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: new TextField(
                  decoration: new InputDecoration(
                      hintText: "Type in here!"
                  ),
                )
            ),
            new Expanded(child: storeListRoute())
          ],
        ),
      ),
    );

  }
}
