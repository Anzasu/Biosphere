import 'dart:io';

import 'package:biosphere/backend/entry.dart';
import 'package:biosphere/designConstraints/colors.dart';
import 'package:biosphere/mainPages/categories.dart';
import 'package:biosphere/mainPages/home.dart';
import 'package:biosphere/mainPages/newEncounter.dart';
import 'package:flutter/material.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

class AllListPage extends StatefulWidget {
  const AllListPage({super.key});

  @override
  State<AllListPage> createState() => AllListState();
}

class AllListState extends State<AllListPage> {
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
              SizedBox(
                height: 50,
              ),
              Container(
                child: ElevatedButton(
                  clipBehavior: Clip.antiAlias,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AllListPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: buttons, fixedSize: Size(350, 300)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Image(
                          width: 200,
                          height: 180,
                          image: AssetImage('imgs/eisvogel.jpg')),
                      ListTile(
                        title: Text(
                          allEntries[0].name,
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text(
                          allEntries[0].latinName,
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
                height: 30,
              ),
              Container(
                child: ElevatedButton(
                  clipBehavior: Clip.antiAlias,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AllListPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: buttons, fixedSize: Size(350, 300)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Image(
                          width: 200,
                          height: 180,
                          image: AssetImage('imgs/katze.jpg')),
                      ListTile(
                        title: Text(
                          allEntries[1].name,
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text(
                          allEntries[1].latinName,
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
                height: 30,
              ),
              Container(
                child: ElevatedButton(
                  clipBehavior: Clip.antiAlias,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AllListPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: buttons, fixedSize: Size(350, 300)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Image(
                          width: 200,
                          height: 180,
                          image: AssetImage('imgs/baobab.jpg')),
                      ListTile(
                        title: Text(
                          allEntries[2].name,
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text(
                          allEntries[2].latinName,
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
                height: 30,
              ),
              Container(
                child: ElevatedButton(
                  clipBehavior: Clip.antiAlias,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AllListPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: buttons, fixedSize: Size(350, 300)),
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
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
