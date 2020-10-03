import 'package:flutter/material.dart';

class EachItemDetailScreen extends StatelessWidget {
  static const routeName = '/each-item-detail';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('$mealId'),
      ),
      body: Center(
        child: Text('The meal - $mealId!'),
      ),
    );
  }
}
