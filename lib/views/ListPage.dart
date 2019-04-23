import 'package:flutter/material.dart';

//导入网络请求相关的包
import 'dart:convert';
import 'package:http/http.dart' as http;

class ListPage extends StatefulWidget {

  //父类上下文
  var parentContext;
  ListPage(this.parentContext);


  @override
  State<StatefulWidget> createState() {
    return new ListState();
  }
}

class ListState extends State<ListPage>
    with AutomaticKeepAliveClientMixin<ListPage> {
  //数据源
  List data;

  @override
  void initState() {
    super.initState();
    _pullNet();
  }

  void _pullNet() async {
    await http
        .get("http://www.wanandroid.com/project/list/1/json?cid=1")
        .then((http.Response response) {
      var convertDataToJson = json.decode(response.body);
      convertDataToJson = convertDataToJson["data"]["datas"];
      print(convertDataToJson);

      setState(() {
        data = convertDataToJson;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(children: data == null ? _loading() : _getItem()),
    );
  }

  List<Widget> _getItem() {
    return data.map((item) {
      return new Card(
        child: new Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 5.0, 16.0, 5.0),
          child: _getRowWidget(item),
        ),
        elevation: 3.0,
        margin: const EdgeInsets.all(10.0),
      );
    }).toList();
  }

  //预加载布局
  List<Widget> _loading() {
    return <Widget>[
      new Container(
        height: 500,
        child: new Center(
            child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new CircularProgressIndicator(
              strokeWidth: 1.0,
            ),
            new Text("正在加载"),
          ],
        )),
      )
    ];
  }

  Widget _getRowWidget(item) {
    return new Row(
      children: <Widget>[
        new Expanded(
          child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Container(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: new Text("${item["title"]}".trim(),
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                      maxLines: 1,
                      textAlign: TextAlign.left),
                ),
                new Container(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: new Text("${item["desc"]}",
                        maxLines: 2, textAlign: TextAlign.left)),
              ]),
        ),
        new ClipRect(
          child: new FadeInImage.assetNetwork(
            placeholder: "images/ic_shop_normal.png",
            image: "${item['envelopePic']}",
            width: 50.0,
            height: 50.0,
            fit: BoxFit.fitWidth,
          ),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
