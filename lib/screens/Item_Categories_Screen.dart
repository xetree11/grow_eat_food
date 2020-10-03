import 'package:flutter/material.dart';

import '../categories_data.dart';
import 'package:groweatfood/widgets/category_item.dart';

class ItemCategoriesScreen extends StatelessWidget {
  static const routeName = '/item-category';

  ItemCategoriesScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: ITEM_CATEGORIES
            .map(
              (catData) => CategoryItem(
                catData.id,
                catData.title,
                catData.color,
              ),
            )
            .toList(),
      ),
    );
  }
}
