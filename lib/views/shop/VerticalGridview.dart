import 'package:flutter/material.dart';

import 'ProductDetail.dart';

class VerticalGridview extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GridState();
  }
}

class GridState extends State<VerticalGridview> {
  var product_list = [
    {
      "name": "TestOne",
      "picture": "https://cdn.stocksnap.io/img-thumbs/960w/6EMBFCXU0J.jpg",
      "old_price": 100.0,
      "price": 88.0,
    },
    {
      "name": "TestTwo",
      "picture": "https://cdn.stocksnap.io/img-thumbs/960w/SS2GVMJTWH.jpg",
      "old_price": 1000.0,
      "price": 888.0,
    },
    {
      "name": "TestThree",
      "picture": "https://cdn.stocksnap.io/img-thumbs/960w/RRYLK7QSIX.jpg",
      "old_price": 50.0,
      "price": 40.0,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.0,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0, //主轴(竖直)方向间距
            crossAxisSpacing: 10.0, //纵轴(水平)方向间距
            childAspectRatio: 1.0 //纵轴缩放比例
            ),
        itemCount: product_list.length,
        itemBuilder: (BuildContext context, int index) {
          return GridItem(
            name: product_list[index]["name"],
            picture: product_list[index]["picture"],
            old_price: product_list[index]["old_price"],
            price: product_list[index]["price"],
          );
        },
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  var name;
  var picture;
  var old_price;
  var price;

  GridItem({this.name, this.picture, this.old_price, this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: name,
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProducrDetail(
                          product_name: name,
                          product_picture: picture,
                          product_old_price: old_price,
                          product_price: price)));
            },
            child: GridTile(
                child: Image.network(
                  picture,
                  fit: BoxFit.cover,
                ),
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text("\$$price",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800)),
                    subtitle: Text("\$$old_price",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.lineThrough)),
                  ),
                )),
          )),
    );
  }
}
