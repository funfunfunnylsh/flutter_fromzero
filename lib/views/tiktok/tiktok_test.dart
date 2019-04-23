import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TestTikTok extends StatefulWidget {
  @override
  _TestTikTokState createState() => _TestTikTokState();
}

class _TestTikTokState extends State<TestTikTok> with TickerProviderStateMixin{
  AnimationController animationController;
  Animation<double> animation;

  ///偏移量
  double offsetX = 0.0;


  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onHorizontalDragEnd: (details) {
        // 当滑动停止的时候 根据 offsetX 的偏移量进行动画
        // 为了方便这里取 screenWidth / 2为临界条件
        if (offsetX.abs() < screenWidth / 2) {
          animateToMiddle();
        } else if (offsetX > 0) {
          animateToLeft(screenWidth);
        } else {
          animateToRight(screenWidth);
        }
      },
      onHorizontalDragStart: (_) {
        animationController?.stop();
      },
      onHorizontalDragUpdate: (details) {
        // 控制 offsetX 的值在 -screenWidth 到 screenWidth 之间
        if (offsetX + details.delta.dx >= screenWidth) {
          setState(() {
            offsetX = screenWidth;
          });
        } else if (offsetX + details.delta.dx <= -screenWidth) {
          setState(() {
            offsetX = -screenWidth;
          });
        } else {
          setState(() {
            offsetX += details.delta.dx;
          });
        }
      },

      child: Stack(
        children: <Widget>[
          buildLeftPage(screenWidth,screenHeight),
          buildMiddlePage(),
          buildRightPage(screenWidth, screenHeight)
        ],
      ),
    );
  }

  ///右侧视图
  Widget buildRightPage(
      double screenWidth, double screenHeight) {
    return Transform.translate(
      offset: Offset(offsetX + screenWidth, 0),
      child: Container(
        width: screenWidth,
        height: screenHeight,
        color: Colors.transparent,
        child: Image.asset(
          "images/right.png",
          fit: BoxFit.fill,
          width: screenWidth,
        ),
      ),
    );
  }

  ///中视图
  Widget buildMiddlePage() {
    return Transform.translate(
      offset: Offset(offsetX > 0 ? offsetX : offsetX / 5, 0),
      child: PageView(
        children: List(10)
            .map((_) => Container(
                  child: Image.asset(
                    "images/middle.png",
                    fit: BoxFit.fill,
                  ),
                ))
            .toList(),
        scrollDirection: Axis.vertical,
      ),
    );
  }

  ///左侧视图
  Widget buildLeftPage(double screenWidth, double screenHeight) {
    return Transform.scale(
        scale: 0.8+0.2*(offsetX/screenWidth),
        child: Container(
          width: screenWidth,
          height: screenHeight,
          child: Image.asset(
            "images/left.png",
            fit: BoxFit.fill,
          ),
          foregroundDecoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 1 - (offsetX / screenWidth)),
          ),
        ));
  }

  /// 滑动到中间
  void animateToMiddle() {
    animationController = AnimationController(duration: Duration(milliseconds: offsetX.abs() * 1000 ~/ 500), vsync: this);
    final curve = CurvedAnimation(parent: animationController, curve: Curves.easeOutCubic);
    animation = Tween(begin: offsetX, end: 0.0).animate(curve)
      ..addListener(() {
        setState(() {
          offsetX = animation.value;
        });
      });
    animationController.forward();
  }

  /// 滑动到左边
  void animateToLeft(double screenWidth) {
    animationController = AnimationController(duration: Duration(milliseconds: offsetX.abs() * 1000 ~/ 500), vsync: this);
    final curve = CurvedAnimation(parent: animationController, curve: Curves.easeOutCubic);
    animation = Tween(begin: offsetX, end: screenWidth).animate(curve)
      ..addListener(() {
        setState(() {
          offsetX = animation.value;
        });
      });
    animationController.forward();
  }

  /// 滑动到右边
  void animateToRight(double screenWidth) {
    animationController = AnimationController(duration: Duration(milliseconds: offsetX.abs() * 1000 ~/ 500), vsync: this);
    final curve = CurvedAnimation(parent: animationController, curve: Curves.easeOutCubic);
    animation = Tween(begin: offsetX, end: -screenWidth).animate(curve)
      ..addListener(() {
        setState(() {
          offsetX = animation.value;
        });
      });
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
