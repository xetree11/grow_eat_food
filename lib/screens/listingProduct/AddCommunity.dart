import 'dart:io';

import 'package:flutter/material.dart';
import 'package:groweatfood/screens/listingProduct/success.dart';
import 'package:image_picker/image_picker.dart';

class AddCommunity extends StatefulWidget {
  static const routeName = "add-community";
  @override
  _AddCommunityState createState() => _AddCommunityState();
}

class _AddCommunityState extends State<AddCommunity> {
  File _image;

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
        title: Text('List On Community'),
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
                    child:
                        _image == null ? Icon(Icons.add) : Image.file(_image),
                  ),
                ),
                Text(
                  'Photos: 0/10 Choose your listings main photo first. Add more photos with multiple angles to show any damage or wear',
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
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
                      SizedBox(
                        height: 15,
                      ),
                      RaisedButton(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        textColor: Colors.white,
                        color: Theme.of(context).primaryColor,
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(successScreen_.routeName);
                        },
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
