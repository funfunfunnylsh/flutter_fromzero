import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'HorizontalListview.dart';
import 'VerticalGridview.dart';


class ShopMain extends StatefulWidget {
  @override
  _ShopMainState createState() => _ShopMainState();
}

class _ShopMainState extends State<ShopMain> {
  @override
  Widget build(BuildContext context) {
    Widget imgCarsoule = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
//          AssetImage("images/splash_bg.png"),
//          AssetImage("images/splash_bg.png"),
//          AssetImage("images/splash_bg.png"),
//          AssetImage("images/splash_bg.png"),
          NetworkImage(
              "https://cdn.stocksnap.io/img-thumbs/960w/6EMBFCXU0J.jpg"),
          NetworkImage(
              "https://cdn.stocksnap.io/img-thumbs/960w/SS2GVMJTWH.jpg"),
          NetworkImage(
              "https://cdn.stocksnap.io/img-thumbs/960w/NVTWVF4FQB.jpg"),
          NetworkImage(
              "https://cdn.stocksnap.io/img-thumbs/960w/RRYLK7QSIX.jpg"),
          NetworkImage("https://cdn.stocksnap.io/img-thumbs/960w/YWN71I7VLH.jpg"),
        ],
        autoplay: true,
        autoplayDuration: Duration(milliseconds: 8000),
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4,
        dotIncreaseSize: 2,
        indicatorBgPadding: 2,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colors.red,
          title: Text("ShopApp"),
          actions: <Widget>[
            IconButton(
              icon: new Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: new Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("funfunfunny"),
                accountEmail: Text("funfunfunny@163.com"),
                currentAccountPicture: GestureDetector(
                  onTap: () {},
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.tag_faces,
                      color: Colors.white,
                    ),
//                    child: Image.network(
//                        "http://img5.duitang.com/uploads/item/201512/18/20151218165511_AQW4B.jpeg"),
                  ),
                ),
                decoration: BoxDecoration(color: Colors.red),
              ),
              ListTile(
                contentPadding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
                title: new Text("HomePage"),
                enabled: true,
                leading: new Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                trailing: new Icon(Icons.keyboard_arrow_right),
                onTap: () {},
              ),
              ListTile(
                contentPadding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
                title: new Text("MyAccount"),
                enabled: true,
                leading:
                    new Icon(Icons.supervised_user_circle, color: Colors.red),
                trailing: new Icon(Icons.keyboard_arrow_right),
                onTap: () {},
              ),
              ListTile(
                contentPadding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
                title: new Text("MyOrders"),
                enabled: true,
                leading: new Icon(Icons.reorder, color: Colors.red),
                trailing: new Icon(Icons.keyboard_arrow_right),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                contentPadding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
                title: new Text("Setting"),
                enabled: true,
                leading: new Icon(Icons.settings),
                trailing: new Icon(Icons.keyboard_arrow_right),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            imgCarsoule,
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text(
                "Categories",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            HorizontalList(),
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text(
                "Hot Products",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            VerticalGridview()
          ],
        ),
      ),
    );
  }
}
