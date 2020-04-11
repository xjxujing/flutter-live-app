import 'package:flutter/material.dart';

class LivePage extends StatefulWidget {
  @override
  _LivePageState createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("直播"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(250, 82, 75, 1),
        elevation: 0,
      ),

    );
  }
}
