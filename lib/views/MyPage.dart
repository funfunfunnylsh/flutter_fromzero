import 'package:flutter/material.dart';
import 'mine/Demo1.dart';

class MyPage extends StatelessWidget {

  //父类上下文
  var parentContext;
  MyPage(this.parentContext);


  @override
  Widget build(BuildContext context) {
    return PageWidget(parentContext);
  }
}

class PageWidget extends StatefulWidget {
  //父类上下文
  var parentContext;
  PageWidget(this.parentContext);

  @override
  State<StatefulWidget> createState() {
    return new PageState();
  }
}

class PageState extends State<PageWidget> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Center(child: const Text('我的')),
          backgroundColor: Colors.deepOrangeAccent),
      body: new Center(
        child: new RaisedButton(
          onPressed: _pushPage,
          child: const Text("Navigator"),
        ),
      ),
    );
  }

  _pushPage() {
//    Navigator.of(context).pushNamed("/demo1");
    Navigator.of(widget.parentContext).push(new MaterialPageRoute(builder: (context) {
      return new Demo1();
    },));
  }
}
