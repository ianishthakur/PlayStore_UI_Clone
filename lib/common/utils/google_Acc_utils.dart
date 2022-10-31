import 'package:flutter/material.dart';
import 'package:playstore_ui/common/commonTextField/model/feature_Model.dart';

import '../constant/strings.dart';

class GoogleAccUtils {
  static List<FeatureModel> featureView() {
    return [
      FeatureModel(icon: Icons.apps, text: Strings.feaManage),
      FeatureModel(icon: Icons.notifications_outlined, text: Strings.feaOffers),
      FeatureModel(icon: Icons.credit_card, text: Strings.feaPayment),
      FeatureModel(icon: Icons.security_rounded, text: Strings.feaplay),
      FeatureModel(icon: Icons.folder_open, text: Strings.feaLibrary),
      FeatureModel(icon: Icons.extension_outlined, text: Strings.feaPlayPass),
      FeatureModel(icon: Icons.settings_outlined, text: Strings.feaSettings),
      FeatureModel(icon: Icons.help_outline_sharp, text: Strings.feaHelp)
    ];
  }
}
