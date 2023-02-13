import 'package:biosphere/categoryLists/allList.dart';
import 'package:biosphere/categoryLists/birdList.dart';
import 'package:biosphere/categoryLists/flowerList.dart';
import 'package:biosphere/categoryLists/mammalList.dart';
import 'package:biosphere/categoryLists/treeList.dart';
import 'package:biosphere/mainPages/home.dart';
import 'package:biosphere/mainPages/newEncounter.dart';
import 'package:biosphere/mainPages/noEntryMessage.dart';
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
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Weiterleiten zur Seite mit der Liste aller Einträge dieser Kategorie
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllListPage()),
                  );
                },
                child: Text(
                  "All Encounters",
                  style: TextStyle(fontSize: 30.0, color: textOnDark),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: buttons, fixedSize: Size(300, 100)),
              ),
              SizedBox(height: 35),
              Text(
                "Animals",
                style: TextStyle(color: textOnLight, fontSize: 37),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Weiterleiten zur Seite mit der Liste aller Einträge dieser Kategorie
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => mammalListPage()),
                  );
                },
                child: Text(
                  "Mammals",
                  style: TextStyle(fontSize: 30.0, color: textOnDark),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: buttons, fixedSize: Size(300, 100)),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  // Weiterleiten zur Seite mit der Liste aller Einträge dieser Kategorie
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EmptyPage()),
                  );
                },
                child: Text(
                  "Fish",
                  style: TextStyle(fontSize: 30.0, color: textOnDark),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: buttons, fixedSize: Size(300, 100)),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  // Weiterleiten zur Seite mit der Liste aller Einträge dieser Kategorie
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BirdListPage()),
                  );
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EmptyPage()),
                  );
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EmptyPage()),
                  );
                },
                child: Text(
                  "Amphibians",
                  style: TextStyle(fontSize: 30.0, color: textOnDark),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: buttons, fixedSize: Size(300, 100)),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  // Weiterleiten zur Seite mit der Liste aller Einträge dieser Kategorie
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EmptyPage()),
                  );
                },
                child: Text(
                  "Reptiles",
                  style: TextStyle(fontSize: 30.0, color: textOnDark),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: buttons, fixedSize: Size(300, 100)),
              ),
              SizedBox(height: 50),
              Text(
                "Plants",
                style: TextStyle(color: textOnLight, fontSize: 37),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Weiterleiten zur Seite mit der Liste aller Einträge dieser Kategorie
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TreeListPage()),
                  );
                },
                child: Text(
                  "Trees",
                  style: TextStyle(fontSize: 30.0, color: textOnDark),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: buttons, fixedSize: Size(300, 100)),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  // Weiterleiten zur Seite mit der Liste aller Einträge dieser Kategorie
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EmptyPage()),
                  );
                },
                child: Text(
                  "Shrubs",
                  style: TextStyle(fontSize: 30.0, color: textOnDark),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: buttons, fixedSize: Size(300, 100)),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  // Weiterleiten zur Seite mit der Liste aller Einträge dieser Kategorie
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FlowerListPage()),
                  );
                },
                child: Text(
                  "Flowers",
                  style: TextStyle(fontSize: 30.0, color: textOnDark),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: buttons, fixedSize: Size(300, 100)),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  // Weiterleiten zur Seite mit der Liste aller Einträge dieser Kategorie
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EmptyPage()),
                  );
                },
                child: Text(
                  "Grasses",
                  style: TextStyle(fontSize: 30.0, color: textOnDark),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: buttons, fixedSize: Size(300, 100)),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  // Weiterleiten zur Seite mit der Liste aller Einträge dieser Kategorie
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EmptyPage()),
                  );
                },
                child: Text(
                  "Fruits/ Vegetables",
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
