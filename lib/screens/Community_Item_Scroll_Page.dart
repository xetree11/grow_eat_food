import 'package:flutter/material.dart';
import 'package:groweatfood/widgets/Community_Post_Widget.dart';

class CommunityItemScrollPage extends StatefulWidget {
  static const routeName = '/community-scroll-screen';

  @override
  _CommunityItemScrollPageState createState() =>
      _CommunityItemScrollPageState();
}

class _CommunityItemScrollPageState extends State<CommunityItemScrollPage> {
  @override
  Widget build(BuildContext context) {
    final groupName = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          groupName,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            CommunityPostWidget(
                'Nishan Adhikari', groupName, 'Hi, check my apple out.'),
            CommunityPostWidget(
                'Sunil Kunwar', groupName, 'Apple is a delicious fruit.'),
            CommunityPostWidget('Sumi Tamang', groupName, 'Hey there. banana.'),
            CommunityPostWidget('Milan Malla', groupName, 'Mango is Love'),
            CommunityPostWidget('Niraj Chemjong', groupName, 'Dummy Post'),
            CommunityPostWidget('Bikram Khadka', groupName, 'Dummy Post'),
            CommunityPostWidget('Ujwal Khatiwada', groupName, 'Dummy Post'),
            CommunityPostWidget('Ashish Pandey', groupName, 'Dummy Post'),
          ],
        ),
      ),
    );
  }
}
