import 'dart:io';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/widgets.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as Path;

class View extends StatelessWidget {
  static String id = 'view_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
margin: EdgeInsets.all(15.0),
              color: Color(0XFF151A3C),
            ),

          ),
          Expanded(
            child: Container(
margin: EdgeInsets.all(15.0),
              color: Color(0XFF151A3C),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text(
          'View',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0XFF151A3C),
      ),
      backgroundColor: Colors.white,
    );
  }
}
