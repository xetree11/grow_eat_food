import 'package:flutter/material.dart';

import 'package:groweatfood/item_data.dart';
import 'package:groweatfood/widgets/each_item.dart';
import '../item_data.dart';

class ItemListScreen extends StatelessWidget {
  static const routeName = '/item-list';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryItems = ITEMS_DATA.where((item) {
      return item.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return EachItem(
            id: categoryItems[index].id,
            title: categoryItems[index].title,
            imageUrl: categoryItems[index].imageUrl,
            price: categoryItems[index].price,
            priceType: categoryItems[index].priceType,
            // duration: categoryItems[index].duration,
            condition: categoryItems[index].condition,
            status: categoryItems[index].status,
            isOrganic: categoryItems[index].isOrganic,
          );
        },
        itemCount: categoryItems.length,
      ),
    );
  }
}
