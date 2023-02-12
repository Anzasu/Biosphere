import 'package:image_picker/image_picker.dart';

class Entry {
  String name = "";
  String latinName = "";
  String funfact = "";
  String category = "";
  XFile? image;

  XFile? getImage() {
    return image;
  }

  String getName() {
    return name;
  }

  String getLatinName() {
    return latinName;
  }

  String getFunFact() {
    return funfact;
  }

  String getCategory() {
    return category;
  }

  Entry(this.name, this.latinName, this.funfact, this.category,
      XFile? this.image);
}

Entry bird = Entry("Kingfisher", "alcedo atthis", "They can dive really fast",
    "bird", XFile('biosphere/lib/imgs/eisvogel.jpg'));

Entry mamal = Entry("Cat", "felis catus", "They purr, when they are happy",
    "mamal", XFile('biosphere/lib/imgs/katze.jpg'));

Entry tree = Entry(
    "Baobab",
    "adansonia digitata",
    "Baobab trees store water in their trunks and branches",
    "tree",
    XFile('biosphere/lib/imgs/baobab.jpg'));

Entry flower = Entry("Sunflower", "Helianthus annuus", "The seeds are edible",
    "flower", XFile('biosphere/lib/imgs/sonnenblume.jpg'));

List<Entry> allEntries = [bird, mamal, tree, flower];
