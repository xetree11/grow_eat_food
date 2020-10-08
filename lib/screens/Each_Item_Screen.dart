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
        body: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 4,
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.network(
                  item.imageUrl,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.attach_money,
                          size: 23,
                        ),
                        Text(
                          item.price.toString() + '  ' + item.priceType,
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
