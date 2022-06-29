/*
Форма аватара
 */


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../ui/users/users_model.dart';

class MyAvatar extends StatelessWidget {
  final int indexList;
  const MyAvatar({
    Key? key,
    required this.indexList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.read <UsersModel>();
    return Ink(
      child: InkWell(
        onTap: () {Navigator.pushNamed(context, '/all_category');},
        child: Container(
          margin: const EdgeInsets.only(top: 20, left: 30, right: 30, ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 41,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage:AssetImage( 'images/stalin.jpeg',),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(child: Text( model.users[indexList].name, style: TextStyle(fontSize: 25))),
            ],
          ),
        ),
      ),
    );
  }
}
