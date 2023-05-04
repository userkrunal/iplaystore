import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iplaystore/provider/app_provider.dart';
import 'package:iplaystore/view/home_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppProvider())
      ],
      child: CupertinoApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(p0) =>iSO_HomeScreen()
        },
      ),
    )
  );
}