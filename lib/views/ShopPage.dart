import 'package:flutter/material.dart';
import 'mine/Demo1.dart';
import 'shop/ShopMainActivity.dart';

class ShopPage extends StatelessWidget {

  //父类上下文
  var parentContext;
  ShopPage(this.parentContext);


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
          title: new Center(child: const Text('商城')),
          backgroundColor: Colors.deepOrangeAccent),
      body: new Center(
        child: new RaisedButton(
          onPressed: _pushPage,
          child: const Text("进入商城"),
        ),
      ),
    );
  }

  _pushPage() {
//    Navigator.of(context).pushNamed("/demo1");
    Navigator.of(widget.parentContext).push(new MaterialPageRoute(builder: (context) {
      return new ShopMain();
    },));
  }
}
