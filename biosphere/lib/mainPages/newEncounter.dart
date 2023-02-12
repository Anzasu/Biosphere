import 'package:biosphere/designConstraints/colors.dart';
import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => CreateState();
}

class CreateState extends State<CreatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
    );
  }
}
