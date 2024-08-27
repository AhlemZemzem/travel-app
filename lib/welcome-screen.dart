import 'package:agnence_tunis/account_screen.dart';
import 'package:agnence_tunis/Start/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class welcomeScreen extends StatefulWidget {
  const welcomeScreen({super.key});
  

  @override
  State<welcomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<welcomeScreen> {
  var height,width ;
  @override
  

  Widget build(BuildContext context) {
    height=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
          children: [
            Container(
              height:height,
              width:width,
              color: Colors.grey.shade400,
              child: Image.asset(
                "assets/homepage/business-travel.jpg",
                fit: BoxFit.cover,),
            ),
            Container(
                  width: width,
                  height: height,
                  color: Color.fromARGB(255, 36, 34, 34).withOpacity(0.4),
                   // Rouge avec 50% de transparence
                ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: height*0.32,
                width: width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Lets Start Journey , Enjoy" ,
                       style: GoogleFonts.lexend(
                      fontSize: width * 0.058,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      ),
                    ),
                    Text(
                      "Beautiful Movment of Life" ,
                       style: GoogleFonts.lexend(
                      fontSize: width * 0.058,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      ),
                    ),
                    SizedBox(height: height * 0.02,),
                    InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen(),),);
                      },
                     child:Container(
                      height: height*0.065,
                      width: width * 0.75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: Center(child:Text(
                        "Start",
                        style: GoogleFonts.lexend(
                          color: Colors.black,
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                        ),
                      )),
                    ),),
                    SizedBox(
                     height: height*0.02
                    ),
                    TextButton(onPressed: (){
                       
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>account(),),);
        
                       },
                    child: Text(
                      "don't have account?",
                      style: GoogleFonts.lexend(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                      ),
                    ),),
                    SizedBox(
                height: height*0.02)
                
                  ],
                ),
              ),
            )
          ],
        ),
      
        
    );
  }
}