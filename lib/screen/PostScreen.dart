
import 'package:agnence_tunis/model/place_model.dart';
import 'package:agnence_tunis/widget/post_appbar.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
   final PlaceInfo placeInfo;
   
 PostScreen({Key? key, required this.placeInfo}):super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  
  Widget build(BuildContext context) {
    
    return Scaffold(
    
       body: Stack(
        children: [
                Image.asset(widget.placeInfo.image,
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.5,
                fit: BoxFit.cover,
              ),
               PreferredSize(preferredSize: Size.fromHeight(100), child: PostAppBar()),
          SizedBox(
          height: MediaQuery.of(context).size.height*.3,
          ),
        Padding(
          padding: const EdgeInsets.only(top:350.0),
          child: Container(
           height:600,
           width:double.infinity,
           decoration: BoxDecoration(
            color:Colors.white,
            borderRadius: BorderRadius.circular(30),
           ),
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
             child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.placeInfo.title,
                    style: TextStyle(fontSize: 22,
                    fontWeight: FontWeight.bold),),
                    
                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.amber,),
                        Text("${widget.placeInfo.starts}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                      ],
                    ),
                    
                  
                  ],
                ),
                   SizedBox(height: 12,),
                        
                Row(
                  children: [
                    Icon(Icons.location_on,
                    color: Colors.blue,),
                    SizedBox(width: 8,),
                    Text(widget.placeInfo.location,
                    style: TextStyle(color: Colors.grey,
                    fontSize: 20),),
                     
                    
                  ],
                ),
           const     SizedBox(height: 15,),
             const   Text("details",
                style: TextStyle(fontSize: 23,
                fontWeight: FontWeight.bold),),
                 SizedBox(height: 6,),
       
                 Text(
                  widget.placeInfo.desc,
                    style: TextStyle(
                    fontSize: 15,color: const Color.fromARGB(255, 141, 140, 140)),),
                    SizedBox(height: 10,),
                 const   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Featured",style: TextStyle(fontSize:23,fontWeight: FontWeight.w600 ),),
                        Text("View all",style: TextStyle(fontSize: 17,
                        color: Colors.orange,
                        decoration: TextDecoration.underline,decorationColor:Colors.orange ),),
                      ],
                      
                    ),
                 
                     SizedBox(height: 15,),
       Row(
         children: [
           Expanded( // ou SizedBox si vous voulez une taille fixe
             child: GridView.builder(
        shrinkWrap: true, // Ajoutez ceci pour que GridView prenne seulement l'espace nécessaire
        physics: NeverScrollableScrollPhysics(), // Désactiver le défilement pour éviter les conflits
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: widget.placeInfo.photos.length, // utiliser la longueur des photos de l'objet actuel
        itemBuilder: (context, index) {
          
          return SizedBox(
            width: 100,
            height: 100,
            
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                widget.placeInfo.photos[index],
                fit: BoxFit.cover,
                
              ),
            ),
          );
        },
             ),
           ),
         ],
       ),
       SizedBox(height: 10,),
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text("${widget.placeInfo.prix}TND",
           style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500,color:Colors.blue ),),
         ),
         Container(
          height: 50,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue,
          boxShadow: [BoxShadow(color: Colors.black,
          blurRadius: 6,)]),
          
           child: IconButton(onPressed: (){}, icon: Text("Book Now",
           style: TextStyle(fontSize: 25,color: Colors.white),)),
         )
         ],
       ),
       
       
       
              ],
              
             ),
           ),
            
          ),
        ),
        ],
        
                
       ), 
       
      
        
          );
          
    
  }
}
 