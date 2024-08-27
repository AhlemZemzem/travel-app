import 'package:flutter/material.dart';

class  text_field_and_title extends StatelessWidget {
  const text_field_and_title({super.key,required this.hintText, required this.validator});
  final String hintText;
 final String? Function(String? value) validator;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
      
      TextFormField(
      validator: validator,
        decoration: InputDecoration(filled: true,
      fillColor: Color.fromARGB(255, 226, 239, 225),
      hintText: hintText,
      prefixIcon: Icon(Icons.person, color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      ),)
    ], );
  }
}