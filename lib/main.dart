import 'package:flutter/material.dart';
import 'package:flutter_live_app/pages/home.dart';
import 'package:flutter_live_app/pages/create_live.dart';
import 'package:flutter_live_app/pages/live_page.dart';

void main() => runApp(MaterialApp(
      initialRoute: "/home",
      routes: {
        "/home": (context) => Home(),
        "/createLive": (context) => CreateLive(),
        "/livePage": (context) => LivePage(),
      },
    ));
