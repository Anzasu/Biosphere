import 'package:image_picker/image_picker.dart';

class Entry {
  String name = "";
  String latinName = "";
  String funfact = "";
  String category = "";
  //XFile? image;

  Entry(
    this.name,
    this.latinName,
    this.funfact,
    this.category,
  );
}

Entry bird =
    Entry("Kingfisher", "alcedo atthis", "They can dive really fast", "bird");

Entry mamal =
    Entry("Cat", "felis catus", "They purr, when they are happy", "mamal");

Entry tree = Entry(
  "Baobab",
  "adansonia digitata",
  "Baobab trees store water in their trunks and branches",
  "tree",
);

Entry flower = Entry(
  "Sunflower",
  "Helianthus annuus",
  "The seeds are edible",
  "flower",
);

List<Entry> allEntries = [bird, mamal, tree, flower];
