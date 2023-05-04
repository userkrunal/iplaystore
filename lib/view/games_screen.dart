import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iplaystore/provider/app_provider.dart';
import 'package:provider/provider.dart';

class GamesScreen extends StatefulWidget {
  const GamesScreen({Key? key}) : super(key: key);

  @override
  State<GamesScreen> createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  AppProvider? providerT;
  AppProvider? providerF;
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
              Text("Games",style: TextStyle(fontSize: 30,color: CupertinoColors.black,fontWeight: FontWeight.bold)),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/img_6.png"),fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(40)
                ),
              ),
            ],
          ),
        ),
         Divider(height: 10,thickness: 2,indent: 10),
        Expanded(
         child: ListView.builder(itemBuilder: (context, index) => Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
                Row(
                  children: [
                    Text("NEW GAMES",style: TextStyle(fontSize: 10,color: CupertinoColors.systemBlue)),
                  ],
                ),
                SizedBox(height: 2),
                Text("${providerF!.gamesList[index].name}",style: TextStyle(fontSize: 20,color: CupertinoColors.black)),
               SizedBox(height: 2),
               Container(
                  height: 150,
                  width: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("${providerF!.gamesList[index].img}"),fit: BoxFit.cover
                    )
                  ),
                )

             ],
           ),
         ),itemCount: providerF!.gamesList.length,scrollDirection: Axis.horizontal),
       ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Discover AR Gaming",style: TextStyle(fontSize: 20,color: CupertinoColors.black)),
              Text("See All",style: TextStyle(fontSize: 15,color: CupertinoColors.systemBlue)),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(itemBuilder: (context, index) => CupertinoListTile(
            title: Text("${providerF!.gamesList1[index].name}",style: TextStyle(color: CupertinoColors.black)),
            subtitle: Text("New games",style: TextStyle(color: CupertinoColors.systemGrey3),),
            leading: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("${providerF!.gamesList1[index].img}"),fit: BoxFit.fill
                )
              ),
            ),
          ),itemCount: providerF!.gamesList1.length,scrollDirection: Axis.vertical,),
        ),
        SizedBox(height: 150)
      ],
    ));
  }
}
