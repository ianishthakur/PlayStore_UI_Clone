import "package:flutter/material.dart";

import '../pages/google_mic.dart';
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
        onPressed: () {
          showVoiceDialog(context);
        },
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

  showVoiceDialog(BuildContext context) {
    // set up the ProfileDialog
    AlertDialog searchVoiceAlert = AlertDialog(
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
        return searchVoiceAlert;
      },
    );
  }
}
