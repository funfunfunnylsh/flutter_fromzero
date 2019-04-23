import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  var _title;
  MyAppBar(this._title);

  @override
  State<StatefulWidget> createState() {
    return MyBarState();
  }
}

class MyBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: new Text(widget._title),
        backgroundColor: Colors.deepOrangeAccent),
      body: new Center(child: Text(widget._title)),
    );

  }
}
