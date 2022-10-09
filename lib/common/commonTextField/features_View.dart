import 'package:flutter/material.dart';

import '../constant/strings.dart';
import 'features.dart';

class FeaturesView extends StatelessWidget {
  const FeaturesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 25,
            child: const FeaturesList(
              icon: Icons.apps,
              text: Text(
                Strings.feaManage,
                style: TextStyle(color: Colors.black87),
              ),
            )),
        SizedBox(
          height: 20,
        ),
        Container(
            height: 25,
            child: const FeaturesList(
              icon: Icons.notifications_outlined,
              text: Text(
                Strings.feaOffers,
                style: TextStyle(color: Colors.black87),
              ),
            )),
        SizedBox(
          height: 20,
        ),
        Container(
            height: 25,
            child: const FeaturesList(
              icon: Icons.credit_card,
              text: Text(
                Strings.feaPayment,
                style: TextStyle(color: Colors.black87),
              ),
            )),
        SizedBox(
          height: 20,
        ),
        Container(
            height: 25,
            child: const FeaturesList(
              icon: Icons.security_rounded,
              text: Text(
                Strings.feaplay,
                style: TextStyle(color: Colors.black87),
              ),
            )),
        SizedBox(
          height: 20,
        ),
        Container(
            height: 25,
            child: const FeaturesList(
              icon: Icons.folder_open,
              text: Text(
                Strings.feaLibrary,
                style: TextStyle(color: Colors.black87),
              ),
            )),
        SizedBox(
          height: 20,
        ),
        Container(
            height: 25,
            child: const FeaturesList(
              icon: Icons.extension_outlined,
              text: Text(
                Strings.feaPlayPass,
                style: TextStyle(color: Colors.black87),
              ),
            )),
        SizedBox(
          height: 20,
        ),
        Container(
            height: 25,
            child: const FeaturesList(
              icon: Icons.settings_outlined,
              text: Text(
                Strings.feaSettings,
                style: TextStyle(color: Colors.black87),
              ),
            )),
        SizedBox(
          height: 20,
        ),
        Container(
            height: 25,
            child: const FeaturesList(
              icon: Icons.help_outline_sharp,
              text: Text(
                Strings.feaHelp,
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )),
      ],
    );
  }
}
