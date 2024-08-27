import 'package:flutter/material.dart';

class PostAppBar extends StatelessWidget {
  const PostAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 47,
            width: 47,
            padding: EdgeInsets.all(10),
            decoration:BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow:[
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                ),
              ]
            ) ,
            child: Icon(Icons.keyboard_double_arrow_left),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 47,
            width: 47,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius:BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(color: Colors.black26,blurRadius: 6),
              ]
            ),
            child: Icon(Icons.favorite,
            color: Colors.redAccent,
            size: 28,),
          ),
        )
        ],
      ),
    );
  }
}