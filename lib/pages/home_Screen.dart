import 'package:flutter/material.dart';
import 'package:playstore_ui/common/commonTextField/app_Model.dart';
import 'package:playstore_ui/common/constant/assets.dart';
import 'package:playstore_ui/common/searchPage.dart';
import 'package:playstore_ui/common/constant/strings.dart';
import 'package:playstore_ui/pages/example.dart';
import 'package:playstore_ui/pages/google_Acc.dart';
import '../common/commonTextField/appsListTextField.dart';
import '../common/commonTextField/tab_Bar_View.dart';
import '../common/commonTextField/tab_bar.dart';
import '../common/route/routes.dart';

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
                  return [Example(tabController: _tabController)];
                },
                body: TabBarView(
                  controller: _tabController,
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                ListTile(
                                  title: Text(Strings.recommendedForYou,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20)),
                                  trailing: Icon(
                                    Icons.arrow_forward,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 160,
                              child: buildListView(recomlist),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const ListTile(
                                  title: Text(
                                    Strings.lowspace,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward,
                                  ),
                                ),
                                Container(
                                  height: 160,
                                  child: buildListView(lowlist),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const ListTile(
                                  title: Text(
                                    Strings.suggestedForYou,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward,
                                  ),
                                ),
                                Container(
                                  height: 160,
                                  child: buildListView(sugglist),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                ListTile(
                                  title: Text(Strings.recommendedForYou,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20)),
                                  trailing: Icon(
                                    Icons.arrow_forward,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 160,
                              child: buildListView(recomlist),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const ListTile(
                                  title: Text(
                                    Strings.lowspace,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward,
                                  ),
                                ),
                                Container(
                                  height: 160,
                                  child: buildListView(lowlist),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const ListTile(
                                  title: Text(
                                    Strings.suggestedForYou,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward,
                                  ),
                                ),
                                Container(
                                  height: 160,
                                  child: buildListView(sugglist),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                ListTile(
                                  title: Text(Strings.recommendedForYou,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20)),
                                  trailing: Icon(
                                    Icons.arrow_forward,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 160,
                              child: buildListView(recomlist),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const ListTile(
                                  title: Text(
                                    Strings.lowspace,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward,
                                  ),
                                ),
                                Container(
                                  height: 160,
                                  child: buildListView(lowlist),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const ListTile(
                                  title: Text(
                                    Strings.suggestedForYou,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward,
                                  ),
                                ),
                                Container(
                                  height: 160,
                                  child: buildListView(sugglist),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                ListTile(
                                  title: Text(Strings.recommendedForYou,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20)),
                                  trailing: Icon(
                                    Icons.arrow_forward,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 160,
                              child: buildListView(recomlist),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const ListTile(
                                  title: Text(
                                    Strings.lowspace,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward,
                                  ),
                                ),
                                Container(
                                  height: 160,
                                  child: buildListView(lowlist),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const ListTile(
                                  title: Text(
                                    Strings.suggestedForYou,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward,
                                  ),
                                ),
                                Container(
                                  height: 160,
                                  child: buildListView(sugglist),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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

  Widget buildListView(List apps) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: apps.length,
        itemBuilder: (context, index) {
          return Container(
            width: 90,
            height: 90,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: apps[index].imagee,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  height: 20,
                  child: Text(
                    // overflow: TextOverflow.ellipsis,
                    apps[index].name,
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.start,
                    textDirection: TextDirection.ltr,
                  ),
                ),
                Row(
                  children: [
                    Text(apps[index].rating),
                    Icon(Icons.star, size: 10.0)
                  ],
                )
              ],
            ),
          );
        });
  }

  List<RecomendedList> recomlist = [];
  List<LowSpaceList> lowlist = [];
  List<SuggestedList> sugglist = [];
  checkType(apps) {
    apps.forEach((e) {
      if (e.dataType == "recommended") {
        setState(() {
          recomlist.add(
              RecomendedList(imagee: e.imagee, name: e.name, rating: e.rating));
        });
      } else if (e.dataType == "lowspace") {
        setState(() {
          lowlist.add(
              LowSpaceList(imagee: e.imagee, name: e.name, rating: e.rating));
        });
      } else if (e.dataType == "suggested") {
        setState(() {
          sugglist.add(
              SuggestedList(imagee: e.imagee, name: e.name, rating: e.rating));
        });
      }
    });
  }
}
