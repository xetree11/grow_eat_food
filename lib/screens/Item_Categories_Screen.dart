import 'package:flutter/material.dart';

import '../categories_data.dart';
import 'package:groweatfood/widgets/category_item.dart';

class ItemCategoriesScreen extends StatefulWidget {
  static const routeName = '/item-category';

  ItemCategoriesScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ItemCategoriesScreenState createState() => _ItemCategoriesScreenState();
}

class _ItemCategoriesScreenState extends State<ItemCategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: ITEM_CATEGORIES
            .map(
              (catData) => CategoryWidget(
                catData.id,
                catData.title,
                catData.imageUrl,
              ),
            )
            .toList(),
      ),
    );
  }
}
