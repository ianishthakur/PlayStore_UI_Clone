// import 'package:flutter/material.dart';

// import '../constant/assets.dart';
// import '../constant/strings.dart';
// import '../route/routes.dart';
// import '../searchPage.dart';
// import 'app_Model.dart';
// import 'appsListTextField.dart';

// class CommonTabBar extends StatefulWidget {
//   const CommonTabBar({Key? key}) : super(key: key);

//   @override
//   State<CommonTabBar> createState() => _CommonTabBarState();
// }

// class _CommonTabBarState extends State<CommonTabBar>
//     with TickerProviderStateMixin {
//   late TabController _tabController;
//   int ourCurrentIndex = 0;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(
//       initialIndex: 0,
//       length: 4,
//       vsync: this,
//     );

//     _tabController.animateTo(1);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Stack(
//         children: [
//           DefaultTabController(
//             length: 4,
//             child: NestedScrollView(
//               headerSliverBuilder: (context, value) {
//                 return [
//                   SliverAppBar(
//                     pinned: true,
//                     floating: true,
//                     snap: true,
//                     bottom: TabBar(
//                       isScrollable: true,
//                       controller: _tabController,
//                       indicatorWeight: 3,
//                       indicatorSize: TabBarIndicatorSize.label,
//                       tabs: const [
//                         Tab(
//                           child: Text(
//                             Strings.forYou,
//                             style: TextStyle(
//                               color: Colors.black,
//                             ),
//                           ),
//                         ),
//                         Tab(
//                           child: Text(Strings.topCharts,
//                               style: TextStyle(
//                                 color: Colors.black,
//                               )),
//                         ),
//                         Tab(
//                           child: Text(Strings.kids,
//                               style: TextStyle(
//                                 color: Colors.black,
//                               )),
//                         ),
//                         Tab(
//                           child: Text(Strings.categories,
//                               style: TextStyle(
//                                 color: Colors.black,
//                               )),
//                         )
//                       ],
//                     ),
//                     backgroundColor: Colors.white,
//                     title: Center(
//                       child: Container(
//                         height: 50,
//                         width: 320,
//                         decoration: BoxDecoration(
//                             color: Colors.black12,
//                             borderRadius: BorderRadius.circular(40)),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Container(
//                                 margin: EdgeInsets.only(left: 6),
//                                 child: IconButton(
//                                     onPressed: () {
//                                       showSearch(
//                                           context: context,
//                                           delegate: SearchApp());
//                                     },
//                                     icon: const Icon(
//                                       Icons.search,
//                                       color: Colors.black54,
//                                     ))),
//                             Container(
//                               // color: Colors.red,
//                               margin: EdgeInsets.only(right: 16),
//                               width: 180,
//                               child: InkWell(
//                                 onTap: () {
//                                   Navigator.pushNamed(context, Routes.search);
//                                 },
//                                 child: const Text(
//                                   Strings.search,
//                                   style: TextStyle(color: Colors.grey),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               // color: Colors.red,
//                               child: InkWell(
//                                 onTap: () {},
//                                 child: const Icon(
//                                   Icons.mic_none_outlined,
//                                   color: Colors.black54,
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               margin: EdgeInsets.only(right: 10),
//                               width: 32,
//                               height: 38,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(50),
//                               ),
//                               child: ElevatedButton(
//                                 onPressed: () {
//                                   Navigator.pushNamed(context, Routes.profile);
//                                 },
//                                 child: Image.asset(
//                                   Assets.profile,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
            
            
            
//                 ];
            
            
//               },
//               body: Container(),
//             ),
//           ),
//         ],
//       )),
//     );
//   }
// }
