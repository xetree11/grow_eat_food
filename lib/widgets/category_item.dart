import 'package:flutter/material.dart';
import 'package:groweatfood/screens/Item_Scroll_Screen.dart';

class CategoryWidget extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  CategoryWidget(this.id, this.title, this.imageUrl);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      ItemScrollScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Stack(children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 125,
            left: 10,
            child: Container(
              width: 310,
              color: Colors.black54,
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 20,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.normal,
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: 35,
                    color: Colors.white70,
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
