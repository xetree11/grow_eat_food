import 'package:flutter/foundation.dart';

enum Condition {
  Fresh,
  Frozen,
  Immediate_sale,
}

enum Status {
  Available,
  Pending,
  Sold,
}

class Item {
  final String id;
  final String categories;
  final String title;
  final String imageUrl;
  final double price;
  final String priceType;
  // final DateTime harvestDate;
  final Condition condition;
  final Status status;
  final bool isOrganic;
  final Map location;

  const Item({
    @required this.id,
    @required this.categories,
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
    @required this.location,
    @required this.isOrganic,
  });
}
