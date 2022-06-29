import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoScale extends StatelessWidget {
  PhotoScale({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          'Паспорт',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: PhotoView(
        backgroundDecoration: BoxDecoration(color: Colors.white),
        imageProvider: AssetImage('images/obrazec.jpeg'),
      ),
    );
  }
}
