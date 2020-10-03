import 'package:flutter/material.dart';

class Marketplace extends StatefulWidget {
  final String title;
  Marketplace({this.title});
  _MarketplaceState createState() => _MarketplaceState();
}

class _MarketplaceState extends State<Marketplace> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sharing Land"),
      ),
    );
  }
}
