import 'package:flutter/material.dart';
import 'MyAppBar.dart';

class IrregularBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: ThemeData(primaryColor: Colors.blue),
        home: BottomNavigationWidget());
  }
}

class BottomNavigationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyBar();
  }
}

class MyBar extends State<BottomNavigationWidget> {
  final _BottomNavigationColor = Colors.blue;
  int _index = 0;
  var _pageList;

  @override
  void initState() {
    super.initState();
    /*
   * 子界面
   */
    _pageList = [new MyAppBar("哈哈"), new MyAppBar("嘿嘿")];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_index],
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.business),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  _index = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.account_balance),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(new MaterialPageRoute(
            builder: (context) {
              return new MyAppBar("flb");
            },
          ));
        },
        tooltip: "funnydsx",
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
