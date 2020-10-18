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
        elevation: 4,
        margin: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 500,
                    height: 200,
                    color: Colors.black12,
                    child: Icon(Icons.add),
                  ),
                ),
                Text(
                    'Photos: 0/10 Choose your listings main photo first. Add more photos with multiple angles to show any damage or wear'),
                TextField(
                  decoration: InputDecoration(labelText: 'Title'),

                  // onChanged: (val) {
                  //   titleInput = val;
                  // },
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Category'),

                  // onChanged: (val) => amountInput = val,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Condition'),

                  // onChanged: (val) => amountInput = val,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Price'),

                  // onChanged: (val) => amountInput = val,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Location'),

                  // onChanged: (val) => amountInput = val,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Description'),

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
      ),
    );
  }
}
