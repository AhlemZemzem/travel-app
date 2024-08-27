import 'package:agnence_tunis/animation.dart';
import 'package:agnence_tunis/welcome-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() {
  runApp( MyApp());
}
class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }
  Widget build (BuildContext context){
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
       scaffoldBackgroundColor: Color(0xFFEDF2F6),
      ),
      title: 'Tunisie Safari',
     
      home:TravelSplashScreen(),
    );
  }
}