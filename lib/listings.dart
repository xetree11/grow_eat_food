import 'package:flutter/material.dart';

class Listings extends StatefulWidget {
  final String title;
  Listings({this.title});
  @override
  _ListingsState createState() => _ListingsState();
}

class _ListingsState extends State<Listings> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
    );
  }
}
