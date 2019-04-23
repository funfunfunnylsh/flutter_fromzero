import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ExpansionTileDemo"),
        ),
        body: ListView(
          children: <Widget>[
            const ListTile(title: Text('Top')),
            ExpansionTile(
                initiallyExpanded: true,
                title: const Text('Sublist'),
                leading: new Icon(Icons.list),
                trailing: new Icon(Icons.keyboard_arrow_right),
                backgroundColor:
                    Theme.of(context).accentColor.withOpacity(0.025),
                children: const <Widget>[
                  ListTile(title: Text('One')),
                  ListTile(title: Text('Two')),
                  // https://en.wikipedia.org/wiki/Free_Four
                  ListTile(title: Text('Free')),
                  ListTile(title: Text('Four'))
                ]),
            const ListTile(title: Text('Bottom')),
            const ListTile(title: Text('---------分割线------')),
          ],
        ));
  }
}
