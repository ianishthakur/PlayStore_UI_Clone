import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

import 'package:playstore_ui/pages/google_Acc.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool _isDropped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Draggable<String>(
              axis: Axis.vertical,
              childWhenDragging: Container(),
              // Data is the value this Draggable stores.
              data: 'red',
              child: GoogleAcc(),
              feedback: GoogleAcc(),
            ),
            DragTarget<String>(
              builder: (
                BuildContext context,
                List<dynamic> accepted,
                List<dynamic> rejected,
              ) {
                return Container(
                  height: 300,
                  width: 300,
                  // child: Center(
                  //   child: Image.asset(
                  //       _isDropped ? Assets.google : Assets.playstorelogo),
                  // ),
                );
              },
              onWillAccept: (data) {
                return data == 'red';
              },
              onAccept: (data) {
                setState(() {
                  _isDropped = true;
                Navigator.of(context).pop();

                });
              },
            ),
          ],
        ),
      ),
    ));
  }
}
