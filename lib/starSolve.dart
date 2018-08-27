import 'package:flutter/material.dart';

class starSolve extends StatefulWidget {
  final String score;

  const starSolve({
    Key key,
    @required this.score,
  })  : assert(score != null),
        super(key: key);
  @override
  State<StatefulWidget> createState() {
    if(score == '5'){
      return _starSolveState5();
    }
    else if(score == '4'){
      return _starSolveState4();
    }
    else if(score == '3'){
      return _starSolveState3();
    }
    else if(score == '2'){
      return _starSolveState2();
    }
    else if(score == '1'){
      return _starSolveState1();
    }else{
      return _starSolveState0();
    }
    }
  }


class _starSolveState5 extends State<StatefulWidget> {
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: <Widget>[
          new Icon(Icons.star, color: Colors.amberAccent),
          new Icon(Icons.star, color: Colors.amberAccent),
          new Icon(Icons.star, color: Colors.amberAccent),
          new Icon(Icons.star, color: Colors.amberAccent),
          new Icon(Icons.star, color: Colors.amberAccent),
    ]));
  }
}
class _starSolveState4 extends State<StatefulWidget> {
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: <Widget>[
          new Icon(Icons.star, color: Colors.amberAccent),
          new Icon(Icons.star, color: Colors.amberAccent),
          new Icon(Icons.star, color: Colors.amberAccent),
          new Icon(Icons.star, color: Colors.amberAccent),
          new Icon(Icons.star, color: Colors.black12),

        ]));
  }
}
class _starSolveState3 extends State<StatefulWidget> {
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: <Widget>[
          new Icon(Icons.star, color: Colors.amberAccent),
          new Icon(Icons.star, color: Colors.amberAccent),
          new Icon(Icons.star, color: Colors.amberAccent),
          new Icon(Icons.star, color: Colors.black12),
          new Icon(Icons.star, color: Colors.black12),
        ]));
  }
}
class _starSolveState2 extends State<StatefulWidget> {
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: <Widget>[
          new Icon(Icons.star, color: Colors.amberAccent),
          new Icon(Icons.star, color: Colors.amberAccent),
          new Icon(Icons.star, color: Colors.black12),
          new Icon(Icons.star, color: Colors.black12),
          new Icon(Icons.star, color: Colors.black12),
        ]));
  }
}
class _starSolveState1 extends State<StatefulWidget> {
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: <Widget>[
          new Icon(Icons.star, color: Colors.amberAccent),
          new Icon(Icons.star, color: Colors.black12),
          new Icon(Icons.star, color: Colors.black12),
          new Icon(Icons.star, color: Colors.black12),
          new Icon(Icons.star, color: Colors.black12),
        ]));
  }
}
class _starSolveState0 extends State<StatefulWidget> {
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: <Widget>[
          new Icon(Icons.star, color: Colors.black12),
          new Icon(Icons.star, color: Colors.black12),
          new Icon(Icons.star, color: Colors.black12),
          new Icon(Icons.star, color: Colors.black12),
          new Icon(Icons.star, color: Colors.black12),
        ]));
  }
}