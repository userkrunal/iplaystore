import 'package:flutter/cupertino.dart';
import 'package:iplaystore/provider/app_provider.dart';
import 'package:provider/provider.dart';

class iSO_HomeScreen extends StatefulWidget {
  const iSO_HomeScreen({Key? key}) : super(key: key);

  @override
  State<iSO_HomeScreen> createState() => _iSO_HomeScreenState();
}

class _iSO_HomeScreenState extends State<iSO_HomeScreen> {
  AppProvider? providerF;
  AppProvider? providerT;
  @override
  Widget build(BuildContext context) {
    providerF=Provider.of<AppProvider>(context,listen: false);
    providerT=Provider.of<AppProvider>(context,listen: true);
    return CupertinoTabScaffold(tabBar: CupertinoTabBar(
      items: [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.device_phone_portrait),label: "Today"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.rocket_fill),label: "Games"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.layers_alt_fill),label: "Apps"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.arrow_down_square_fill),label: "Updates"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.search),label: "Search"),
      ],
    ), tabBuilder: (context, index) {
      return CupertinoTabView(
        builder: (context) {
          return providerF!.screen[index];
        },
      );
    },);
  }
}
