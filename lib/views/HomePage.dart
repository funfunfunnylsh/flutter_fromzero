import 'package:flutter/material.dart';
import 'package:flutter_fromzero/views/tiktok/tiktok_main.dart';
import 'demo/Navigate.dart';
import 'demo/IrregularBar.dart';
import 'demo/FrostedDemo.dart';
import 'demo/SearchBar.dart';
import 'demo/WrapDemo.dart';
import 'demo/ExpansionTileDemo.dart';
import 'demo/BesselDemo.dart';
import 'demo/LoginDemo.dart';

class HomePage extends StatefulWidget {
  //父类上下文
  var parentContext;
  HomePage(this.parentContext);

  @override
  State<StatefulWidget> createState() {
    return new Page();
  }
}

class Page extends State<HomePage> {
  var _demoDesc = ['路由动画', '不规则导航栏', '磨砂玻璃效果','搜索条','流式布局','折叠控件','贝塞尔曲线','Beautiful UI','仿抖音手势交互'];

  @override
  Widget build(BuildContext context) {
    return layout(context);
  }

  Widget layout(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          elevation: 0,
          title: new Center(child: const Text('案例')),
          backgroundColor: Colors.deepOrangeAccent),
      body: new ListView.builder(
        itemCount: _demoDesc.length,
        itemBuilder: (context, item) {
          return new Column(
            children: <Widget>[
              new ListTile(
                contentPadding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
                title: new Text(_demoDesc[item]),
                enabled: true,
                //subtitle: new Text("查看Demo"),
                //isThreeLine: true,
                leading: new Icon(Icons.list),
                trailing: new Icon(Icons.keyboard_arrow_right),
                onTap: (){
                  _onTap(item);
                },
              ),
              new Divider()
            ],
          );
        },
      ),
    );
  }

  void _onTap(item) {
    switch (item) {
      case 0:
//      Navigator.pushNamed(widget.parentContext, "/navigator");
        Navigator.of(widget.parentContext).push(new MaterialPageRoute(
          builder: (context) {
            return new NavigateFirst();
          },
        ));
        break;
      case 1:
        Navigator.of(widget.parentContext).push(new MaterialPageRoute(
          builder: (context) {
            return new IrregularBar();
          },
        ));
        break;
      case 2:
        Navigator.of(widget.parentContext).push(new MaterialPageRoute(
          builder: (context) {
            return new Frosted();
          },
        ));
        break;
      case 3:
        Navigator.of(widget.parentContext).push(new MaterialPageRoute(
          builder: (context) {
            return new SearchBar();
          },
        ));
        break;
      case 4:
        Navigator.of(widget.parentContext).push(new MaterialPageRoute(
          builder: (context) {
            return new WrapDemo();
          },
        ));
        break;
      case 5:
        Navigator.of(widget.parentContext).push(new MaterialPageRoute(
          builder: (context) {
            return new ExpansionTileDemo();
          },
        ));
        break;
      case 6:
        Navigator.of(widget.parentContext).push(new MaterialPageRoute(
          builder: (context) {
            return new BesselDemo();
          },
        ));
        break;
      case 7:
        Navigator.of(widget.parentContext).push(new MaterialPageRoute(
          builder: (context) {
            return new LoginDemo();
          },
        ));
        break;
      case 8:
        Navigator.of(widget.parentContext).push(new MaterialPageRoute(
          builder: (context) {
            return new TikTokPage();
          },
        ));
        break;
    }

  }
}


