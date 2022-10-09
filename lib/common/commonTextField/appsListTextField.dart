import 'package:flutter/material.dart';
import 'package:playstore_ui/common/constant/strings.dart';

import '../constant/assets.dart';
import 'app_Model.dart';

class AppUtils {
  static List<AppModel> appView() {
    return [
      AppModel(
        // imagee: Imagee.asset(Assets.twitter),
        imagee: Image.network(
            'https://play-lh.googleusercontent.com/dsCkmJE2Fa8IjyXERAcwc5YeQ8_NvbZ4_OI8LgqyjILpXUfS5YhEcnAMajKPrZI-og'),
        name: Strings.appUdemy,
        rating: Strings.appRate,
        dataType: 'suggested',
      ),
      AppModel(
        // imagee: Imagee.asset(Assets.facebooklite),
        imagee: Image.network(
          'https://storage.googleapis.com/gweb-uniblog-publish-prod/images/Google_Meet.max-1100x1100.png',
        ),
        name: Strings.appGoogleMeet,
        rating: Strings.appRate,
        dataType: "suggested",
      ),
      AppModel(
        // imagee: Imagee.asset(Assets.messengerlite),
        imagee: Image.network(
          'https://lh3.ggpht.com/e3oZddUHSC6EcnxC80rl_6HbY94sM63dn6KrEXJ-C4GIUN-t1XM0uYA_WUwyhbIHmVMH=w300',
        ),
        name: Strings.appGoogleSheet,
        rating: Strings.appRate,
        dataType: "suggested",
      ),
      AppModel(
        // imagee: Imagee.asset(Assets.twitter),
        imagee: Image.network(
            'https://play-lh.googleusercontent.com/dsCkmJE2Fa8IjyXERAcwc5YeQ8_NvbZ4_OI8LgqyjILpXUfS5YhEcnAMajKPrZI-og'),
        name: Strings.appUdemy,
        rating: Strings.appRate,
        dataType: 'suggested',
      ),
      AppModel(
        // imagee: Imagee.asset(Assets.messengerlite),
        imagee: Image.network(
          'https://lh3.ggpht.com/e3oZddUHSC6EcnxC80rl_6HbY94sM63dn6KrEXJ-C4GIUN-t1XM0uYA_WUwyhbIHmVMH=w300',
        ),
        name: Strings.appGoogleSheet,
        rating: Strings.appRate,
        dataType: "suggested",
      ),
     
      AppModel(
        // imagee: Imagee.asset(Assets.cityecpress),
        imagee: Image.network(
          'https://play-lh.googleusercontent.com/D09AsmYSxDpMWRSXbu54j2R_8sR-1OgbV2DXSI9_HIuY2IMZ8b8JgscWol6mikknaks',
        ),
        name: Strings.appAlibaba,
        rating: Strings.appRate,
        // dataType: Strings.low,
        dataType: "lowspace",
      ),
      AppModel(
        // imagee: Imagee.asset(Assets.cityecpress),
        imagee: Image.network(
            'https://esewa.com.np/common/images/esewa-icon-large.png'),

        name: Strings.appesewa,
        rating: Strings.appRate,
        // dataType: Strings.recommended,
        dataType: "lowspace",
      ),
      AppModel(
        // imagee: Imagee.asset(Assets.facebooklite),
        imagee: Image.network(
          'https://storage.googleapis.com/gweb-uniblog-publish-prod/images/Google_Meet.max-1100x1100.png',
        ),
        name: Strings.appGoogleMeet,
        rating: Strings.appRate,
        dataType: "lowspace",
      ),
       
      AppModel(
        // imagee: Imagee.asset(Assets.snap),
        imagee: Image.network(
            'https://play-lh.googleusercontent.com/RGvuFCqPOIiR1i9QDN6-HNt5nOuWj4zuqQduxnJn0ughdo-yhAJNG1r6W1A3Fc6Z9w'),
        name: Strings.appLightroom,
        rating: Strings.appRate,
        // dataType: Strings.recommended,
        dataType: "lowspace",
      ),
      AppModel(
        // imagee: Image.asset(Assets.snapseed),
        imagee: Image.network(
            'https://www.freepnglogos.com/uploads/facebook-logo-icon/facebook-logo-icon-file-facebook-icon-svg-wikimedia-commons-4.png'),
        name: Strings.appFb,
        rating: Strings.appRate,
        // dataType: Strings.recommended,
        dataType: "lowspace",
      ),
      AppModel(
        // image: Image.asset(Assets.twitter),
        imagee: Image.network(
            'https://cdn-icons-png.flaticon.com/512/124/124034.png?w=360'),
        name: Strings.appWhatsapp,
        rating: Strings.appRate,
        // dataType: Strings.recommended,
        dataType: "lowspace",
      ),
      AppModel(
        // imagee: Imagee.asset(Assets.facebook),
        imagee: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/2048px-Instagram_logo_2016.svg.png'),
        name: Strings.appInstagram,
        rating: Strings.appRate,
        // dataType: Strings.recommended,
        dataType: "recommended",
      ),
      AppModel(
        // imagee: Imagee.asset(Assets.instagram),
        imagee: Image.network(
            'https://help.twitter.com/content/dam/help-twitter/brand/logo.png'),
        name: Strings.apptwitter,
        rating: Strings.appRate,
        // dataType: Strings.recommended,
        dataType: "recommended",
      ),
      AppModel(
        // imagee: Imagee.asset(Assets.messenger),
        imagee: Image.network(
            'https://site.onenote.com/161571440451_Images/onenoteicon-256.png'),
        name: Strings.appMicrosoft,
        rating: Strings.appRate,
        // dataType: Strings.recommended,
        dataType: "recommended",
      ),
      AppModel(
        // imagee: Imagee.asset(Assets.snap),
        imagee: Image.network(
            'https://play-lh.googleusercontent.com/RGvuFCqPOIiR1i9QDN6-HNt5nOuWj4zuqQduxnJn0ughdo-yhAJNG1r6W1A3Fc6Z9w'),
        name: Strings.appLightroom,
        rating: Strings.appRate,
        // dataType: Strings.recommended,
        dataType: "recommended",
      ),
      AppModel(
        // imagee: Image.asset(Assets.snapseed),
        imagee: Image.network(
            'https://www.freepnglogos.com/uploads/facebook-logo-icon/facebook-logo-icon-file-facebook-icon-svg-wikimedia-commons-4.png'),
        name: Strings.appFb,
        rating: Strings.appRate,
        // dataType: Strings.recommended,
        dataType: "recommended",
      ),
      AppModel(
        // image: Image.asset(Assets.twitter),
        imagee: Image.network(
            'https://cdn-icons-png.flaticon.com/512/124/124034.png?w=360'),
        name: Strings.appWhatsapp,
        rating: Strings.appRate,
        // dataType: Strings.recommended,
        dataType: "recommended",
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
