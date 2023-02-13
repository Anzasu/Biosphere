import 'package:image_picker/image_picker.dart';

class Entry {
  String name = "";
  String latinName = "";
  String funfact = "";
  String category = "";
  String image;

  Entry(this.name, this.latinName, this.funfact, this.category, this.image);
}

Entry bird = Entry("Kingfisher", "alcedo atthis", "They can dive really fast",
    "bird", "imgs/eisvogel.jpg");

Entry mammal = Entry("Cat", "felis catus", "They purr, when they are happy",
    "mammal", "imgs/katze.jpg");

Entry tree = Entry(
    "Baobab",
    "adansonia digitata",
    "Baobab trees store water in their trunks and branches",
    "tree",
    "imgs/baobab.jpg");

Entry flower = Entry("Sunflower", "Helianthus annuus", "The seeds are edible",
    "flower", "imgs/sonnenblume.jpg");

List<Entry> allEntries = [bird, mammal, tree, flower];
