import 'package:biosphere/mainPages/allEncounters.dart';
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

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    CategoriesPage(),
    AllPage(),
    CreatePage(),
  ];
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
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "Welcome here",
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
            Card(
              clipBehavior: Clip.antiAlias,
              color: buttons,
              // img assate here
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      "Object Name",
                      style: TextStyle(fontSize: 30),
                    ),
                    subtitle: const Text("Date"),
                    textColor: textOnDark,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Card(
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
                    height: 250,
                  )
                ],
              ),
              // statistics here
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
