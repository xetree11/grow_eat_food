import 'package:flutter/material.dart';
import 'package:groweatfood/screens/homepage.dart';

class successScreen_ extends StatefulWidget {
  static const routeName = "success-screen";
  @override
  _successScreen_State createState() => _successScreen_State();
}

class _successScreen_State extends State<successScreen_> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Success'),
      // ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.green[500],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(120),
              ),
              Icon(Icons.beenhere_rounded),
              Text(
                'Successfully Listed',
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
              RaisedButton(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Done',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                textColor: Colors.black54,
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).pushNamed(MyHomePage.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
