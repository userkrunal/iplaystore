import 'package:flutter/cupertino.dart';
import 'package:iplaystore/model/appstore_app.dart';
import 'package:iplaystore/view/app_screen.dart';
import 'package:iplaystore/view/games_screen.dart';
import 'package:iplaystore/view/today_screen.dart';

class AppProvider extends ChangeNotifier
{
  List screen=[
    Today_Screen(),
    GamesScreen(),
    AppScreen(),
  ];

  List todayList=[
    AppStoreAppModel(path: "assets/images/img.png"),
    AppStoreAppModel(path: "assets/images/img_1.png"),
    AppStoreAppModel(path: "assets/images/img_2.png"),
    AppStoreAppModel(path: "assets/images/img_3.png"),
    AppStoreAppModel(path: "assets/images/img_4.png"),
    AppStoreAppModel(path: "assets/images/img_5.png"),
  ];
  List gamesList=[
    GamesModel(img: "assets/images/img_7.png",name: "Subway Surfer"),
    GamesModel(img: "assets/images/img_8.png",name: "Minecraft"),
    GamesModel(img: "assets/images/img_9.png",name: "Candy Crush Sage"),
    GamesModel(img: "assets/images/img_10.png",name: "Ludo King"),
    GamesModel(img: "assets/images/img_11.png",name: "Wcc2"),
  ];

  List gamesList1=[
    GamesModel(img: "assets/images/img_12.png",name: "King of Pool"),
    GamesModel(img: "assets/images/img_10.png",name: "Ludo King"),
    GamesModel(img: "assets/images/img_13.png",name: "Wcc3"),
    GamesModel(img: "assets/images/img_14.png",name: "Asphalt 8"),
    GamesModel(img: "assets/images/img_15.png",name: "Candy Crush Sage"),
  ];
  List appList=[
    AppStoreAppModel(img: "assets/images/img_16.png",name: "App Store"),
    AppStoreAppModel(img: "assets/images/img_17.png",name: "Instagram"),
    AppStoreAppModel(img: "assets/images/img_18.png",name: "Telegram"),
    AppStoreAppModel(img: "assets/images/img_19.png",name: "JioCinema"),
    AppStoreAppModel(img: "assets/images/img_20.png",name: "GPay"),
    AppStoreAppModel(img: "assets/images/img_21.png",name: "Cricbuzz"),
    AppStoreAppModel(img: "assets/images/img_22.png",name: "Twitter"),
  ];
}