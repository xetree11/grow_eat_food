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
    return Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
        child: InkWell(
          onTap: () => selectCategory(context),
          splashColor: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(5),
          child: Container(
            height: 200,
            child: Stack(children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  imageUrl,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 75,
                left: 20,
                child: Container(
                  width: 340,
                  color: Colors.black54,
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 20,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.normal,
                          color: Colors.white54,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.chevron_right,
                        size: 45,
                        color: Colors.white54,
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}
