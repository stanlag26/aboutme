import 'package:flutter/material.dart';

import '../../widgets/my_avatar.dart';




class Users extends StatelessWidget {
  const Users({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return MyAvatar(
            avatarPhoto:
                'images/stalin.jpeg',
            avatarName: 'Иванов Иван',
            onPress: () { Navigator.pushNamed(context, '/all_category'); },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.pushNamed(context, '/add_user');
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
