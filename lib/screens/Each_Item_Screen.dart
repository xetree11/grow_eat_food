import 'package:flutter/material.dart';
import 'package:groweatfood/item_data.dart';
import 'package:groweatfood/models/item.dart';

class EachItemDetailScreen extends StatelessWidget {
  static const routeName = '/each-item-detail';

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;
    final Item item = ITEMS_DATA.where((item) {
      return item.id.contains(id);
    }).first;

    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: Center(
        child: Text(item.status.toString()),
      ),
    );
  }
}
