import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled = false;

    Widget infoSection = Container(
      padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 20.0),
      color: Color.fromRGBO(250, 82, 75, 1),
      height: 120.0,
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 20.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/avatar.png"),
              radius: 40.0,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "我是艾米莉亚呀~~",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "1108 粉丝",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.3),
              borderRadius: BorderRadius.horizontal(
                left: Radius.elliptical(20, 20),
              ),
            ),
            child: Text(
              "ID: 123456",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );

    Widget cardSection = Container(
      margin: EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildCardColumn(
              Icons.live_tv, "发起直播", "assets/images/home_card_2.png"),
          _buildCardColumn(
              Icons.remove_from_queue, "等待直播", "assets/images/home_card_1.png"),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(250, 82, 75, 1),
        elevation: 0,
      ),
      body: ListView(
        children: [
          infoSection,
          cardSection,
        ],
      ),
    );
  }

  Container _buildCardColumn(icon, String label, bgPath) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "/createLive");
        },
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(250, 82, 75, 1),
              borderRadius: BorderRadius.all(
                new Radius.circular(10.0),
              ),
              image: DecorationImage(
                image: AssetImage(bgPath),
              )),
          width: 180.0,
          height: 220.0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 66.0,
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
