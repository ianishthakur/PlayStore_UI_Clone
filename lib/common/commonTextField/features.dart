import 'package:flutter/material.dart';

class FeaturesList extends StatelessWidget {
  const FeaturesList({Key? key, required this.icon, required this.text})
      : super(key: key);
  final IconData icon;
  final Widget text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                width: 40,
                height: 15,
                child: Icon(
                  icon,
                  color: Color.fromARGB(255, 71, 71, 71),
                  size: 22,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.only(top: 2),
                height: 25,
                width: 260,
                child: text,
              )
            ],
          ),
        ),
      ],
    );
  }
}
