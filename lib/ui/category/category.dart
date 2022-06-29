import 'package:flutter/material.dart';

import '../../widgets/my_document_card.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          'Личное',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return MyDocumentCard(
            photo: 'images/obrazec.jpeg',
            name: 'Паспорт',
            onPress: () {
              Navigator.pushNamed(context, '/all_category/category/photo_view');
            },
            data: '11/11/2011',
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.pushNamed(context, '/all_category/category/add_category');
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
