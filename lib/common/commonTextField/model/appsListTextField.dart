import 'package:flutter/material.dart';
import 'package:playstore_ui/common/constant/strings.dart';

import '../../constant/assets.dart';
import 'app_Model.dart';

class AppUtils {
  static List<AppModel> appView() {
    return [
      AppModel(
        imagee: Image.network("https://www.freepnglogos.com/uploads/facebook-logo-icon/facebook-logo-icon-file-facebook-icon-svg-wikimedia-commons-4.png"),
        name: Strings.appUdemy,
        rating: Strings.appRate,
        dataType: Strings.datasugg,
      ),
      AppModel(
        imagee: Image.network(
Strings.urlGoogleMeet),
        name: Strings.appGoogleMeet,
        rating: Strings.appRate,
        dataType: Strings.datasugg,
      ),
       AppModel(
        imagee: Image.network(
Strings.urlWhatsapp),
        name: Strings.appWhatsapp,
        rating: Strings.appRate,
         dataType: Strings.datasugg ,
      ),
     
        AppModel(
        imagee: Image.network(
Strings.urlGoogleMeet),
        name: Strings.appGoogleMeet,
        rating: Strings.appRate,
        dataType: Strings.datasugg,
      ),
    
      AppModel(
        imagee: Image.network(
Strings.urlUdemy),
        name: Strings.appUdemy,
        rating: Strings.appRate,
       dataType: Strings.datasugg,
      ),
    AppModel(
        imagee: Image.network(
Strings.urlLightroom),
        name: Strings.appLightroom,
        rating: Strings.appRate,
       dataType: Strings.datalow ,
      ),
    
      AppModel(
        imagee: Image.network(
Strings.urlEsewa),
        name: Strings.appesewa,
        rating: Strings.appRate,
         dataType: Strings.datalow ,
      ),
      AppModel(
        imagee: Image.network(
Strings.urlGoogleMeet),
        name: Strings.appGoogleMeet,
        rating: Strings.appRate,
       dataType: Strings.datalow ,
      ),
      AppModel(
        imagee: Image.network(
Strings.urlLightroom),
        name: Strings.appLightroom,
        rating: Strings.appRate,
       dataType: Strings.datalow ,
      ),
      AppModel(
        imagee: Image.network(
Strings.urlFb        ),
        name: Strings.appFb,
        rating: Strings.appRate,
       dataType: Strings.datalow ,
      ),
      AppModel(
        imagee: Image.network(
Strings.urlWhatsapp       ),
        name: Strings.appWhatsapp,
        rating: Strings.appRate,
       dataType: Strings.datalow ,
      ),
      AppModel(
        imagee: Image.network(
Strings.urlInstagram        ),
        name: Strings.appInstagram,
        rating: Strings.appRate,
      dataType: Strings.datarecom ,
      ),
      AppModel(
        imagee: Image.network(
Strings.urlTwitter        ),
        name: Strings.apptwitter,
        rating: Strings.appRate,
         dataType: Strings.datarecom ,
      ),
         AppModel(
        imagee: Image.network(
Strings.urlFb        ),
        name: Strings.appFb,
        rating: Strings.appRate,
       dataType: Strings.datarecom ,
      ),
    
      AppModel(
        imagee: Image.network(
Strings.urlLightroom        ),
        name: Strings.appLightroom,
        rating: Strings.appRate,
        dataType: Strings.datarecom ,
      ),
      AppModel(
        imagee: Image.network(
Strings.urlWhatsapp        ),
        name: Strings.appWhatsapp,
        rating: Strings.appRate,
         dataType: Strings.datarecom ,
      ),
    ];
  }
}

class AppList {
  List<RecomendedList> recomlist;
  List<SuggestedList> sugglist;
  List<RecomendedList> lowlist;

  AppList(this.recomlist, this.lowlist, this.sugglist);
}

class RecomendedList {
  Image? imagee;
  String? name;
  String? rating;

  RecomendedList(
      {required this.imagee, required this.name, required this.rating});
}

class SuggestedList {
  Image? imagee;
  String? name;
  String? rating;

  SuggestedList(
      {required this.imagee, required this.name, required this.rating});
}

class LowSpaceList {
  Image? imagee;
  String? name;
  String? rating;

  LowSpaceList(
      {required this.imagee, required this.name, required this.rating});
}
