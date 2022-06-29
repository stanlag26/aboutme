import 'package:flutter/material.dart';

/*
Поле ввода
 */


class MyTextField extends StatelessWidget {
  final String hintTextField;

  const MyTextField({
    Key? key,
    required this.hintTextField
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top:20, left: 30, right: 30),
      child: TextField(
        cursorHeight: 20,
        autofocus: true,
        decoration: InputDecoration(
          hintText: hintTextField,
          contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Color.fromRGBO(169, 167, 167, 100), width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Color.fromRGBO(169, 167, 167, 100), width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            gapPadding: 0.0,
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Color.fromRGBO(169, 167, 167, 100), width: 1.5),
          ),
        ),
      ),

    );
  }
}


