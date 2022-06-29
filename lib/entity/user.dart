import 'package:aboutme_android/entity/document.dart';
import 'package:hive/hive.dart';
part 'user.g.dart';

@HiveType(typeId: 1)

class User extends HiveObject{
  @HiveField(0)
  String name;
  @HiveField(1)
  HiveList<Document>? documents;

  User({required this.name, required this.documents});

  void addDocument (Box <Document> box, Document document) {
    documents ??= HiveList(box);
    documents?.add(document);
    save();
  }
  @override
  String toString() => name;
}