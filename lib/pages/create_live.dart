import 'package:flutter/material.dart';

class CreateLive extends StatefulWidget {
  @override
  _CreateLiveState createState() => _CreateLiveState();
}

class _CreateLiveState extends State<CreateLive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("创建"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(250, 82, 75, 1),
        elevation: 0,
      ),
    );
  }
}
