import 'package:flutter/material.dart';
import 'package:groweatfood/screens/listingProduct/AddBalconyToFork.dart';
import 'package:groweatfood/screens/listingProduct/AddCommunity.dart';
import 'package:groweatfood/screens/listingProduct/AddSharingLand.dart';

class MyFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.amber,
      elevation: 10,
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (ctx) {
              return Container(
                color: Color(0xFF737373),
                height: 180,
                child: Container(
                  child: _buildBottomNavigationMenu(ctx),
                  decoration: BoxDecoration(
                    color: Theme.of(context).canvasColor,
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(15),
                      topRight: const Radius.circular(15),
                    ),
                  ),
                ),
              );
            });
      },
      child: Icon(
        Icons.add,
      ),
    );
  }

  Column _buildBottomNavigationMenu(BuildContext ctx) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text('List On SharingLand'),
          onTap: () {
            Navigator.of(ctx).pushNamed(AddSharingLand.routeName);
          },
        ),
        ListTile(
          leading: Icon(Icons.group_work),
          title: Text('List On Community'),
          onTap: () => {
            Navigator.of(ctx).pushNamed(AddCommunity.routeName),
          },
        ),
        ListTile(
          leading: Icon(Icons.business),
          title: Text('Balcony To Fork'),
          onTap: () => {
            Navigator.of(ctx).pushNamed(AddBalconyToFork.routeName),
          },
        ),
      ],
    );
  }
}
