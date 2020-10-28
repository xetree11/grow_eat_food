import 'package:flutter/material.dart';
import 'package:groweatfood/widgets/Community_Category_Widget.dart';

class Community extends StatefulWidget {
  @override
  _CommunityState createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CommunityCategoryWidget(
            text: "United Farm Group",
            color: Colors.blue,
          ),
          CommunityCategoryWidget(
            text: "Auburn Growers",
            color: Colors.redAccent,
          ),
          CommunityCategoryWidget(
            text: "The Gardeners",
            color: Colors.grey,
          ),
          CommunityCategoryWidget(
            text: "Only Apple",
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
