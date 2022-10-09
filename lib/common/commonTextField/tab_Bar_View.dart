// import 'package:flutter/material.dart';

// import '../constant/strings.dart';
// import 'app_Model.dart';
// import 'appsListTextField.dart';

// class Tabs extends StatefulWidget {
//   const Tabs({Key? key}) : super(key: key);

//   @override
//   State<Tabs> createState() => _CommonTabBarState();
// }

// class _CommonTabBarState extends State<Tabs>
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
//     List<AppModel> apps = AppUtils.appView();
//     checkType(apps);

//     _tabController.animateTo(1);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return TabBarView(
//       controller: _tabController,
//       children: [
//         SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Column(
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: const [
//                     ListTile(
//                       title: Text(Strings.recommendedForYou,
//                           style: TextStyle(color: Colors.black, fontSize: 20)),
//                       trailing: Icon(
//                         Icons.arrow_forward,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Container(
//                   height: 160,
//                   child: buildListView(recomlist),
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const ListTile(
//                       title: Text(
//                         Strings.lowspace,
//                         style: TextStyle(color: Colors.black, fontSize: 20),
//                       ),
//                       trailing: Icon(
//                         Icons.arrow_forward,
//                       ),
//                     ),
//                     Container(
//                       height: 160,
//                       child: buildListView(lowlist),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const ListTile(
//                       title: Text(
//                         Strings.lowspace,
//                         style: TextStyle(color: Colors.black, fontSize: 20),
//                       ),
//                       trailing: Icon(
//                         Icons.arrow_forward,
//                       ),
//                     ),
//                     Container(
//                       height: 160,
//                       child: buildListView(lowlist),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const ListTile(
//                       title: Text(
//                         Strings.suggestedForYou,
//                         style: TextStyle(color: Colors.black, fontSize: 20),
//                       ),
//                       trailing: Icon(
//                         Icons.arrow_forward,
//                       ),
//                     ),
//                     Container(
//                       height: 160,
//                       child: buildListView(sugglist),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//         SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Column(
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: const [
//                     ListTile(
//                       title: Text(Strings.recommendedForYou,
//                           style: TextStyle(color: Colors.black, fontSize: 20)),
//                       trailing: Icon(
//                         Icons.arrow_forward,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Container(
//                   height: 160,
//                   child: buildListView(recomlist),
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const ListTile(
//                       title: Text(
//                         Strings.lowspace,
//                         style: TextStyle(color: Colors.black, fontSize: 20),
//                       ),
//                       trailing: Icon(
//                         Icons.arrow_forward,
//                       ),
//                     ),
//                     Container(
//                       height: 160,
//                       child: buildListView(lowlist),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const ListTile(
//                       title: Text(
//                         Strings.lowspace,
//                         style: TextStyle(color: Colors.black, fontSize: 20),
//                       ),
//                       trailing: Icon(
//                         Icons.arrow_forward,
//                       ),
//                     ),
//                     Container(
//                       height: 160,
//                       child: buildListView(lowlist),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const ListTile(
//                       title: Text(
//                         Strings.suggestedForYou,
//                         style: TextStyle(color: Colors.black, fontSize: 20),
//                       ),
//                       trailing: Icon(
//                         Icons.arrow_forward,
//                       ),
//                     ),
//                     Container(
//                       height: 160,
//                       child: buildListView(sugglist),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//         SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Column(
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: const [
//                     ListTile(
//                       title: Text(Strings.recommendedForYou,
//                           style: TextStyle(color: Colors.black, fontSize: 20)),
//                       trailing: Icon(
//                         Icons.arrow_forward,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Container(
//                   height: 160,
//                   child: buildListView(recomlist),
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const ListTile(
//                       title: Text(
//                         Strings.lowspace,
//                         style: TextStyle(color: Colors.black, fontSize: 20),
//                       ),
//                       trailing: Icon(
//                         Icons.arrow_forward,
//                       ),
//                     ),
//                     Container(
//                       height: 160,
//                       child: buildListView(lowlist),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const ListTile(
//                       title: Text(
//                         Strings.lowspace,
//                         style: TextStyle(color: Colors.black, fontSize: 20),
//                       ),
//                       trailing: Icon(
//                         Icons.arrow_forward,
//                       ),
//                     ),
//                     Container(
//                       height: 160,
//                       child: buildListView(lowlist),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const ListTile(
//                       title: Text(
//                         Strings.suggestedForYou,
//                         style: TextStyle(color: Colors.black, fontSize: 20),
//                       ),
//                       trailing: Icon(
//                         Icons.arrow_forward,
//                       ),
//                     ),
//                     Container(
//                       height: 160,
//                       child: buildListView(sugglist),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//         SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Column(
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: const [
//                     ListTile(
//                       title: Text(Strings.recommendedForYou,
//                           style: TextStyle(color: Colors.black, fontSize: 20)),
//                       trailing: Icon(
//                         Icons.arrow_forward,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Container(
//                   height: 160,
//                   child: buildListView(recomlist),
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const ListTile(
//                       title: Text(
//                         Strings.lowspace,
//                         style: TextStyle(color: Colors.black, fontSize: 20),
//                       ),
//                       trailing: Icon(
//                         Icons.arrow_forward,
//                       ),
//                     ),
//                     Container(
//                       height: 160,
//                       child: buildListView(lowlist),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const ListTile(
//                       title: Text(
//                         Strings.lowspace,
//                         style: TextStyle(color: Colors.black, fontSize: 20),
//                       ),
//                       trailing: Icon(
//                         Icons.arrow_forward,
//                       ),
//                     ),
//                     Container(
//                       height: 160,
//                       child: buildListView(lowlist),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const ListTile(
//                       title: Text(
//                         Strings.suggestedForYou,
//                         style: TextStyle(color: Colors.black, fontSize: 20),
//                       ),
//                       trailing: Icon(
//                         Icons.arrow_forward,
//                       ),
//                     ),
//                     Container(
//                       height: 160,
//                       child: buildListView(sugglist),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
 
 
//   }
  
//    Widget buildListView(List apps) {
//     return ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: apps.length,
//         itemBuilder: (context, index) {
//           return Container(
//             width: 90,
//             height: 90,
//             margin: const EdgeInsets.symmetric(horizontal: 10),
//             child: Column(
//               children: [
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(20),
//                   child: apps[index].imagee,
//                 ),
//                 Container(
//                   height: 20,
//                   child: Text(
//                     apps[index].name,
//                     style: TextStyle(fontSize: 12),
//                     textAlign: TextAlign.left,
//                     textDirection: TextDirection.ltr,
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Text(apps[index].rating),
//                     const Icon(Icons.star, size: 10.0)
//                   ],
//                 )
//               ],
//             ),
//           );
//         });
//   }

//   List<RecomendedList> recomlist = [];
//   List<LowSpaceList> lowlist = [];
//   List<SuggestedList> sugglist = [];
//   checkType(apps) {
//     apps.forEach((e) {
//       if (e.dataType == "recommended") {
//         setState(() {
//           recomlist.add(
//               RecomendedList(imagee: e.imagee, name: e.name, rating: e.rating));
//         });
//       } else if (e.dataType == "lowspace") {
//         setState(() {
//           lowlist.add(
//               LowSpaceList(imagee: e.imagee, name: e.name, rating: e.rating));
//         });
//       } else if (e.dataType == "suggested") {
//         setState(() {
//           sugglist.add(
//               SuggestedList(imagee: e.imagee, name: e.name, rating: e.rating));
//         });
//       }
//     });
//   }



// }
