import 'package:flutter/material.dart';
import 'package:playstore_ui/common/constant/strings.dart';

import '../constant/assets.dart';
import 'app_Model.dart';

class AppUtils {
  static List<AppModel> appView() {
    return [
      AppModel(
     
        imagee: Image.network(
            'https://play-lh.googleusercontent.com/dsCkmJE2Fa8IjyXERAcwc5YeQ8_NvbZ4_OI8LgqyjILpXUfS5YhEcnAMajKPrZI-og'),
        name: Strings.appUdemy,
        rating: Strings.appRate,
        dataType: 'suggested',
      ),
      AppModel(
     
        imagee: Image.network(
          'https://storage.googleapis.com/gweb-uniblog-publish-prod/images/Google_Meet.max-1100x1100.png',
        ),
        name: Strings.appGoogleMeet,
        rating: Strings.appRate,
        dataType: "suggested",
      ),
      AppModel(
    
        imagee: Image.network(
          'https://lh3.ggpht.com/e3oZddUHSC6EcnxC80rl_6HbY94sM63dn6KrEXJ-C4GIUN-t1XM0uYA_WUwyhbIHmVMH=w300',
        ),
        name: Strings.appGoogleSheet,
        rating: Strings.appRate,
        dataType: "suggested",
      ),
      AppModel(

        imagee: Image.network(
            'https://play-lh.googleusercontent.com/dsCkmJE2Fa8IjyXERAcwc5YeQ8_NvbZ4_OI8LgqyjILpXUfS5YhEcnAMajKPrZI-og'),
        name: Strings.appUdemy,
        rating: Strings.appRate,
        dataType: 'suggested',
      ),
      AppModel(
      
        imagee: Image.network(
          'https://lh3.ggpht.com/e3oZddUHSC6EcnxC80rl_6HbY94sM63dn6KrEXJ-C4GIUN-t1XM0uYA_WUwyhbIHmVMH=w300',
        ),
        name: Strings.appGoogleSheet,
        rating: Strings.appRate,
        dataType: "suggested",
      ),
     
      AppModel(
      
        imagee: Image.network(
          'https://help.twitter.com/content/dam/help-twitter/brand/logo.png',
        ),
        name: Strings.appAlibaba,
        rating: Strings.appRate,
  
        dataType: "lowspace",
      ),
      AppModel(
 
        imagee: Image.network(
            'https://esewa.com.np/common/images/esewa-icon-large.png'),

        name: Strings.appesewa,
        rating: Strings.appRate,
      
        dataType: "lowspace",
      ),
      AppModel(
   
        imagee: Image.network(
          'https://storage.googleapis.com/gweb-uniblog-publish-prod/images/Google_Meet.max-1100x1100.png',
        ),
        name: Strings.appGoogleMeet,
        rating: Strings.appRate,
        dataType: "lowspace",
      ),
       
      AppModel(
        
        imagee: Image.network(
            'https://play-lh.googleusercontent.com/RGvuFCqPOIiR1i9QDN6-HNt5nOuWj4zuqQduxnJn0ughdo-yhAJNG1r6W1A3Fc6Z9w'),
        name: Strings.appLightroom,
        rating: Strings.appRate,
   
        dataType: "lowspace",
      ),
      AppModel(
    
        imagee: Image.network(
            'https://www.freepnglogos.com/uploads/facebook-logo-icon/facebook-logo-icon-file-facebook-icon-svg-wikimedia-commons-4.png'),
        name: Strings.appFb,
        rating: Strings.appRate,
       
        dataType: "lowspace",
      ),
      AppModel(
      
        imagee: Image.network(
            'https://cdn-icons-png.flaticon.com/512/124/124034.png?w=360'),
        name: Strings.appWhatsapp,
        rating: Strings.appRate,
   
        dataType: "lowspace",
      ),
      AppModel(
    
        imagee: Image.network(
            'https://help.twitter.com/content/dam/help-twitter/brand/logo.png'),
        name: Strings.appInstagram,
        rating: Strings.appRate,
 
        dataType: "recommended",
      ),
      AppModel(
     
        imagee: Image.network(
            'https://help.twitter.com/content/dam/help-twitter/brand/logo.png'),
        name: Strings.apptwitter,
        rating: Strings.appRate,

        dataType: "recommended",
      ),
      AppModel(
    
        imagee: Image.network(
            'https://help.twitter.com/content/dam/help-twitter/brand/logo.png'),
        name: Strings.appMicrosoft,
        rating: Strings.appRate,
     
        dataType: "recommended",
      ),
      AppModel(
     
        imagee: Image.network(
            'https://play-lh.googleusercontent.com/RGvuFCqPOIiR1i9QDN6-HNt5nOuWj4zuqQduxnJn0ughdo-yhAJNG1r6W1A3Fc6Z9w'),
        name: Strings.appLightroom,
        rating: Strings.appRate,
  
        dataType: "recommended",
      ),
      AppModel(
      
        imagee: Image.network(
            'https://help.twitter.com/content/dam/help-twitter/brand/logo.png'),
        name: Strings.appFb,
        rating: Strings.appRate,
       
        dataType: "recommended",
      ),
      AppModel(
      
        imagee: Image.network(
            'https://cdn-icons-png.flaticon.com/512/124/124034.png?w=360'),
        name: Strings.appWhatsapp,
        rating: Strings.appRate,
       
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
