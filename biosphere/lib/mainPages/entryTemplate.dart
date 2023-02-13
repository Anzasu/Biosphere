import 'package:biosphere/backend/entry.dart';
import 'package:biosphere/designConstraints/colors.dart';
import 'package:biosphere/mainPages/categories.dart';
import 'package:biosphere/mainPages/home.dart';
import 'package:biosphere/mainPages/newEncounter.dart';
import 'package:flutter/material.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

class EntryPage extends StatefulWidget {
  const EntryPage(Entry entry, {super.key});

  Entry get entry => entry;

  @override
  State<EntryPage> createState() => EntryState(entry);
}

class EntryState extends State<EntryPage> {
  EntryState(Entry entry);

  static Entry get entry => entry;
  Entry chosenEntry = entry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              entry.name,
              style: TextStyle(color: textOnLight, fontSize: 40),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 60,
            ),
            Image(image: AssetImage(entry.image)),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text(
                entry.latinName,
                style: TextStyle(color: textOnDark, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              color: buttons,
            ),
            Container(
              child: Text(
                entry.funfact,
                style: TextStyle(color: textOnDark, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              color: buttons,
            ),
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        closedForegroundColor: textOnDark,
        openForegroundColor: textOnDark,
        closedBackgroundColor: buttons,
        openBackgroundColor: buttons,
        child: Icon(Icons.menu, size: 35.0),
        speedDialChildren: <SpeedDialChild>[
          SpeedDialChild(
            child: Icon(Icons.home, size: 30.0),
            foregroundColor: textOnDark,
            backgroundColor: buttons,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.category_rounded, size: 30.0),
            foregroundColor: textOnDark,
            backgroundColor: buttons,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CategoriesPage()),
              );
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.create_rounded, size: 30.0),
            foregroundColor: textOnDark,
            backgroundColor: buttons,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CreatePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
