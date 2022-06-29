import 'package:hive/hive.dart';

part 'document.g.dart';


@HiveType(typeId: 2)
class Document extends HiveObject{
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String data;
  @HiveField(3)
  String photo;

  Document({ required this.id, required this.name, required this.data, required this.photo});


  @override
  String toString() => name;
}