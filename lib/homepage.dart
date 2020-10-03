import 'package:flutter/material.dart';
import 'package:groweatfood/listings.dart';
import 'package:groweatfood/profile.dart';
import 'package:groweatfood/Marketplace.dart';
import 'package:groweatfood/CommunityPage.dart';
import 'package:groweatfood/DashboardPage.dart';
import 'package:groweatfood/SharingLandPage.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0; //to switch screen
  final List<Widget> _children = [
    Dashboard(),
    SharingLand(),
    Community(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'HomePage'), // nishan please look this one this title need to be change according to the nav bar.
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
            title: Text('Dashboard'),
            //backgroundColor: Colors.blue[300]
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.landscape),
            title: Text('Sharing Land'),
            //backgroundColor: Colors.blue[300]
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work),
            title: Text('Community'),
            //backgroundColor: Colors.blue[300]
          ),
        ],

        // onTap: (index) {
        //   setState(() {
        //     _currentIndex = index;
        //   }); //ontap is for switching the bottom in bottom navigationbar
        // },
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
            /*new ListTile(
              title: new Text('Dashboard'),
              onTap: () {
                this.reassemble();
                */ /*Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => MyHomePage(
                              title: widget.title,
                            )));*/ /*
              },
            ),*/
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
    );
  }
}
