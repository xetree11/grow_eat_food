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
            color: Colors.yellowAccent,
          ),
          CommunityCategoryWidget(
            text: "Auburn Growers",
            color: Colors.white60,
          ),
          CommunityCategoryWidget(
            text: "The Gardeners",
            color: Colors.yellowAccent,
          ),
          CommunityCategoryWidget(
            text: "Only Apple",
            color: Colors.white60,
          )
        ],
      ),
    );
  }
}
