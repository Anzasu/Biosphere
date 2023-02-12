import 'package:biosphere/designConstraints/colors.dart';
import 'package:biosphere/mainPages/categories.dart';
import 'package:biosphere/mainPages/home.dart';
import 'package:flutter/material.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';
import 'package:image_picker/image_picker.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => CreateState();
}

class CreateState extends State<CreatePage> {
  XFile? image;

  final ImagePicker picker = ImagePicker();

  //we can upload image from camera or from gallery based on parameter
  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);

    setState(() {
      image = img;
    });
  }

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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Save your encounter!",
                style: TextStyle(
                    color: textOnLight,
                    fontSize: 37,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Add Image",
                style: TextStyle(
                  color: textOnLight,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                //if user click this button, user can upload image from gallery
                onPressed: () {
                  Navigator.pop(context);
                  getImage(ImageSource.gallery);
                },
                child: Row(
                  children: [
                    Icon(Icons.image),
                    Text(
                      'From Gallery',
                      style: TextStyle(
                        color: textOnDark,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),

                style: ElevatedButton.styleFrom(
                    backgroundColor: buttons, fixedSize: Size(178, 75)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
