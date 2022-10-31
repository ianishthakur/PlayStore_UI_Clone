import 'package:flutter/material.dart';
import 'package:playstore_ui/common/commonTextField/model/app_Model.dart';
import 'package:playstore_ui/common/constant/strings.dart';

import '../common/commonTextField/model/appsListTextField.dart';
import '../common/commonTextField/tabBar/tab_bar.dart';
import '../common/commonTextField/tabBar/tab_bar_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  int ourCurrentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 4, vsync: this);
    List<AppModel> apps = AppUtils.appView();
    checkType(apps);

    _tabController.animateTo(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            DefaultTabController(
              length: 4,
              child: NestedScrollView(
                headerSliverBuilder: (context, value) {
                  return [TabBarScreen(tabController: _tabController)];
                },
                body: TabBarView(
                  controller: _tabController,
                  children: [
                    TabViewBarScreen(
                      recomlist: recomlist,
                      lowlist: lowlist,
                      sugglist: sugglist,
                    ),
                    TabViewBarScreen(
                      recomlist: recomlist,
                      lowlist: lowlist,
                      sugglist: sugglist,
                    ),
                    TabViewBarScreen(
                      recomlist: recomlist,
                      lowlist: lowlist,
                      sugglist: sugglist,
                    ),
                    TabViewBarScreen(
                      recomlist: recomlist,
                      lowlist: lowlist,
                      sugglist: sugglist,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 231, 243, 253),
        onTap: (index) {
          ourCurrentIndex = index;
          setState(() {});
        },
        currentIndex: ourCurrentIndex,
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.games_outlined,
            ),
            label: Strings.navBarGames,
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.apps,
              ),
              label: Strings.navBarApps),
        ],
      ),
    );
  }

  List<RecomendedList> recomlist = [];
  List<LowSpaceList> lowlist = [];
  List<SuggestedList> sugglist = [];
  checkType(apps) {
    apps.forEach((e) {
      if (e.dataType == Strings.datarecom) {
        setState(() {
          recomlist.add(
              RecomendedList(imagee: e.imagee, name: e.name, rating: e.rating));
        });
      } else if (e.dataType == Strings.datalow) {
        setState(() {
          lowlist.add(
              LowSpaceList(imagee: e.imagee, name: e.name, rating: e.rating));
        });
      } else if (e.dataType == Strings.datasugg) {
        setState(() {
          sugglist.add(
              SuggestedList(imagee: e.imagee, name: e.name, rating: e.rating));
        });
      }
    });
  }
}
