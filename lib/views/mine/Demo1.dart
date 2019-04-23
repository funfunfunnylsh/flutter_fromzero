import 'package:flutter/material.dart';

class Demo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: new AppBar(
          title: new Text('Demo1'),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: new Center(child: new Text("Demo1")),
    );
  }
}
