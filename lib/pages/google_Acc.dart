import 'package:flutter/material.dart';

import '../common/commonTextField/features.dart';
import '../common/commonTextField/features_View.dart';
import '../common/constant/assets.dart';
import '../common/constant/strings.dart';
import '../common/route/routes.dart';

class GoogleAcc extends StatefulWidget {
  const GoogleAcc({Key? key}) : super(key: key);

  @override
  State<GoogleAcc> createState() => _GoogleAccState();
}

class _GoogleAccState extends State<GoogleAcc> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.grey)),
          onPressed: () {},
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            height: 580,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  height: 50,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.home);
                        },
                        icon: const Icon(
                          Icons.clear,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      Center(
                        child: Image.asset(
                          Assets.google,
                          height: 34,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 50,
                  width: 300,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Image.asset(
                            Assets.profile,
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        child: Column(children: [
                          Container(
                            padding: EdgeInsets.only(top: 6),
                            width: double.infinity,
                            child: const Text(
                              Strings.accName,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 5),
                            width: double.infinity,
                            child: const Text(
                              Strings.accEmail,
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 12),
                            ),
                          )
                        ]),
                      ),
                      const SizedBox(width: 4),
                      Container(
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_drop_down_circle_outlined,
                            size: 26,
                          ),
                          color: Colors.black54,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 100, top: 10),
                  width: 120,
                  height: 28,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: Colors.black54),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      Strings.googleAcc,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                const Divider(
                  height: 40,
                  thickness: 0.5,
                  color: Colors.black54,
                ),
                const FeaturesView(),
                const Divider(
                  height: 10,
                  thickness: 0.5,
                  color: Colors.black54,
                ),
                Container(
                  margin: EdgeInsets.only(left: 40),
                  width: 250,
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          Strings.feaPrivacy,
                          style: TextStyle(color: Colors.black87, fontSize: 12),
                        ),
                        width: 75,
                        height: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 22),
                        child: Text(Strings.feaDot,
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                        width: 20,
                        height: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Text(
                          Strings.feaTerms,
                          style: TextStyle(color: Colors.black87, fontSize: 12),
                        ),
                        width: 130,
                        height: 25,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
