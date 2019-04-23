import 'package:flutter/material.dart';

class WrapDemo extends StatefulWidget {
  @override
  _WrapDemoState createState() => _WrapDemoState();
}

class _WrapDemoState extends State<WrapDemo> {
  List<Widget> list;

  @override
  void initState() {
    super.initState();
    list = List<Widget>()..add(buildButton());
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap"),
      ),
      body: Center(
        child: Opacity(opacity: 0.8,
        child: Container(
          width: width,
          height: height/2,
          color: Colors.grey,
          child: Center(
            child: Wrap(
              children: list,
              spacing: 26.0,
            ),
          )

        ),),

      ),


    );
  }

  Widget buildButton() {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 80,
          height: 80,
          color: Colors.green,
          child: Icon(Icons.add),
        ),
      ),
      onTap: () {
        if (list.length < 9) {
          setState(() {
            list.insert(list.length - 1, buildPhoto());
          });
        }
      },
    );
  }

  Widget buildPhoto() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 80,
        height: 80,
        color: Colors.yellow,
        child:Center(
          child:  Text("图片"),
        ),
      ),
    );
  }
}
