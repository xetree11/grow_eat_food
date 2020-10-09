import 'package:flutter/material.dart';
import 'package:groweatfood/screens/Add_New_Item_Screen.dart';
import 'package:groweatfood/screens/Each_Item_Screen.dart';
<<<<<<< Updated upstream
import 'package:groweatfood/screens/Welcome/welcome_screen.dart';
=======
<<<<<<< HEAD
import 'screens/Welcome/welcome_screen.dart';
=======
import 'package:groweatfood/screens/Welcome/welcome_screen.dart';
>>>>>>> 9d27ae8a14904c0ec737599c53e63be149e9d1c7
>>>>>>> Stashed changes
import 'screens/homepage.dart';
import 'screens/Settings.dart';
import 'screens/profile.dart';
import 'screens/listings.dart';
import 'screens/Item_Scroll_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grow Eat Food',
      theme: ThemeData(
        primarySwatch: Colors.green,
        backgroundColor: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Raleway',
      ),
      initialRoute: '/', // default is '/'
      routes: {
        '/': (ctx) => WelcomeScreen(),
        EachItemDetailScreen.routeName: (ctx) => EachItemDetailScreen(),
        ItemScrollScreen.routeName: (ctx) => ItemScrollScreen(),
        Settings.routeName: (ctx) => Settings(),
        Profile.routeName: (ctx) => Profile(),
        Listings.routeName: (ctx) => Listings(),
        AddNewItemScreen.routeName: (ctx) => AddNewItemScreen(),
      },
    );
  }
}
