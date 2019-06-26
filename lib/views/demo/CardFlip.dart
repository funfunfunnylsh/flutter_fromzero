import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  runApp(MaterialApp(
    home: TikTokPage(),
  ));
}

class TikTokPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TikTokState();
  }
}

class _TikTokState extends State<TikTokPage> with TickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;
  double offsetX = 0.0;
  double screenWidth;

  var urls = [
    "http://pic.97uimg.com/back_pic/20/15/10/20/2c25eb8110827d1656e24a9cb5340344.jpg%21w1200",
    "https://img.tukuppt.com//ad_preview/00/03/30/5c98a556e3a89.jpg!/fw/780",
    "http://pic.90sjimg.com/design/00/14/42/68/562597419f95b.jpg",
    "http://picapi.zhituad.com/photo/30/52/90AFE.jpg",
    "http://hbimg.b0.upaiyun.com/46e8e9ca74ae9ce16d4f64ec594049f415acf45f42e6f-HOtH1L_fw658",
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    screenWidth = MediaQuery.of(context).size.width;

    return Material(
      child: Scaffold(
        body: GestureDetector(
          onHorizontalDragEnd: (details) {
            // 当滑动停止的时候 根据 offsetX 的偏移量进行动画
            // 为了方便这里取 50为临界条件
            if (offsetX.abs() < 50) {
              animateToLast();
            } else {
              animateToRight(screenWidth);
            }
          },
          onHorizontalDragStart: (_) {
            animationController?.stop();
          },
          onHorizontalDragUpdate: (details) {
            // 控制 offsetX 的值在 -screenWidth 到 screenWidth 之间
            if (offsetX <= 0) {
              setState(() {
                offsetX += details.delta.dx;
              });
            }
          },
          child: Container(
            width: screenWidth,
            height: double.infinity,
            color: Colors.black,
            alignment: Alignment.center,
            child: Stack(children: urls.map((url) => buildCard(urls.indexOf(url))).toList()),
          ),
        ),
      ),
    );
  }

  Widget buildCard(int index) {
    return Positioned(
      top: 200,
      right: index * 20.0,
      child: Container(
        alignment: Alignment.bottomRight,
        width: screenWidth,
        height: 125,
        color: Colors.transparent,
        child: ClipRect(
          child: Transform.translate(
            offset: Offset(index == 4 ? offsetX : 0, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              child: Image.network(
                urls[index],
                fit: BoxFit.fill,
                width: 300,
                height: 100 + index * 5.0,
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// 滑动到上一个
  void animateToLast() {
    animationController = AnimationController(
        duration: Duration(milliseconds: offsetX.abs() * 1000 ~/ 500),
        vsync: this);
    final curve = CurvedAnimation(
        parent: animationController, curve: Curves.easeOutCubic);
    animation = Tween(begin: offsetX, end: 0.0).animate(curve)
      ..addListener(() {
        setState(() {
          offsetX = animation.value;
        });
      });
    animationController.forward();
  }

  /// 滑动到下一个
  void animateToRight(double screenWidth) {
    animationController = AnimationController(
        duration: Duration(milliseconds: offsetX.abs() * 1000 ~/ 500),
        vsync: this);
    final curve = CurvedAnimation(
        parent: animationController, curve: Curves.easeOutCubic);
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
