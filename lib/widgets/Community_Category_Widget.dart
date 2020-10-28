import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groweatfood/screens/Community_Item_Scroll_Page.dart';
import 'package:groweatfood/screens/homepage.dart';

class CommunityCategoryWidget extends StatefulWidget {
  String text;
  Color color;
  CommunityCategoryWidget({this.text, this.color});

  @override
  _CommunityCategoryWidgetState createState() =>
      _CommunityCategoryWidgetState();
}

class _CommunityCategoryWidgetState extends State<CommunityCategoryWidget> {
  @override
  String groupJoin = "Join Group";
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          CommunityItemScrollPage.routeName,
          arguments: (widget.text),
        );
      },
      child: Card(
        elevation: 4,
        color: widget.color,
        child: Column(
          children: [
            Container(
              child: Center(
                child: Text(
                  widget.text,
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
              ),
              height: 130,
            ),
            Divider(
              thickness: 1,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  groupJoin = "Joined";
                });
              },
              child: Container(
                margin: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add),
                    Text(groupJoin),
                  ],
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
