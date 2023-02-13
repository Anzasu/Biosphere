import 'package:biosphere/backend/entry.dart';
import 'package:biosphere/mainPages/categories.dart';
import 'package:biosphere/mainPages/newEncounter.dart';
import 'package:flutter/material.dart';
import 'package:biosphere/designConstraints/colors.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomeState();
}

class HomeState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Welcome Bild hier",
                style: TextStyle(color: textOnLight, fontSize: 40),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Latest encounter:",
                style: TextStyle(color: textOnLight, fontSize: 30),
                textAlign: TextAlign.center,
              ),
              Container(
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  color: buttons,
                  // img assate here
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Image(
                          width: 200,
                          height: 180,
                          image: AssetImage('imgs/sonnenblume.jpg')),
                      ListTile(
                        title: Text(
                          allEntries[3].name,
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text(
                          allEntries[3].latinName,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        textColor: textOnDark,
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  color: buttons,
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text(
                          "Your encounters so far:",
                          style: TextStyle(fontSize: 30),
                        ),
                        textColor: textOnDark,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        title: const Text(
                          "No statistics available",
                          style: TextStyle(fontSize: 20),
                        ),
                        textColor: textOnDark,
                      ),
                    ],
                  ),
                ), // statistics here
              ),
            ],
          ),
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
