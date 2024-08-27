import 'package:agnence_tunis/Start/account_pages.dart';
import 'package:agnence_tunis/Start/home_screen.dart';
import 'package:agnence_tunis/Start/like_pages.dart';
import 'package:agnence_tunis/Start/localizations_pages.dart';
import 'package:agnence_tunis/Start/more_info.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeBottomBar extends StatefulWidget {
  const HomeBottomBar({super.key});

  @override
  State<HomeBottomBar> createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> {
 
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      index:2,
      
      items:[
        Icon(Icons.person_outline,size:30),//index 0
        Icon(Icons.favorite_outline,size:30),//index 1
        Icon(
          Icons.home,
          size:30,
          color: Colors.redAccent,),//index 2
          Icon(Icons.location_city_outlined,size:30),//index 3
          Icon(Icons.list,size:30),//index 4
      ],
    );
  }
}