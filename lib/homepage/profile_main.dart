import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  String name = '';
  String pass = '';

  File? imageFile;

  @override
  void initState() {
    // TODO: implement initState
    getShapref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Text('Name : '),
                  Text(name),
                ],
              ),
              Row(
                children: [
                  Text('Password : '),
                  Text(pass),
                ],
              ),
              Container(
                child: CircleAvatar(
                  radius: 100,
                  child: displaySignatureFile(),
                ),
              ),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            child: Container(
                              height: 150,
                              child: Column(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      _getFromcamera();
                                    },
                                    child: Text('Camera'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      _getFromGallery();
                                    },
                                    child: Text('gallery'),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });

                    //
                  },
                  child: Text('Choose Image'))
            ],
          ),
        ),
      ),
    );
  }

  getShapref() async {
    final pref = await SharedPreferences.getInstance();

    setState(() {
      name = pref.getString('user_name')!;
      pass = pref.getString('pass')!;
    });
  }

  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 300,
      maxHeight: 300,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  _getFromcamera() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 300,
      maxHeight: 300,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  Widget displaySignatureFile() {
    return new SizedBox(
      height: 480.0,
      width: 480.0,
      child: imageFile == null
          ? new Icon(Icons.camera_alt_outlined, size: 100)
          : ClipRRect(
              borderRadius: BorderRadius.circular(150.0),
              child: new Image.file(
                imageFile!,
                fit: BoxFit.fill,
              )),
    );
  }
}
