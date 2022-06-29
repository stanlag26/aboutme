
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../entity/user.dart';

class UsersModel extends ChangeNotifier{
  var _users = <User>[];
  List <User> get users => _users.toList();

  UsersModel() {
    _setup();
    print('object');
  }

  void _readUsersFromHive(Box<User> box) {
    _users = box.values.toList();
    notifyListeners();
  }

  void _setup() async {
    // if (!Hive.isAdapterRegistered(1)) {
    //   Hive.registerAdapter(UserAdapter());
    // }
    final box = await Hive.openBox<User>('user_box');
    print('object1');
    _readUsersFromHive(box);
    box.listenable().addListener(() => _readUsersFromHive(box));
  }

}