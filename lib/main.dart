import 'package:flutter/material.dart';
import 'package:playstore_ui/common/route/route_generator.dart';
import 'package:playstore_ui/pages/drag_page.dart';
import 'package:playstore_ui/pages/home_Screen.dart';
import 'package:playstore_ui/pages/splash_Screen.dart';

import 'common/navigation/nav.dart';
import 'common/route/routes.dart';

void main() {
  runApp(PlayStore());
}

class PlayStore extends StatelessWidget {
  const PlayStore({Key? key}) : super(key: key);

  final whitebackground = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
      navigatorKey: Nav.navKey,
      initialRoute: Routes.root,
      //home: MyWidget(),
    );
  }
}
