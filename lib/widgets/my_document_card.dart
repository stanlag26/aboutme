import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';

class MyDocumentCard extends StatelessWidget {
  final String name;
  final String data;
  final String photo;
  final VoidCallback onPress;

  const MyDocumentCard({
    Key? key,
    required this.name,
    required this.data,
    required this.photo,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: InkWell(
        onTap: onPress,
        child: Container(
          margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Column(children: [
            Text(
              name,
              style: const TextStyle(fontSize: 15),
            ),
            SizedBox(height: 5),
            Stack(children: [
              Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.grey),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Opacity(
                        opacity: 0.2,
                        child: Image.asset(
                          photo,
                          // height: 200,
                          // width: 350,
                          fit: BoxFit.scaleDown,
                        ),
                      ))),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 15, right: 20),
                child: Text(
                  data,
                  style: const TextStyle(fontSize: 15),
                ),
              ),
              Align(alignment: Alignment.topRight,
                  child: IconButton(onPressed: () {
///////////////////////////////////////////////////
                    showAdaptiveActionSheet(
                      context: context,
                      title: const Text('Действия'),
                      androidBorderRadius: 30,
                      actions: <BottomSheetAction>[
                        BottomSheetAction(title:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.share),
                            SizedBox(width: 10,),
                            Text('Поделиться'),
                          ],
                        ), onPressed: () {}),
                        BottomSheetAction(title: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.delete,color: Colors.red,),
                            SizedBox(width: 10,),
                            Text('Удалить', style: TextStyle(color: Colors.red),),
                          ],
                        ), onPressed: () {}),
                      ],
                      cancelAction: CancelAction(title: const Text('Отмена',style: TextStyle(color: Colors.black))),
                      );
////////////////////////////////////////////////////////////
                  }, icon:const Icon(Icons.more_horiz,size: 30,), ))
            ]),
            // SizedBox(height: 10,),
            // Text(
            //   date,
            //   style: TextStyle(fontSize: 15),
            // ),
          ]),
        ),
      ),
    );
  }
}

