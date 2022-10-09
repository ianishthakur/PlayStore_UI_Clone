import 'package:flutter/material.dart';

import '../common/constant/strings.dart';
import '../common/route/routes.dart';

class GoogleMic extends StatelessWidget {
  const GoogleMic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        autofocus: true,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.grey)),
        onPressed: () {
          Navigator.pushNamed(context, Routes.home);
        },
        child: Container(
          height: 320,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              color: Colors.white,
              borderRadius: BorderRadius.circular(6)),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                width: double.infinity,
                height: 50,
                child: const Text(
                  Strings.google,
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontSize: 24),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(
                        width: 8, color: Color.fromARGB(255, 216, 22, 8))),
                child: const Icon(
                  Icons.mic,
                  color: Color.fromARGB(255, 61, 140, 205),
                  size: 34,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                child: const Text(
                  Strings.micDidnot,
                  style: TextStyle(color: Colors.black54, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 50,
                child: const Text(
                  Strings.micAgain,
                  style: TextStyle(color: Colors.black54, fontSize: 16),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 100,
                height: 34,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    border: Border.all(width: 0.5, color: Colors.grey)),
                child: const Center(
                  child: Text(
                    Strings.tryAgain,
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 200,
                height: 30,
                child: const Text(
                  Strings.micEng,
                  style: TextStyle(color: Colors.black54, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
