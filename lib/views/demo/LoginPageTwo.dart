import 'package:flutter/material.dart';
import 'LoginHomePage.dart';
import 'stacked_icons.dart';

class LoginPageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Color(0xFF18D191)),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new StackedIcon(),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 50.0),
                  child: new Text(
                    "LoginPage",
                    style: TextStyle(fontSize: 30.0),
                  ),
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              child: new TextField(
                decoration: InputDecoration(labelText: 'PhoneNumber'),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              child: new TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'PassWord'),
              ),
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: new Container(
                        alignment: Alignment.center,
                        width: 70.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                            color: Color(0xFF18D191),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
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
                      child: Text(
                        "Forgot Password?",
                        style:
                            TextStyle(color: Color(0xFF18D191), fontSize: 16.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: new Container(
                      alignment: Alignment.center,
                      width: 300.0,
                      height: 60.0,
                      child: Text(
                        "Create A New Account",
                        style: TextStyle(
                            color: Color(0xFF18D191),
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
