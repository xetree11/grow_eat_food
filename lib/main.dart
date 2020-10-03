import 'package:flutter/material.dart';
import 'package:groweatfood/screens/Each_Item_Screen.dart';
import 'screens/homepage.dart';
import 'package:groweatfood/screens/Item_List_Screen.dart';

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
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Raleway',
      ),
      initialRoute: '/', // default is '/'
      routes: {
        '/': (ctx) => MyHomePage(),
        EachItemDetailScreen.routeName: (ctx) => EachItemDetailScreen(),
        ItemListScreen.routeName: (ctx) => ItemListScreen(),
      },
    );
  }
}
