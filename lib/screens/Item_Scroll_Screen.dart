import 'package:flutter/material.dart';
import 'package:groweatfood/item_data.dart';
import 'package:groweatfood/models/item.dart';
import 'package:groweatfood/widgets/each_item.dart';

class ItemScrollScreen extends StatefulWidget {
  static const routeName = '/item-scroll-screen';
  @override
  _ItemScrollScreenState createState() => _ItemScrollScreenState();
}

class _ItemScrollScreenState extends State<ItemScrollScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
    final List<Item> categoryItems = ITEMS_DATA.where((item) {
      return item.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ItemTileWidget(
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
        itemExtent: categoryItems.length.roundToDouble(),
      ),
    );
  }
}
