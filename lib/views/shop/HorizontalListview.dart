import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,item){
          return Category(Icons.beach_access,"Test");
        },
      ),
    );
  }
}

// ignore: must_be_immutable
class Category extends StatelessWidget {

  var  imageLocation;
  var imageCaption;

  Category(this.imageLocation,this.imageCaption);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100.0,
          height: 80.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                imageLocation,
                size: 50.0,
                color: Colors.red,
              ),
              Text(imageCaption,
                  style: TextStyle(
                    fontSize: 16.0,
                  ))
            ],
          ),
        ),
      ),
    );
  }}

