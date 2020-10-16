import 'package:flutter/material.dart';

class AddNewItemScreen extends StatefulWidget {
  static const routeName = '/add-new-item';
  AddNewItemScreen({Key key}) : super(key: key);

  @override
  _AddNewItemScreenState createState() => _AddNewItemScreenState();
}

class _AddNewItemScreenState extends State<AddNewItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Add here'),
    );
  }
}
