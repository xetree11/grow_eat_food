import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  static const routeName = '/settings';
  final String title;
  Settings({this.title});
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blueGrey,
        splashColor: Colors.blue,
        onPressed: () => {},
        label: Text('Save'),
        icon: Icon(Icons.save),
      ),
    );
  }
}
