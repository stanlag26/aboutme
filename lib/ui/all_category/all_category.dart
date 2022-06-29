import 'package:flutter/material.dart';

import '../../widgets/my_category_card.dart';

class AllCategory extends StatelessWidget {
  const AllCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          'Иванов Иван',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          MyCategoryCard(
            onPress: () {
              Navigator.pushNamed(context, '/all_category/category');
            },
            photo: 'images/passport.jpeg',
            name: 'Личное',
          ),
          MyCategoryCard(
            onPress: () {},
            photo: 'images/pills.jpeg',
            name: 'Медицина',
          ),
          MyCategoryCard(
            onPress: () {},
            photo: 'images/avto.jpeg',
            name: 'Авто',
          ),
          MyCategoryCard(
            onPress: () {},
            photo: 'images/others.jpeg',
            name: 'Прочее',
          ),
        ],
      ),
    );
  }
}
