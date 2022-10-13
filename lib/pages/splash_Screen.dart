import 'dart:async';

import 'package:flutter/material.dart';
import 'package:playstore_ui/common/route/routes.dart';

import '../common/constant/assets.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 600), () {
      Navigator.pushReplacementNamed(context, Routes.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    final splashWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
       
        width: splashWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.playstorelogo,
              height: 200,
              width: 200,
            ),
            const SizedBox(
              height: 50,
            ),
            const CircularProgressIndicator(
              strokeWidth: 3,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
