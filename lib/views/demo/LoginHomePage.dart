import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottonindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Color(0xFF18D191)),
      ),
      body: MainContent(),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Color(0xff29d091),
          currentIndex: _bottonindex,
          onTap: (index){
            setState(() {
              _bottonindex = index;
            });
          },
          items: [
            new BottomNavigationBarItem(
                title: Text(""),
                icon: Icon(Icons.home)),
            new BottomNavigationBarItem(
                title: Text(""),
                icon: Icon(Icons.home)),
            new BottomNavigationBarItem(
                title: Text(""),
                icon: Icon(Icons.home)),
          ]),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 10),
          child: new Text(
            "Explore",
            style: TextStyle(
              fontSize: 30.0,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Container(
                    height: 100.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.drive_eta,
                          color: Colors.white,
                        ),
                        Text("Motor",
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ))
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xfffc6a7f),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 100.0,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 2.5, right: 2.5),
                          child: Container(
                            height: 40.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Icon(
                                    Icons.local_offer,
                                    color: Colors.white,
                                  ),
                                ),
                                Text("Offer",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xff19d191),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(top: 2.5, right: 2.5),
                          child: Container(
                            height: 40.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Icon(
                                    Icons.cloud,
                                    color: Colors.white,
                                  ),
                                ),
                                Text("Cloud",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xfffc7b4d),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 100.0,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 2.5, left: 2.5),
                          child: Container(
                            height: 40.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Icon(
                                    Icons.library_books,
                                    color: Colors.white,
                                  ),
                                ),
                                Text("Books",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xff53cedb),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(top: 2.5, left: 2.5),
                          child: Container(
                            height: 40.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Icon(
                                    Icons.library_music,
                                    color: Colors.white,
                                  ),
                                ),
                                Text("Music",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xfff1b069),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Text(
                "Popular Trending",
                style: TextStyle(
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.left,
              )),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "View All",
                  style: TextStyle(
                    color: Color(0xff19d191),
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.5),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.5),
                  child: Container(
                    height: 150.0,
                    child: Column(
                      children: <Widget>[
                        Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-758147.jpg"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(5.0))),
                        Text(
                          "view all ",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.5),
                  child: Container(
                    height: 150.0,
                    child: Column(
                      children: <Widget>[
                        Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-734918.jpg"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(5.0))),
                        Text(
                          "Jewellery and Watches",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.5),
                  child: Container(
                    height: 150.0,
                    child: Column(
                      children: <Widget>[
                        Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-736513.jpg"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(5.0))),
                        Text(
                          "view all",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Text(
                "Popular Trending",
                style: TextStyle(
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.left,
              )),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "View All",
                  style: TextStyle(
                    color: Color(0xff19d191),
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.5),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.5),
                  child: Container(
                    height: 150.0,
                    child: Column(
                      children: <Widget>[
                        Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-758147.jpg"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(5.0))),
                        Text(
                          "view all ",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.5),
                  child: Container(
                    height: 150.0,
                    child: Column(
                      children: <Widget>[
                        Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-734918.jpg"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(5.0))),
                        Text(
                          "Jewellery and Watches",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.5),
                  child: Container(
                    height: 150.0,
                    child: Column(
                      children: <Widget>[
                        Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-736513.jpg"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(5.0))),
                        Text(
                          "view all",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Text(
                "Popular Trending",
                style: TextStyle(
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.left,
              )),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "View All",
                  style: TextStyle(
                    color: Color(0xff19d191),
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.5),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.5),
                  child: Container(
                    height: 150.0,
                    child: Column(
                      children: <Widget>[
                        Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-758147.jpg"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(5.0))),
                        Text(
                          "view all ",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.5),
                  child: Container(
                    height: 150.0,
                    child: Column(
                      children: <Widget>[
                        Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-734918.jpg"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(5.0))),
                        Text(
                          "Jewellery and Watches",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.5),
                  child: Container(
                    height: 150.0,
                    child: Column(
                      children: <Widget>[
                        Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-736513.jpg"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(5.0))),
                        Text(
                          "view all",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
