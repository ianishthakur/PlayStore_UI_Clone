import 'package:flutter/material.dart';
import 'package:playstore_ui/common/constant/assets.dart';
import 'package:playstore_ui/common/constant/strings.dart';
import 'package:playstore_ui/common/route/routes.dart';
import 'package:playstore_ui/common/searchPage.dart';
import 'package:playstore_ui/pages/google_Acc.dart';

class Example extends StatelessWidget {
  const Example({Key? key, required this.tabController}) : super(key: key);
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
                    // overflow: TextOverflow.ellipsis,
                    Strings.search,
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 14),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.googleMic);
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
                    showAlertDialog(context);
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

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("Cancel"),
      onPressed: () {},
    );
    Widget continueButton = TextButton(
      child: Text("Continue"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      scrollable: true,
      title: GestureDetector(
          onVerticalDragDown: (details) {
            Navigator.of(context).pop();
          },
          child: GoogleAcc()),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
