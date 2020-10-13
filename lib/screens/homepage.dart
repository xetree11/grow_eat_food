import 'package:flutter/material.dart';
import 'Item_Categories_Screen.dart';
import 'listings.dart';
import 'profile.dart';
import 'CommunityPage.dart';
import 'SharingLandPage.dart';
import 'Settings.dart';

class MyHomePage extends StatefulWidget {
  static const routeName = '/home-page';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0; //to switch screen
  final List<Widget> _children = [
    ItemCategoriesScreen(),
    SharingLand(),
    Community(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void onDrawrerItemTap(String rt, BuildContext ctx) {
    Navigator.of(ctx).pushNamed(rt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eat Grow Food'),
      ),
      body: _children[_currentIndex], //body created by niraj
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex:
            _currentIndex, //currentIndex is for the switching the screen or index
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          // This is bottom navigation
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.landscape),
            title: Text('Sharing Land'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work),
            title: Text('Community'),
          ),
        ],
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
                onDrawrerItemTap(Profile.routeName, context);
              },
            ),
            new ListTile(
              title: new Text('Listings'),
              onTap: () {
                onDrawrerItemTap(Listings.routeName, context);
              },
            ),
            new ListTile(
                title: new Text('Settings'),
                onTap: () {
                  onDrawrerItemTap(Settings.routeName, context);
                })
          ],
        ),
      ),
    );
  }
}
