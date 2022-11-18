import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../pages/homepage_utils.dart';
import '../../constant/strings.dart';

class TabViewBarScreen extends StatelessWidget {
  const TabViewBarScreen(
      {Key? key,
      required this.recomlist,
      required this.sugglist,
      required this.lowlist})
      : super(key: key);

  final List<dynamic> recomlist;
  final List<dynamic> sugglist;
  final List<dynamic> lowlist;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ListTile(
                  title: Text(
                    Strings.recommended,
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                  ),
                ),
              ],
            ),
            Container(
              height: 160,
              child: buildListView(recomlist),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ListTile(
                  title: Text(
                    Strings.lowspace,
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                  ),
                ),
                Container(
                  height: 160,
                  child: buildListView(lowlist),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ListTile(
                  title: Text(
                    Strings.suggestedForYou,
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                  ),
                ),
                Container(
                  height: 160,
                  child: buildListView(sugglist),
                  
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Widget buildListView(List apps) {
  //   return ListView.builder(
  //       scrollDirection: Axis.horizontal,
  //       itemCount: apps.length,
  //       itemBuilder: (context, index) {
  //         return Container(
  //           width: 90,
  //           height: 90,
  //           margin: EdgeInsets.symmetric(horizontal: 10),
  //           child: Column(
  //             children: [
  //               ClipRRect(
  //                 borderRadius: BorderRadius.circular(20),
  //                 child: apps[index].imagee,
  //               ),
  //               Container(
  //                 margin: EdgeInsets.only(top: 10),
  //                 width: double.infinity,
  //                 child: Text(
  //                   apps[index].name,
  //                   style: TextStyle(fontSize: 12),
  //                   textAlign: TextAlign.start,
  //                   textDirection: TextDirection.ltr,
  //                 ),
  //               ),
  //               Row(
  //                 children: [
  //                   Text(apps[index].rating),
  //                   Icon(Icons.star, size: 10.0)
  //                 ],
  //               )
  //             ],
  //           ),
  //         );
  //       });
  // }
}
