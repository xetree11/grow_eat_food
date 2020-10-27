import 'package:flutter/material.dart';

class ItemDetailColumnUnit extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;

  const ItemDetailColumnUnit({Key key, this.text, this.icon, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            icon,
          ),
          SizedBox(
            width: 15,
          ),
          Flexible(
            child: Text(
              text,
              textWidthBasis: TextWidthBasis.longestLine,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
