import 'dart:io';

import 'package:flutter/material.dart';
import 'package:groweatfood/models/item.dart';
import 'package:image_picker/image_picker.dart';

class AddBalconyToFork extends StatefulWidget {
  static const routeName = 'add-Balcony-To-Fork';
  AddBalconyToFork({Key key}) : super(key: key);
  @override
  _AddBalconyToForkState createState() => _AddBalconyToForkState();
}

class _AddBalconyToForkState extends State<AddBalconyToFork> {
  File _image;
  Item item = new Item();

  _getImage() async {
    File image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
      print('_image: $_image');
    });
  }

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
                  onTap: _getImage,
                  child: Container(
                    width: 500,
                    height: 200,
                    color: Colors.black12,
                    child: Text(
                      "qq",
                    ),
                    // _image == null ? Icon(Icons.add) : Image.file(_image),
                  ),
                ),
                Text(
                  'Photos: 0/10 Choose your listings main photo first. Add more photos with multiple angles to show any damage or wear',
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(labelText: 'Title'),
                        // onChanged: (val) {
                        //   item.title = val;
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
                      SizedBox(
                        height: 25,
                      ),
                      RaisedButton(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        textColor: Colors.white,
                        color: Theme.of(context).primaryColor,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
