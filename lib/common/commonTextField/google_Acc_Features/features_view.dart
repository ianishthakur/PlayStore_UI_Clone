import 'package:flutter/material.dart';
import '../../utils/google_Acc_utils.dart';
import '../model/feature_Model.dart';
import 'features.dart';

class FeaturesView extends StatefulWidget {
  const FeaturesView({Key? key}) : super(key: key);

  @override
  State<FeaturesView> createState() => _FeaturesViewState();
}

class _FeaturesViewState extends State<FeaturesView> {
  List<FeatureModel> feature = GoogleAccUtils.featureView();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: feature.length,
      itemBuilder: ((context, index) {
        return FeaturesList(
          icon: feature[index].icon,
          text: feature[index].text,
        );
      }),
    );

   }
}
