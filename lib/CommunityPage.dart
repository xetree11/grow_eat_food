import 'package:flutter/material.dart';
import 'package:groweatfood/homepage.dart';

class Community extends StatefulWidget {
  @override
  _CommunityState createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: new AppBar(
      //   title: new Text('Community'),
      // ),
      body: new Center(
        child: new Text("This is Community Page !! "),
      ),
    );
  }
}
