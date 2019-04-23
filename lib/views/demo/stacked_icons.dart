import 'package:flutter/material.dart';

class StackedIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        new Container(
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Color(0xff19d191)),
          child: Icon(
            Icons.local_offer,
            color: Colors.white,
          ),
        ),
        new Container(
          margin: EdgeInsets.only(right: 70.0, top: 50.0),
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60.0),
              color: Color(0xfffc6a7f)),
          child: Icon(
            Icons.home,
            color: Colors.white,
          ),
        ),
        new Container(
          margin: EdgeInsets.only(left: 10.0, top: 40.0),
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60.0),
              color: Color(0xffffce56)),
          child: Icon(
            Icons.local_car_wash,
            color: Colors.white,
          ),
        ),
        new Container(
          margin: EdgeInsets.only(left: 80.0, top: 30.0),
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60.0),
              color: Color(0xff45e0ec)),
          child: Icon(
            Icons.location_on,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
