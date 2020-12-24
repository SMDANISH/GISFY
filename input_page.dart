import 'package:flutter/material.dart';
import 'package:gisfy/add_page.dart';
import 'package:gisfy/view_page.dart';
import 'constants.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'add_page.dart';

enum Option { Add, View, Sync }

class InputPage extends StatefulWidget {
  static String id = 'input_page';
  //@override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Option selectedOpt;
  // int height = 180;
  // int weight = 60;
  // int age = 16;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GIS App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, Add.id);
                        selectedOpt = Option.Add;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25.0, 40.0, 25.0, 40.0),
                      child: ReusableCard(
                        Colour: selectedOpt == Option.Add
                            ? kActiveCardColour
                            : kInactiveCardColour,
                        cardChild: IconContent(
                          //icon: FontAwesomeIcons,
                          label: 'Add',
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, View.id);
                        selectedOpt = Option.View;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25.0, 40.0, 25.0, 40.0),
                      child: ReusableCard(
                        Colour: selectedOpt == Option.View
                            ? kActiveCardColour
                            : kInactiveCardColour,
                        cardChild: IconContent(
                          //  icon: FontAwesomeIcons.venus,
                          label: 'View',
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedOpt = Option.Sync;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25.0, 40.0, 25.0, 40.0),
                      child: ReusableCard(
                        //Colour: kActiveCardColour,
                        Colour: selectedOpt == Option.Sync
                            ? kActiveCardColour
                            : kInactiveCardColour,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Sync', style: kLabelTextStyle),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
