import 'package:flutter/material.dart';

import 'screens/Item_Categories_Screen.dart';
import 'screens/homepage.dart';

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
        '/': (ctx) => ItemCatrgoriesScreen(),
        /*CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),*/
      },
      // home: MyHomePage(),
    );
  }
}

// class _MyBottomNavigationBar extends StatefulWidget {
//   @override
//   __MyBottomNavigationBarState createState() => __MyBottomNavigationBarState();
// }

// class __MyBottomNavigationBarState extends State<_MyBottomNavigationBar> {
//   int _currentIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex:
//             _currentIndex, //currentIndex is for the switching the screen or index
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: Colors.white,
//         items: [
//           // This is bottom navigation
//           BottomNavigationBarItem(
//             icon: Icon(Icons.dashboard),
//             title: Text('Dashboard'),
//             //backgroundColor: Colors.blue[300]
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.landscape),
//             title: Text('Sharing Land'),
//             //backgroundColor: Colors.blue[300]
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.group_work),
//             title: Text('Community'),
//             //backgroundColor: Colors.blue[300]
//           ),
//         ],
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           }); //ontap is for switching the bottom in bottom navigationbar
//         },
//       ),
//     );
//   }
// }
