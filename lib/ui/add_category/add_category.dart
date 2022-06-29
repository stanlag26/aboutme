import 'package:flutter/material.dart';

import '../../widgets/my_text_field.dart';

class AddCategory extends StatelessWidget {
  const AddCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
            color: Colors.black
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'Введите данные',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const MyTextField(
              hintTextField: 'Название документа',
            ),const MyTextField(
              hintTextField: 'Заметки',
            ),
            const MyTextField(
              hintTextField: 'Окончание срока действия',
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.photo_camera,
                    color: Colors.black,
                    size: 35,
                  ),
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Добавить документ',
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 45,
              margin: const EdgeInsets.only(top:20, left: 30, right: 30),
              child: ElevatedButton(
                onPressed: () {Navigator.pop(context);},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(169, 167, 167, 100)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: const BorderSide(
                        color: Colors.black,
                        width: 0.5,
                      ),
                    ),
                  ),
                ),
                child: const Text('Сохранить', style: TextStyle(fontSize: 20),),
              ),
            )

          ]),
    );
  }
}
