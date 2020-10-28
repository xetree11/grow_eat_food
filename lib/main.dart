import 'package:flutter/material.dart';
import 'package:groweatfood/screens/Community_Item_Scroll_Page.dart';
import 'package:groweatfood/screens/listingProduct/AddBalconyToFork.dart';
import 'package:groweatfood/screens/listingProduct/AddCommunity.dart';
import 'package:groweatfood/screens/listingProduct/AddSharingLand.dart';
import 'package:groweatfood/screens/listingProduct/Add_New_Item_Screen.dart';
import 'package:groweatfood/screens/Welcome/welcome_screen.dart';
import 'package:groweatfood/screens/homepage.dart';
import 'package:groweatfood/screens/listingProduct/success.dart';
import 'screens/Welcome/welcome_screen.dart';
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
        MyHomePage.routeName: (ctx) => MyHomePage(),
        ItemScrollScreen.routeName: (ctx) => ItemScrollScreen(),
        Settings.routeName: (ctx) => Settings(),
        Profile.routeName: (ctx) => Profile(),
        Listings.routeName: (ctx) => Listings(),
        AddNewItemScreen.routeName: (ctx) => AddNewItemScreen(),
        AddBalconyToFork.routeName: (ctx) => AddBalconyToFork(),
        AddCommunity.routeName: (ctx) => AddCommunity(),
        AddSharingLand.routeName: (ctx) => AddSharingLand(),
        CommunityItemScrollPage.routeName: (ctx) => CommunityItemScrollPage(),
        successScreen_.routeName: (ctx) => successScreen_(),
      },
    );
  }
}
