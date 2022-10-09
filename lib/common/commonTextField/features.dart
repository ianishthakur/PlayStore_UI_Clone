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
                padding: EdgeInsets.only(bottom: 8),
                width: 40,
                height: 25,
                child: Icon(
                  icon,
                  color: Colors.black87,
                  size: 20,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
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
