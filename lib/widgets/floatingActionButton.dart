import 'package:flutter/material.dart';
import 'package:groweatfood/screens/Add_New_Item_Screen.dart';

class MyFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.amber,
      elevation: 10,
      onPressed: () =>
          {Navigator.of(context).pushNamed(AddNewItemScreen.routeName)},
      child: Icon(
        Icons.add,
      ),
    );
  }
}
