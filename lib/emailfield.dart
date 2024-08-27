import 'package:flutter/material.dart';

class email extends StatelessWidget {
   email({super.key,required this.hintText,
});
  final String hintText;
   
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
      
      TextFormField(
          
        decoration: InputDecoration(filled: true,
      fillColor: Color.fromARGB(255, 226, 239, 225),
      hintText: hintText,
      prefixIcon: Icon(Icons.email, color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      ),)
    ], );
  }
}