import 'package:flutter/material.dart';

class AddBalconyToFork extends StatefulWidget {
  static const routeName = '/add-Balcony-To-Fork';
  AddBalconyToFork({Key key}) : super(key: key);
  @override
  _AddBalconyToForkState createState() => _AddBalconyToForkState();
}

class _AddBalconyToForkState extends State<AddBalconyToFork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Balcony To Fork'),
      ),
      body: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Title'),

                // onChanged: (val) {
                //   titleInput = val;
                // },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Price'),

                // onChanged: (val) => amountInput = val,
              ),
              FlatButton(
                child: Text('Submit'),
                textColor: Colors.green,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
