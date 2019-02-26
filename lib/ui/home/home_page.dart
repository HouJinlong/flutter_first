import 'package:flutter/material.dart';
import 'custom_appbar.dart';
import 'home_body.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('龙族'),
      // ),
      body: Column(
        children: <Widget>[
          CustomAppbar(title: '龙哥的第一个app',),
          HomeBody(),
        ],
      ),
    );
  }
}