import 'package:biosphere/backend/entry.dart';
import 'package:flutter/material.dart';

class AllListPage extends StatefulWidget {
  const AllListPage({super.key});

  @override
  State<AllListPage> createState() => AllListState();
}

class AllListState extends State<AllListPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: ListView.builder(
// scrollDirection: Axis.horizontal,
                  itemCount: allEntries.length,
                  itemBuilder: (context, index) {
                    return Container();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
