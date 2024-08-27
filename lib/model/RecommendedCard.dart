import 'package:agnence_tunis/model/place_model.dart';
import 'package:flutter/material.dart';
class RecommendedCard extends StatelessWidget {
  final PlaceInfo placeInfo;
  final VoidCallback press;
  final ScrollController scrollController=ScrollController();
   RecommendedCard({
    Key? Key, required this.placeInfo, required this.press,
  }):super(key: Key);

  @override
  Widget build(BuildContext context) {
             return InkWell(
              onTap: press,
               child: Column(
                 children: [
                   Row(
                     
                     children: [
                     
                       Container(
                        
                         height: 105,
                         width: 105,
                         decoration: BoxDecoration(
                           color: Colors.black,
                           borderRadius: BorderRadius.circular(15),
                           image: DecorationImage(
                            image:AssetImage (placeInfo.image),
                            fit:BoxFit.cover,
                            opacity: 0.8,
                            ),
                         ),
                       ),
                        SizedBox(width: 10),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(placeInfo.title,
                           style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                           Text(placeInfo.Hotels,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w800,color: Colors.grey),),
                           SizedBox(height: 10),
                           Row(
                             children: [
                             Icon(Icons.location_searching_sharp,color: Colors.grey,size: 17,),
                             SizedBox(width: 3),
                             Text("Location - - - - - - - - - -",style: TextStyle(color: Colors.grey,fontSize: 14),),
                             SizedBox(width: 7),
                             Icon(Icons.location_on_outlined,size: 20,color: Colors.blue,),
                             Text(placeInfo.location,style: TextStyle(color: Colors.blue),),
                             ],
                           ),
                           SizedBox(height: 10),
                           Row(
                             
                             children: [
                              
                             
                                Icon(Icons.star,size: 20,color: Colors.amber,),
                             Text("${placeInfo.starts}",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                           SizedBox(width: 28,),
                               Text("${placeInfo.prix}TND",style: TextStyle(
                                 fontSize: 13,
                                 fontWeight: FontWeight.w600,color:Colors.blue),),
                               Text(placeInfo.offre,style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.grey),),
                            
                                                                  
                             ],
                           ),
                         ],
                       ),
                     ],
                   ),
               
                 ],
               
                   ),
             );
  }
}