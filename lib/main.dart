import 'package:aboutme_android/ui/add_category/add_category.dart';
import 'package:aboutme_android/ui/add_user/add_user.dart';
import 'package:aboutme_android/ui/all_category/all_category.dart';
import 'package:aboutme_android/ui/category/category.dart';
import 'package:aboutme_android/ui/photo_scale/photo_scale.dart';
import 'package:aboutme_android/ui/users/users.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'entity/document.dart';
import 'entity/user.dart';




void main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(DocumentAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) =>  const Users(),
          '/add_user': (context) =>  const AddUserProviderWidget(),
          '/all_category': (context) =>  AllCategory(),
          '/all_category/category':(context) =>  Category(),
          '/all_category/category/add_category':(context) =>  AddCategory(),
          '/all_category/category/photo_view':(context) =>  PhotoScale(),

        },);
  }
}
