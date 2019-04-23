import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'ListPage.dart';
import 'ShopPage.dart';
import 'MyPage.dart';

class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPageWidget());
  }
}

class MainPageWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}

class MainPageState extends State<MainPageWidget>
    with SingleTickerProviderStateMixin {
  int _tabIndex = 0;
  var _tabImages;
  var _pageList;
  var appBarTitles = ['首页', '列表', '商城', '我的'];

  void initData() {
    /*
   * 子界面
   */
    _pageList = [
      new HomePage(context),
      new ListPage(context),
      new ShopPage(context),
      new MyPage(context)
    ];
    /*
     * 初始化选中和未选中的icon
     */
    _tabImages = [
      [getTabImage('images/home.png'), getTabImage('images/home_selected.png')],
      [getTabImage('images/list.png'), getTabImage('images/list_selected.png')],
      [getTabImage('images/shop.png'), getTabImage('images/shop_selected.png')],
      [getTabImage('images/mine.png'), getTabImage('images/mine_selected.png')]
    ];
  }

  /*
   * 获取bottomTab的颜色和文字
   */
  Text getTabTitle(int curIndex) {
    if (curIndex == _tabIndex) {
      return Text(appBarTitles[curIndex],
          style: TextStyle(fontSize: 14.0, color: const Color(0xffe64a19)));
    } else {
      return new Text(appBarTitles[curIndex],
          style: TextStyle(fontSize: 14.0, color: const Color(0xff515151)));
    }
  }

  /*
   * 根据image路径获取图片
   */
  Image getTabImage(path) {
    return Image.asset(path, width: 24.0, height: 24.0);
  }

  /*
   * 根据选择获得对应的normal或是press的icon
   */
  Image getTabIcon(int curIndex) {
    if (curIndex == _tabIndex) {
      return _tabImages[curIndex][1];
    }
    return _tabImages[curIndex][0];
  }

  @override
  void initState() {
    super.initState();
    initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pageList[_tabIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: getTabIcon(0), title: getTabTitle(0)),
            BottomNavigationBarItem(icon: getTabIcon(1), title: getTabTitle(1)),
            BottomNavigationBarItem(icon: getTabIcon(2), title: getTabTitle(2)),
            BottomNavigationBarItem(icon: getTabIcon(3), title: getTabTitle(3))
          ],
          type: BottomNavigationBarType.fixed,
          //默认选中首页
          currentIndex: _tabIndex,
          iconSize: 26.0,
          //点击事件
          onTap: (index) {
            setState(() {
              _tabIndex = index;
            });
          },
        ));
  }
}
