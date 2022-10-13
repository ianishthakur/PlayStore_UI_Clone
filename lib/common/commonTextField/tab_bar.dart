import 'package:flutter/material.dart';
import 'package:playstore_ui/common/constant/assets.dart';
import 'package:playstore_ui/common/constant/strings.dart';
import 'package:playstore_ui/common/route/routes.dart';
import 'package:playstore_ui/common/searchPage.dart';
import 'package:playstore_ui/pages/google_Acc.dart';
import 'package:playstore_ui/pages/google_mic.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({Key? key, required this.tabController}) : super(key: key);
  final TabController tabController;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leadingWidth: 0,
      elevation: 0.5,
      pinned: true,
      floating: true,
      snap: true,
      bottom: TabBar(
        isScrollable: true,
        controller: tabController,
        indicatorWeight: 3,
        indicatorSize: TabBarIndicatorSize.label,
        tabs: const [
          Tab(
            child: Text(
              Strings.forYou,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Tab(
            child: Text(Strings.topCharts,
                style: TextStyle(
                  color: Colors.black,
                )),
          ),
          Tab(
            child: Text(Strings.kids,
                style: TextStyle(
                  color: Colors.black,
                )),
          ),
          Tab(
            child: Text(Strings.categories,
                style: TextStyle(
                  color: Colors.black,
                )),
          )
        ],
      ),
      backgroundColor: Colors.white,
      title: Center(
        child: Container(
          height: 42,
          width: 320,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 227, 236, 244),
              borderRadius: BorderRadius.circular(40)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                
                  margin: EdgeInsets.only(left: 6),
                  child: IconButton(
                      onPressed: () {
                        showSearch(context: context, delegate: SearchApp());
                      },
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black87,
                      ))),
              Container(
                margin: EdgeInsets.only(right: 6),
                width: 180,
                child: InkWell(
                  onTap: () {
                    showSearch(context: context, delegate: SearchApp());
                  },
                  child: const Text(
                    Strings.search,
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 14),
                child: InkWell(
                  onTap: () {
                    showVoiceDialog(context);
                  },
                  child: const Icon(
                    Icons.mic_none_outlined,
                    color: Colors.black87,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                width: 32,
                height: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: InkWell(
                  onTap: () {
                    showProfileDialog(context);
                  },
                  child: Image.asset(
                    Assets.profile,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  showProfileDialog(BuildContext context) {
    // set up the ProfileDialog
    AlertDialog profileAlert = AlertDialog(
      insetPadding: EdgeInsets.only(right: 6, left: 6, top: 40),
      titlePadding: EdgeInsets.zero,
      scrollable: false,
      title: GestureDetector(
          onVerticalDragDown: (details) {
            // Navigator.of(context).pop();
          },
          child: const GoogleAcc()),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return profileAlert;
      },
    );
  }

  showVoiceDialog(BuildContext context) {
    // set up the ProfileDialog
    AlertDialog voiceAlert = AlertDialog(
      insetPadding: EdgeInsets.only(right: 6, left: 6, top: 40),
      titlePadding: EdgeInsets.zero,
      scrollable: true,
      title: GestureDetector(
          onVerticalDragDown: (details) {
            Navigator.of(context).pop();
          },
          child: const GoogleMic()),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return voiceAlert;
      },
    );
  }
}
