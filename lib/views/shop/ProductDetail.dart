import 'package:flutter/material.dart';

class ProducrDetail extends StatefulWidget {
  var product_name;
  var product_picture;
  var product_old_price;
  var product_price;

  ProducrDetail(
      {this.product_name,
      this.product_picture,
      this.product_old_price,
      this.product_price});

  @override
  _ProducrDetailState createState() => _ProducrDetailState();
}

class _ProducrDetailState extends State<ProducrDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.red,
        title: Text("ShopApp"),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
              height: 300.0,
              child: GridTile(
                child: Image.network(
                  widget.product_picture,
                  fit: BoxFit.cover,
                ),
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    isThreeLine: false,
                    leading: Text(
                      widget.product_name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Text("\$${widget.product_price}",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800)),
                    title: Text("\$${widget.product_old_price}",
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough)),
                  ),
                ),
              )),
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                onPressed: () {},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Size"),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Color"),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Qty"),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ))
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(child: MaterialButton(onPressed: (){},
              color: Colors.red,
              textColor: Colors.white,
              elevation: 0.2,
              child: Text("Buy now"),)),

              new IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: (){},color: Colors.red),
              new IconButton(icon: Icon(Icons.favorite_border), onPressed: (){},color: Colors.red),

            ],
          )
        ],
      ),
    );
  }
}
