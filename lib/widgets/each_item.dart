import 'package:flutter/material.dart';
import 'package:groweatfood/models/item.dart';
import 'package:groweatfood/screens/Item_Scroll_Screen.dart';

class ItemTileWidget extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final double price;
  final String priceType;
  // final DateTime harvestDate;
  final Condition condition;
  final Status status;
  final bool isOrganic;

  ItemTileWidget({
    @required this.id,
    // may be more than one category
    @required this.title,
    @required this.imageUrl,
    @required this.price,
    @required this.priceType,
    // eg.per kg/per 12/per 100
    // @required this.harvestDate,
    @required this.condition,
    // fresh/frozen/should go immediately
    @required this.status,
    // sold/pending/available
    @required this.isOrganic,
  });

  String get conditionText {
    switch (condition) {
      case Condition.Fresh:
        return 'Fresh';
        break;
      case Condition.Frozen:
        return 'Frozen';
        break;
      case Condition.Immediate_sale:
        return 'Immediate Sale';
        break;
      default:
        return 'Unknown';
    }
  }

  String get statusText {
    switch (status) {
      case Status.Available:
        return 'Available';
        break;
      case Status.Pending:
        return 'Pending';
        break;
      case Status.Sold:
        return 'Sold';
        break;
      default:
        return 'Unknown';
    }
  }

  void selectItem(BuildContext context) {
    Navigator.of(context).pushNamed(
      ItemScrollScreen.routeName,
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectItem(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.schedule,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text('duration'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.work,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(conditionText),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.attach_money,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(price.toString()),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
