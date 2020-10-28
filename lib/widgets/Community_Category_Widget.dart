import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groweatfood/screens/homepage.dart';

class CommunityCategoryWidget extends StatelessWidget {
  String text;
  Color color;
  CommunityCategoryWidget({this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        elevation: 4,
        color: color,
        child: Column(
          children: [
            Container(
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
              ),
              height: 200,
            ),
            Divider(
              thickness: 2,
              indent: 200,
              color: Colors.black,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(MyHomePage.routeName);
              },
              child: Container(
                margin: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Icon(Icons.add), Text('Join Group')],
                ),
              ),
            )
          ],
        ),
        margin: EdgeInsets.all(10),
      ),
    );
  }
}
