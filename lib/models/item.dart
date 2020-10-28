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
    this.id,
    this.categories,
    // may be more than one category
    this.title,
    this.imageUrl,
    this.price,
    this.priceType,
    // eg.per kg/per 12/per 100
    // @required this.harvestDate,
    this.condition,
    // fresh/frozen/should go immediately
    this.status,
    // sold/pending/available
    this.location,
    this.isOrganic,
  });
}
