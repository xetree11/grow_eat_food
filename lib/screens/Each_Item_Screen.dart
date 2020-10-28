import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:groweatfood/item_data.dart';
import 'package:groweatfood/models/item.dart';
import 'package:groweatfood/widgets/Item_Detail_Column_Unit.dart';

class EachItemDetailScreen extends StatelessWidget {
  static const routeName = '/each-item-detail';
  String id;

  EachItemDetailScreen(this.id);

  String getOrganicText(bool isOrganic) {
    if (isOrganic)
      return "Organic";
    else
      return "Not Organic";
  }

  Color getOrganicTextColor(bool isOrganic) {
    if (isOrganic)
      return Colors.green;
    else
      return Colors.brown;
  }

  String getCondition(Condition condition) {
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
    }
  }

  String getStatus(Status status) {
    switch (status) {
      case Status.Available:
        return "Available";
        break;
      case Status.Pending:
        return "Pending";
        break;
      case Status.Sold:
        return "Sold";
        break;
      default:
    }
  }

  Color getStatusTextColor(Status status) {
    switch (status) {
      case Status.Available:
        return Colors.green;
        break;
      case Status.Pending:
        return Colors.white10;
        break;
      case Status.Sold:
        return Colors.red;
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    final Item item = ITEMS_DATA.where((item) {
      return item.id.contains(id);
    }).first;

    return SafeArea(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: SingleChildScrollView(
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
                      child: BackButton(
                        color: Colors.white54,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                      child: Text(
                        item.title,
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.share),
                              Text(
                                ' Share',
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.favorite_outlined),
                              Text(
                                ' Flag',
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.report),
                              Text(
                                ' Report',
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    ItemDetailColumnUnit(
                        color: Colors.black38,
                        text: item.price.toString() + item.priceType,
                        icon: Icons.attach_money),
                    ItemDetailColumnUnit(
                        color: Colors.black38,
                        text: getCondition(item.condition),
                        icon: Icons.grass),
                    ItemDetailColumnUnit(
                      color: getStatusTextColor(item.status),
                      text: getStatus(item.status),
                      icon: Icons.work,
                    ),
                    ItemDetailColumnUnit(
                      color: getOrganicTextColor(item.isOrganic),
                      text: getOrganicText(item.isOrganic),
                      icon: Icons.grass,
                    ),
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
