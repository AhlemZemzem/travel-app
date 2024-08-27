import 'package:flutter/material.dart';

class confirmpassword extends StatelessWidget {
  const confirmpassword({super.key,required this.hintText,
  this.isShowpassword2,
   
  this.suffixIcon,
  required this.validator,
  });
  final String hintText;
  final bool? isShowpassword2;

  final Widget? suffixIcon;
  final String? Function(String? value) validator;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
      
      TextFormField(
        validator: validator,
        obscureText: isShowpassword2 ?? false,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          
          filled: true,
        fillColor: Color.fromARGB(255, 226, 239, 225),
        hintText: hintText,
        
        prefixIcon: Icon(Icons.password, color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 20.0),
        
      ),)
    ], );
  }
}