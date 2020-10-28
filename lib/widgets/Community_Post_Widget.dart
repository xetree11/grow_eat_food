import 'package:flutter/material.dart';

class CommunityPostWidget extends StatefulWidget {
  String text;
  String groupName;
  String userName;

  CommunityPostWidget(this.userName, this.groupName, this.text);

  @override
  _CommunityPostWidgetState createState() =>
      _CommunityPostWidgetState(userName, groupName, text);
}

class _CommunityPostWidgetState extends State<CommunityPostWidget> {
  String text;
  String groupName;
  String userName;

  _CommunityPostWidgetState(this.userName, this.groupName, this.text);
  String like = " Like";
  Color color = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Text(
                  this.userName,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.arrow_right),
                Text(
                  this.groupName,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            child: Text(
              this.text,
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      like = " Liked";
                      color = Colors.blue;
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.thumb_up,
                        color: color,
                      ),
                      Text(
                        like,
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.comment),
                    Text(
                      ' Comment',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.share_outlined),
                    Text(
                      ' Share',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
