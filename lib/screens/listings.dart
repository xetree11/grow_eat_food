import 'package:flutter/material.dart';

class Listings extends StatefulWidget {
  static const routeName = '/listings';
  final String title;
  Listings({this.title});
  @override
  _ListingsState createState() => _ListingsState();
}

class _ListingsState extends State<Listings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listings'),
      ),
    );
  }
}
