import 'package:flutter/material.dart';

class CustomRouter extends PageRouteBuilder {
  final Widget widget;

  CustomRouter(this.widget)
      : super(
            transitionDuration: Duration(seconds: 1),
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) {
              return widget;
            },
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) {
              //渐隐渐现路有效果
//              return FadeTransition(
//                opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
//                    parent: animation, curve: Curves.fastOutSlowIn)),
//                child: child,
//              );
              //缩放路由效果
//              return ScaleTransition(
//                scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
//                    parent: animation, curve: Curves.fastOutSlowIn)),
//                child: child,
//              );

              //旋转缩放效果
//              return RotationTransition(
//                  turns: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
//                      parent: animation, curve: Curves.fastOutSlowIn)),
//                  child: ScaleTransition(
//                    scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
//                        parent: animation, curve: Curves.fastOutSlowIn)),
//                    child: child,
//                  ));
              //侧滑效果
              return SlideTransition(
                position: Tween<Offset>(
                  begin: Offset(-1.0, 0.0),
                  end: Offset(0.0, 0.0),
                ).animate(
                    CurvedAnimation(parent: animation, curve: Curves.ease)),
                child: child,
              );
            });
}
