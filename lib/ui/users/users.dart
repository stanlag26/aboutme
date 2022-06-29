import 'dart:developer';

import 'package:aboutme_android/ui/users/users_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widgets/my_avatar.dart';

class UsersProviderWidget extends StatelessWidget {
  const UsersProviderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => UsersModel(),
        child: const Users());
  }
}


class Users extends StatelessWidget {
  const Users({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch <UsersModel>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Добавить пользователя',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: model.users.length,
        itemBuilder: (BuildContext context, int index) {
          return MyAvatar(indexList: index,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          log((model.users.length).toString());
          Navigator.pushNamed(context, '/add_user');
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
