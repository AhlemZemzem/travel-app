import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:async';
import 'package:agnence_tunis/welcome-screen.dart';

class TravelSplashScreen extends StatefulWidget {
  @override
  _TravelSplashScreenState createState() => _TravelSplashScreenState();
}

class _TravelSplashScreenState extends State<TravelSplashScreen> {
  @override
  void initState() {
    super.initState();

    // Naviguer vers la page principale après l'animation
    Timer(Duration(seconds: 7), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => welcomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
        child: Lottie.asset(
          'assets/tours/travel_animation.json',
          width: 400,
          height: 400,
          fit: BoxFit.fill,
          // Optionnel: vous pouvez configurer le repeat ou jouer en boucle.
        ),),
        Align(
           alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Tunisie Travel! !',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 84, 127, 161)),),),
        )],
      ),
      
      
      
    );
  }
}
