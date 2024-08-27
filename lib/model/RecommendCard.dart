import 'package:agnence_tunis/model/place_model.dart';
import 'package:flutter/material.dart';
class RecommendCard extends StatelessWidget {
  const RecommendCard({
    super.key,
    required this.placeInfo,
    required this.press,
  });

  final PlaceInfo placeInfo;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: press,
      child: Row(
          children: [
             Container(
               height: 200,
               width: 160,
               
               padding: const EdgeInsets.all(10),
               margin:  const EdgeInsets.only(left:8),
               decoration: BoxDecoration(
               color: Colors.black,
               borderRadius: BorderRadius.circular(15),
               image: DecorationImage(image: AssetImage(placeInfo.image),
               fit:BoxFit.cover,
               opacity: 0.7,)
                       
               ),
               child: Column(children: [Container(
                 alignment: Alignment.topRight,
                 child: const  Icon(
                   Icons.bookmark_border_outlined,
                   color: Colors.white,
                   size: 30,
                 ),
               ),
              const  Spacer(),
               Container(
                 alignment: Alignment.bottomLeft,
               child: Text(placeInfo.title,style: const TextStyle(
                color: Colors.white,
                 fontSize:15,
                 fontWeight: FontWeight.w600     ),
                 ),
                 
                 ),
                 
               ],),
             
             ),
           ],
          
      ),
    );
  }
}

