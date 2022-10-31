import 'package:flutter/material.dart';

import '../common/commonTextField/google_Acc_Features/features.dart';
import '../common/commonTextField/google_Acc_Features/features_view.dart';
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
    return Container(
      padding: EdgeInsets.only(top: 8, bottom: 8),
      height: MediaQuery.of(context).size.height / 3 * 2,
      // width: double.infinity,
      child: Column(
        children: [
          Container(
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
                SizedBox(
                  width: 80,
                ),
                Image.asset(
                  Assets.google,
                  height: 34,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
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
                  width: 210,
                  child: Column(children: [
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      width: 210,
                      child: const Text(
                        Strings.accName,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 8),
                      width: 210,
                      child: const Text(
                        Strings.accEmail,
                        style: TextStyle(color: Colors.black54, fontSize: 12),
                      ),
                    )
                  ]),
                ),
                Container(
                  width: 40,
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
            margin: EdgeInsets.only(right: 80, top: 10),
            width: 120,
            height: 28,
            decoration: BoxDecoration(
              border: Border.all(width: 0.5, color: Colors.grey),
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
          horizontalDivider(thickness: 0.5),
          SizedBox(height: 270, width: 300, child: FeaturesView()),
          horizontalDivider(thickness: 0.5),
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
                  height: 15,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  child: Text(Strings.feaDot,
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                  width: 20,
                  height: 25,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Text(
                    Strings.feaTerms,
                    style: TextStyle(color: Colors.black87, fontSize: 12),
                  ),
                  width: 130,
                  height: 15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Divider horizontalDivider(
      {height = 20.0, thickness, color = Colors.black54}) {
    return Divider(
      height: height,
      thickness: thickness,
      color: color,
    );
  }
}
