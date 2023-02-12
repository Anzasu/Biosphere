import 'package:biosphere/designConstraints/colors.dart';
import 'package:flutter/material.dart';

class AllPage extends StatefulWidget {
  const AllPage({super.key});

  @override
  State<AllPage> createState() => AllState();
}

class AllState extends State<AllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
    );
  }
}
