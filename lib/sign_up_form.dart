
import 'package:agnence_tunis/SquareTitle.dart';
import 'package:agnence_tunis/confirmpassword.dart';
import 'package:agnence_tunis/emailfield.dart';
import 'package:agnence_tunis/passwordfield.dart';
import 'package:agnence_tunis/text_field_and_title.dart';

import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key,});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool isHidePassword1 = true;
  bool isHidePassword2 = true;
  bool isCheckBoxEnable = false;
  bool keyboardVisible = false;
final GlobalKey<FormState> keyform = GlobalKey<FormState>(); 
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal:20),
        child: SizedBox(
          width: double.maxFinite,
          child: Form(
            key:keyform ,
            child: Column(
             
              children: [ text_field_and_title(
                hintText: 'Username',
                 validator: (value) {
                      RegExp regExp = RegExp(
                          r'^(?=.{8,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$');
                      if (value?.isEmpty ?? true) {
                        return 'User name is required';
                      } else if (value!.length < 8) {
                        return 'username must have at least 8 char';
                      } else if (!regExp.hasMatch(value)) {
                        return ' Username is weak';
                      }
                      return null;
                    },

                
              ),
              SizedBox(height: 30,),
              email(
                hintText: 'Email',
              ),
               SizedBox(height: 30,),
              passwordfield(
                
                hintText: 'Password',
                validator: (value) {
                          RegExp regExp = RegExp(
                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                          if (value?.isEmpty ?? true) {
                            return 'Password is required';
                          } else if (value!.length < 8) {
                            return 'Password must have at least 8 char';
                          } else if (!regExp.hasMatch(value)) {
                            return ' Password is weak';
                          }
                          return null;
                        }, 
                isShowpassword1:isHidePassword1,
                suffixIcon: IconButton(onPressed: () {
                  setState(() {
                    isHidePassword1= !isHidePassword1;
                  });
                },icon:Icon (
                  isHidePassword1
                  ?Icons.visibility
                  :Icons.visibility_off,
                color:isHidePassword1? Color.fromARGB(255, 46, 48, 46) : Colors.red,
                ),iconSize:20 ,
              ),),
               SizedBox(height: 30,),
              confirmpassword(
                hintText: 'Confirm Password', 
                validator: (value) {
                          RegExp regExp = RegExp(
                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                          if (value?.isEmpty ?? true) {
                            return 'ConfirmPassword is required';
                          } else if (value!.length < 8) {
                            return 'Password must have at least 8 char';
                          } else if (!regExp.hasMatch(value)) {
                            return ' Password is weak';
                          }else if (value != passwordfield) {
                                    return "Password must be same as above";}
                           
                          return null;
                        },
                isShowpassword2:isHidePassword2,
                suffixIcon: IconButton(onPressed: () {
                  setState(() {
                    isHidePassword2= !isHidePassword2;
                  });
                },icon:Icon (
                  isHidePassword2
                  ?Icons.visibility
                  :Icons.visibility_off,
                color:isHidePassword2? const Color.fromARGB(255, 46, 48, 46) : Colors.red,
                ),iconSize: 20,
                               ),
                               ),
               SizedBox(height: 35,),
               
              InkWell(
                onTap: () {
                  
                      if (keyform.currentState!.validate()) {
                        print('login done');
                      }

                 },
                
                child: Container(
                  height: 45,
                 width: double.maxFinite,
                  decoration: BoxDecoration(color: Colors.deepPurpleAccent,borderRadius: BorderRadius.circular(20),),
                  child: Center(child: Text("Sign up",
                   style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                  ),
                   ),
                 ),
              
                const Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Color.fromARGB(255, 78, 150, 150),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue With',
                          style:
                              TextStyle(color: Color.fromARGB(255, 0, 76, 88),fontWeight: FontWeight.w500),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Color.fromARGB(255, 78, 150, 150),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SquareTitle(imagePath: 'assets/accountpage/github.png'),
                     SizedBox(width: 15),
            
                    SquareTitle(imagePath: 'assets/accountpage/gmail.png'),
                       SizedBox(width: 15),
                    SquareTitle(imagePath: 'assets/accountpage/linkedin.jpg') ],
                ),
                const SizedBox(height: 25),
                Container(
                  height: 50,
                  child: Row(
                  
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text('Already have account ?',style: 
                      TextStyle(color: Colors.white,fontWeight:FontWeight.w600 ),),
                      const SizedBox(width: 6),
                      Text('Login',style: TextStyle(color:Color(0xFF095578),fontWeight:FontWeight.bold ),),
                     ],
                    ),
                )
      
              ],
              ),
              
          ),),
      ),
    );
  }
}