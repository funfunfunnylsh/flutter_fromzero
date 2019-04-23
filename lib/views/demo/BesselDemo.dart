import 'package:flutter/material.dart';

class BesselDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              color: Colors.deepPurpleAccent,
              height: 200,
            ),

          ),
          ClipPath(
            clipper: WaveClipper(),
            child: Container(
              color: Colors.deepPurpleAccent,
              height: 300,
            ),

          )

        ],

      ),


    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path  = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height-50);

    var firstPoint = Offset(size.width/2, size.height);
    var endPoint = Offset(size.width, size.height-50);
    path.quadraticBezierTo(firstPoint.dx, firstPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path  = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height-50);

    var firstPoint = Offset(size.width/4, size.height);
    var firstEndPoint = Offset(size.width/2, size.height-50);
    path.quadraticBezierTo(firstPoint.dx, firstPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    var secondPoint = Offset(size.width*3/4, size.height-100);
    var secondEndPoint = Offset(size.width, size.height-50);
    path.quadraticBezierTo(secondPoint.dx, secondPoint.dy, secondEndPoint.dx, secondEndPoint.dy);


    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
