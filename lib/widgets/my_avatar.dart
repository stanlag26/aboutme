/*
Форма аватара
 */


import 'package:flutter/material.dart';

class MyAvatar extends StatelessWidget {
  final String avatarName;
  final String avatarPhoto;
  final VoidCallback onPress;



  const MyAvatar({
    Key? key,
    required this.avatarName,
    required this.avatarPhoto,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: InkWell(
        onTap: onPress,
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
                  backgroundImage:AssetImage(avatarPhoto),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(child: Text( avatarName, style: TextStyle(fontSize: 25))),
            ],
          ),
        ),
      ),
    );
  }
}
