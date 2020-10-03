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

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final double price;
  final int harvestDate;
  final Condition condition;
  final Status status;
  final bool isOrganic;
  final Map location;

  const Meal({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
    @required this.price,
    @required this.harvestDate,
    @required this.condition,
    @required this.status,
    @required this.location,
    @required this.isOrganic,
  });
}
