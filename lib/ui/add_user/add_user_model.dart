import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../entity/user.dart';


class AddUserModel extends ChangeNotifier{
  String userName = '';

  void saveCount( BuildContext context) async{
    if (userName.isEmpty) return;
    final box = await Hive.openBox<User>('user_box');
    final user = User(name: userName, documents: null);
    await box.add(user); //  добавляем сохраненную группу в список
    print(box.values);
    Navigator.of(context).pop();

  }
}