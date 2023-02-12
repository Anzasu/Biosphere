import 'package:biosphere/mainPages/home.dart';
import 'package:biosphere/mainPages/newEncounter.dart';
import 'package:flutter/material.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

import '../designConstraints/colors.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => CategorieState();
}

class CategorieState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 60),
              Text(
                "Categories",
                style: TextStyle(
                    color: textOnLight,
                    fontSize: 37,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 50),
              Text(
                "Animals",
                style: TextStyle(color: textOnLight, fontSize: 37),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  // Weiterleiten zur Seite mit der Liste aller Einträge dieser Kategorie
                },
                child: Text(
                  "Aquatic Animals",
                  style: TextStyle(fontSize: 30.0, color: textOnDark),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: buttons, fixedSize: Size(300, 100)),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  // Weiterleiten zur Seite mit der Liste aller Einträge dieser Kategorie
                },
                child: Text(
                  "Terrestrial Animals",
                  style: TextStyle(fontSize: 30.0, color: textOnDark),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: buttons, fixedSize: Size(300, 100)),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  // Weiterleiten zur Seite mit der Liste aller Einträge dieser Kategorie
                },
                child: Text(
                  "Birds",
                  style: TextStyle(fontSize: 30.0, color: textOnDark),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: buttons, fixedSize: Size(300, 100)),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  // Weiterleiten zur Seite mit der Liste aller Einträge dieser Kategorie
                },
                child: Text(
                  "Insects",
                  style: TextStyle(fontSize: 30.0, color: textOnDark),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: buttons, fixedSize: Size(300, 100)),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  // Weiterleiten zur Seite mit der Liste aller Einträge dieser Kategorie
                },
                child: Text(
                  "Amphibians",
                  style: TextStyle(fontSize: 30.0, color: textOnDark),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: buttons, fixedSize: Size(300, 100)),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
