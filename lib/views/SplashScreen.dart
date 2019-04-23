import 'dart:async';
import 'package:flutter/material.dart';
import 'MainPage.dart';

class SplahsScreen extends StatefulWidget {
  @override
  _SplahsScreenState createState() => _SplahsScreenState();
}

class _SplahsScreenState extends State<SplahsScreen> {

  bool isStartHomePage = false;

  @override
  void initState() {
    super.initState();
    countDown();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/MainPage': (BuildContext context) => MainPage(),
        },
        home: Image.asset("images/splash_bg.png", fit: BoxFit.cover));
  }

  // 倒计时
  void countDown() {
    var _duration = new Duration(seconds: 1);
    new Future.delayed(_duration, _goMain);
  }

  void _goMain() {
    //如果页面还未跳转过则跳转页面
    if(!isStartHomePage) {
      //跳转主页 且销毁当前页面
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return new MainPage();
      }));
      isStartHomePage = true;
    }
  }
}
