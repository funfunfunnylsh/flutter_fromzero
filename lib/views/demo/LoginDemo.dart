import 'package:flutter/material.dart';
import 'LoginPageTwo.dart';
import 'stacked_icons.dart';

void main() => runApp(LoginPage());

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "LoginPage",
//      theme: ThemeData(fontFamily: 'Roboto'),
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new StackedIcon(),
            new Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 80.0),
              child: new Text(
                "LoginPage",
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPageTwo()));
                      },
                      child: new Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        decoration: BoxDecoration(
                            color: Color(0xff19d191),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Text(
                          "Sign With Phone",
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 10, 20, 0),
                    child: new Container(
                      alignment: Alignment.center,
                      width: 70.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                          color: Color(0xff4364a1),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        "QQ",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 10, 20, 0),
                    child: new Container(
                      alignment: Alignment.center,
                      width: 70.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                          color: Color(0xffDF5138),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        "WECHAT",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
