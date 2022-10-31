import 'package:flutter/material.dart';
import 'package:playstore_ui/common/route/routes.dart';
import 'package:playstore_ui/pages/google_mic.dart';

import '../../pages/google_Acc.dart';
import '../../pages/home_Screen.dart';
import '../../pages/splash_Screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    
    switch (settings.name) {
      case Routes.root:
        return MaterialPageRoute(builder: (_) => SplashPage());

      case Routes.home:
        return MaterialPageRoute(builder: (_) => HomeScreen(  ));
      case Routes.googleAcc:
        return MaterialPageRoute(builder: (_) => GoogleAcc());
      case Routes.googleMic:
        return MaterialPageRoute(builder: (_) => GoogleMic());

      default:
        return MaterialPageRoute(builder: (_) => SplashPage());
    }
  }
}
