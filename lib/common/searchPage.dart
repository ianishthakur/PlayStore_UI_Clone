import "package:flutter/material.dart";

import 'constant/strings.dart';

class SearchApp extends SearchDelegate {
  final apps = [
    Strings.appFb,
    Strings.appInstagram,
    Strings.apptwitter,
    Strings.appMicrosoft,
    Strings.appAlibaba,
    Strings.appesewa
  ];

  final recentapps = [
    Strings.appWhatsapp,
    Strings.appGoogleMeet,
    Strings.appLightroom
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.mic_none_outlined,
          color: Colors.black54,
        ),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('abc');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestList = query.isEmpty ? recentapps : apps;

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.history),
        title: Text(suggestList[index]),
      ),
      itemCount: suggestList.length,
    );
  }
}
