import 'package:flutter/material.dart';
import 'package:playstore_ui/common/constant/assets.dart';

Widget buildListView(List apps) {
  return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: apps.length,
      itemBuilder: (context, index) {
        return Container(
          width: 90,
          height: 90,
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              // FadeInImage(
              //   placeholder: AssetImage(Assets.placeholder),
              //   image: NetworkImage(apps[index]),
              //   imageErrorBuilder: (context, a, b) {
              //     return Text("Image could not be loaded");
              //   },
              // ),

        
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: apps[index].imagee,
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                height: 20,
                child: Text(
                  // overflow: TextOverflow.ellipsis,
                  apps[index].name,
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.start,
                  textDirection: TextDirection.ltr,
                ),
              ),
              Row(
                children: [
                  Text(apps[index].rating),
                  Icon(Icons.star, size: 10.0)
                ],
              )
            ],
          ),
        );
      });
}
