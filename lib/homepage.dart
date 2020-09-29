import 'package:flutter/material.dart';
import 'package:groweatfood/listings.dart';
import 'package:groweatfood/profile.dart';
import 'package:groweatfood/Marketplace.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Niraj'),
              accountEmail: new Text('nirajemail@gmail.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage('http://i.pravatar.cc/300'),
              ),
            ),
            new ListTile(
              title: new Text('Dashboard'),
              onTap: () {
                this.reassemble();
                /*Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => MyHomePage(
                              title: widget.title,
                            )));*/
              },
            ),
            new ListTile(
              title: new Text('Profile'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => Profile(
                              title: widget.title,
                            )));
              },
            ),
            new ListTile(
              title: new Text('Listings'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => Listings(
                              title: widget.title,
                            )));
              },
            ),
            new ListTile(
                title: new Text('Sharing Land'),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) => Marketplace(
                                title: widget.title,
                              )));
                })
          ],
        ),
      ),
    );
  }
}
