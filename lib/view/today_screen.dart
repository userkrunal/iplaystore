import 'package:flutter/cupertino.dart';
import 'package:iplaystore/provider/app_provider.dart';
import 'package:provider/provider.dart';

class Today_Screen extends StatefulWidget {
  const Today_Screen({Key? key}) : super(key: key);

  @override
  State<Today_Screen> createState() => _Today_ScreenState();
}

class _Today_ScreenState extends State<Today_Screen> {
  AppProvider? providerF;
  AppProvider? providerT;
  @override
  Widget build(BuildContext context) {
    providerF=Provider.of<AppProvider>(context,listen: false);
    providerT=Provider.of<AppProvider>(context,listen: true);
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
        child: Column(
      children: [
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Today",style: TextStyle(fontSize: 30,color: CupertinoColors.black,fontWeight: FontWeight.bold)),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/img_6.png"),fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(40)
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              width: 320,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage("${providerF!.todayList[index].path}"),fit: BoxFit.cover
                )
              ),
            ),
          ),itemCount: providerF!.todayList.length),
        ),
      ],
    ));
  }
}
