import 'package:flutter/material.dart';

class ItemDetailColumnUnit extends StatelessWidget {
  final String text;
  final IconData icon;

  const ItemDetailColumnUnit({Key key, this.text, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            icon,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
