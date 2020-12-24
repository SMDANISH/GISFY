import 'package:flutter/material.dart';
import 'package:gisfy/AddInputPage.dart';
import 'package:gisfy/add_page.dart';
import 'package:gisfy/view_page.dart';
import 'input_page.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart' as Path;

void main() {
  runApp(Gisfy());
}

class Gisfy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      //theme: ThemeData.dark(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0XFF151A3C),
        scaffoldBackgroundColor: Color(0XFF151A3C),

        // accentColor: Colors.purple,
        // textTheme: TextTheme(body1:TextStyle(color: Colors.white),),
      ),
      home: InputPage(),


      initialRoute: InputPage.id,
    routes: {

      InputPage.id: (context) => InputPage(),
      Add.id: (context) => Add(),
      View.id: (context) => View(),
    }


    );
  }
}