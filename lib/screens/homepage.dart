import 'package:flutter/material.dart';
import 'package:groweatfood/screens/maps/map.dart';
import 'package:groweatfood/widgets/floatingActionButton.dart';
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
    Community(),
    //Home(),
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
      floatingActionButton: MyFloatingActionButton(),
      appBar: AppBar(
        elevation: 10,
        title: Text('Eat Grow Food'),
      ),
      body: _children[_currentIndex], //body created by niraj
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        onTap: onTappedBar,
        currentIndex:
            _currentIndex, //currentIndex is for the switching the screen or index
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white70,
        items: [
          // This is bottom navigation
          BottomNavigationBarItem(
            icon: Icon(Icons.landscape),
            // ignore: deprecated_member_use
            title: Text('Sharing Land'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work),
            // ignore: deprecated_member_use
            title: Text('Community'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map_sharp,
            ),
            // ignore: deprecated_member_use
            title: Text('Map'),
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
                backgroundImage: new NetworkImage('https://i.pravatar.cc/300'),
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
