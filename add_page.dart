import 'dart:io';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/widgets.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as Path;

class Add extends StatelessWidget {
  static String id = 'add_page';
  String name;
  String depart;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
title: Text('Add',

style: TextStyle(
  color: Colors.white,
),),
backgroundColor: Color(0XFF151A3C),

      ),

      backgroundColor: Color(0XFF151A3C),

body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [

Padding(
  padding: EdgeInsets.all(15.0),
  child:   TextField(

  decoration: InputDecoration(
  border: InputBorder.none,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue.shade900, width: 2.0),
      ),
      hintText: 'Name',hintStyle: TextStyle(
    color: Colors.white,
  ),
  ),
    style: TextStyle(
        color: Colors.white
    ),

    onChanged: (value) {
      //Do something with the user input.
      name = value;
    },

      ),
),
SizedBox(height: 15.0,),
    Padding(
      padding: EdgeInsets.all(15.0),
      child: TextField(

      decoration: InputDecoration(
      border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue.shade900, width: 2.0),
        ),
      hintText: 'Department',hintStyle: TextStyle(
        color: Colors.white,
      ),
      ),
        style: TextStyle(
          color: Colors.white,

        ),
        onChanged: (value) {
          //Do something with the user input.
          depart = value;
        },

      ),
    ),
    SizedBox(height: 15.0,),

    RaisedButton(
      onPressed: () {},
      textColor: Color(0XFF151A3C),
      padding: const EdgeInsets.all(0.0),
      color: Colors.white,
      child: Container(
        // decoration: const BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: <Color>[
        //       Color(0xFF0D47A1),
        //       Color(0xFF1976D2),
        //       Color(0xFF42A5F5),
        //     ],
        //   ),
        // ),
        padding: const EdgeInsets.all(10.0),
        child:
        const Text('SAVE', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
      ),
    ),

  ],
),
    );
  }
}





















