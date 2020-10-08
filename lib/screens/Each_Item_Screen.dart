import 'package:flutter/material.dart';
import 'package:groweatfood/item_data.dart';
import 'package:groweatfood/models/item.dart';
import 'package:groweatfood/widgets/Item_Detail_Column_Unit.dart';

class EachItemDetailScreen extends StatelessWidget {
  static const routeName = '/each-item-detail';

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;
    final Item item = ITEMS_DATA.where((item) {
      return item.id.contains(id);
    }).first;

    return Scaffold(
      body: SafeArea(
        child: Card(
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
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      item.imageUrl,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 5,
                      left: 5,
                      child: Container(
                        child: BackButton(
                          color: Colors.white54,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      item.title,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    ItemDetailColumnUnit(
                        text: item.price.toString() + item.priceType,
                        icon: Icons.attach_money),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
