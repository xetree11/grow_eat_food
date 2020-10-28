import 'package:flutter/material.dart';

class successScreen_ extends StatefulWidget {
  static const routeName = "success-screen";
  @override
  _successScreen_State createState() => _successScreen_State();
}

class _successScreen_State extends State<successScreen_> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      child: Center(child: Text('submitted')),
      decoration: BoxDecoration(
        color: Colors.green[100],
        border: Border.all(
          color: Colors.red,
          width: 5,
        ),
      ),
    );
  }
}
