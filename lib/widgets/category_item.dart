import 'package:flutter/material.dart';

import 'package:groweatfood/screens/Item_Categories_Screen.dart';

import '../screens/Item_Categories_Screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id, this.title, this.color);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      ItemCategoriesScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: InkWell(
        onTap: () => selectCategory(context),
        splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(5),
        child: Container(
          padding: const EdgeInsets.all(15),
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.normal,
                      color: Colors.black87,
                    ),
                  ),
                  Icon()
                ],
              ),
            ],
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.7),
                color,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
