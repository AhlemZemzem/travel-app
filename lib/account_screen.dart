
import 'package:agnence_tunis/sign_up_form.dart';
import 'package:flutter/material.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
   bool isLoading = false;
    var height ,width;
  @override
  Widget build(BuildContext context) {
     height=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
              children: [Container(  
                height:height,
                width:width,
                child: Image.asset(
                  "assets/accountpage/nature.png",
                  fit: BoxFit.cover,),
                  
              ),
             
                 Padding(
                   padding: const EdgeInsets.only(top:60.0,left: 30,right: 30),
                   child: Center(
                     child: Container(
                      
                         child:Column(
                           children: [
                             Text("Sign Up",
                             style: TextStyle(fontWeight:FontWeight.w500,fontSize: 30,color: Colors.white),),
                             SizedBox(height: 15,),
                              Text("Create Your Account",
                             style: TextStyle(fontWeight:FontWeight.w500,fontSize: 15,
                             color: Color.fromARGB(255, 232, 231, 231)),),
                             SizedBox(height: 15,),
                            signup() ,
                            
                           ],
                          
                         ),
                        
                         
                       
                        
                     ),
                     
                   ),
                   
                 ),
                 
                 
                
                 
                    
               ],
            
          ),
      ),
      );
          
        
        
      
    
        
        
      
    
  }
}