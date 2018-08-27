import 'package:flutter/material.dart';
import 'package:flutter_app/starSolve.dart';
import 'package:flutter_app/store.dart';
import 'dart:io';

final _rowHeight = 200.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 9);

class storeList extends StatelessWidget {
  final String name;
  final String picLoction;
  final String score;
  final String sale;
  final String startingPrice;
  final String shipping;
  final String category;
  final String promotion;

  const storeList({
    Key key,
    @required this.name,
    @required this.picLoction,
    @required this.score,
    @required this.sale,
    @required this.startingPrice,
    @required this.shipping,
    @required this.category,
    @required this.promotion,
  })  : assert(name != null),
        assert(picLoction != null),
        assert(score != null),
        assert(sale != null),
        assert(startingPrice != null),
        assert(shipping != null),
        assert(category != null),
        super(key: key);

  void _storeListToStore(BuildContext context) {
    String name = this.name;
    Navigator.of(context).push(MaterialPageRoute<Null>(
      builder: (BuildContext context) {
        return Scaffold(
          body: store(name: name),
        );
      },
    ));
  }

  Widget build(BuildContext context) {
    //中文
    String fenshu = '分数';
    String qisongjia = '起送价';
    String leibie = '类别';
    String huodong = '活动';
    String peisongfei = '配送费';
    String yuexiaoshou = '月销售';
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius,
          onTap: () {
            print('I was tapped!');

            _storeListToStore(context);
            //打到这里
          },
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                new Container(
                  child: new Image.network(
                    picLoction,
                    height: 100.0,
                    width: 100.0,
                    scale: 1.0,
                    fit: BoxFit.cover,
                  ),
                ),
                new Container(
                    child: new Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                      new Text(
                        name,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline,
                      ),
                      new Container(
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            new Container(
                              child: starSolve(score: score),
                              //星星解决
                            ),
                            new Text(
                              score,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline,
                            ),
                            new Text(
                              yuexiaoshou + ' : ' + sale,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline,
                            ),
                          ],
                        ),
                      ),
                      new Container(
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            new Text(
                              qisongjia + ' : ¥' + startingPrice,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline,
                            ),
                            new Text(
                              ' |  ',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline,
                            ),
                            new Text(
                              peisongfei + ' : ¥' + shipping,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline,
                            ),
                          ],
                        ),
                      ),
                      new Text(
                        leibie + '：' + category,
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.headline,
                      ),
                      new Text(
                        huodong + '：' + promotion,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline,
                      ),
                    ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

