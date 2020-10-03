import 'package:flutter/material.dart';

import 'package:groweatfood/screens/profile.dart';
import 'package:groweatfood/screens/listings.dart';
import 'package:groweatfood/screens/Settings.dart';

class ItemCatrgoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Categories'),
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Niraj'),
              accountEmail: new Text('nirajlimbu@gmail.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage('http://i.pravatar.cc/300'),
              ),
            ),
            new ListTile(
              title: new Text('Profile'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => Profile(
                              title: 'Profile',
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
                              title: 'Listings',
                            )));
              },
            ),
            new ListTile(
                title: new Text('Settings'),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) => Settings(
                                title: 'Settings',
                              )));
                })
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          new Card(
            child: new ListTile(),
          )
        ],
      ),
    );
  }
}
