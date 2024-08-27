import 'package:agnence_tunis/text_field_and_title.dart';
import 'package:flutter/material.dart';

class homeAppbar extends StatelessWidget {
  const homeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(onTap: () {},
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow:const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                ),
              ],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(Icons.sort_rounded,
            size:28,
            ),
          ),
          ),
         const Row(
             children: [
              Icon(
                Icons.location_on,
                color: Color(0xFFF65959),
              ),
              Text("Tunis , Tunisia",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),)
            ],
          ),
          InkWell(
            onTap: () {
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const[
                  BoxShadow(
                  color:Colors.black26,
                  blurRadius: 6,
                  ),
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(Icons.search,
              size: 25,),
            ),
          )

                    ],
                    
      ),
    );
  }
}