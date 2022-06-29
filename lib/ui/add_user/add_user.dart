import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../widgets/my_text_field.dart';
import 'add_user_model.dart';

class AddUserProviderWidget extends StatelessWidget {
  const AddUserProviderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => AddUserModel(),
        child: const AddUser());
  }
}

class AddUser extends StatelessWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.read <AddUserModel>();
    final name = TextEditingController();
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
            const SizedBox(
              height: 20,
            ),
         MyTextField(
          hintTextField: 'Фамилия Имя Отчество',
           controller: name,

          // onPress: (value) => print(value),
          //  onEditingComplete: () =>
          //      model.saveUser(context),
        ),

        const SizedBox(
          height: 10,
        ),
        Container(
          height: 45,
          margin: const EdgeInsets.only(top:20, left: 30, right: 30),
          child: ElevatedButton(
              onPressed: () {
                model.userName = name.text;
                model.saveUser(context);
                },
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
