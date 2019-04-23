import 'package:flutter/material.dart';
import 'router/custom_router.dart';

class NavigateFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pinkAccent,
        appBar: new AppBar(
          backgroundColor: Colors.pinkAccent,
          title: new Text(
            'FirstPage',
            style: TextStyle(fontSize: 36.0),
          ),
          elevation: 0.0,
        ),
        body: new Center(
          child: MaterialButton(
            child: Icon(
              Icons.navigate_next,
              color: Colors.white,
              size: 64.0,
            ),
            onPressed: () {
              Navigator.of(context).push(new CustomRouter(NavigateSecond()));
            },
          ),
        ));
  }
}

class NavigateSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: new AppBar(
          backgroundColor: Colors.redAccent,
          title: new Text(
            'SecondPage',
            style: TextStyle(fontSize: 36.0),
          ),
          elevation: 0.0,
        ),
        body: new Center(
          child: MaterialButton(
            child: Icon(
              Icons.navigate_before,
              color: Colors.white,
              size: 64.0,
            ),
            onPressed: () {
              Navigator.of(context).pop();
//              Navigator.of(context).push(new MaterialPageRoute(
//                builder: (context) {
//                  return new RightBackDemo();
//                },
//              ));

            },
          ),
        ));
  }
}



class RightBackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          platform: TargetPlatform.iOS//添加这个属性即可
      ),
      home: Scaffold(
          backgroundColor: Colors.deepPurpleAccent,
          appBar: new AppBar(
            backgroundColor: Colors.deepPurpleAccent,
            title: new Text(
              'ThirdPage',
              style: TextStyle(fontSize: 36.0),
            ),
            elevation: 0.0,
          ),
          body: new Center(
            child: MaterialButton(
              child: Icon(
                Icons.navigate_before,
                color: Colors.white,
                size: 64.0,
              ),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) {
                    return new RightBackDemo();
                  },
                ));
              },
            ),
          ))
    );
  }
}

