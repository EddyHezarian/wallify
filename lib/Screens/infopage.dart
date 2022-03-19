import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walify/configs/themes.dart';
import 'package:readmore/readmore.dart';

import '../configs/bottomappbar.dart';

class info_page extends StatelessWidget {
  const info_page({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkbluecol,
      body: Column(
        children: [
          Stack(
             alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3.5,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60)),color: bluecol)
            ),
            Positioned(bottom: -50,
            child: Container(
              width: 100,
              height:100,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),
              image: DecorationImage(image: AssetImage("images/info.jpg"),fit: BoxFit.cover)              
              )
            ),)
            
           ,Positioned(top: 40 , right:  25  ,
           child: Container(
             width: 50,
             height: 50,
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
             color: Color.fromARGB(82, 255, 255, 255) ),
             child: Icon(Icons.edit,color:darkbluecol,),
           ))       
            ],),
            SizedBox(height: 50,),
            Text("Eddy Hezarian",style: TextStyle(color: yelowcol,fontSize: 30),),
            SizedBox(height: 50,),
             Padding(
               padding: const EdgeInsets.fromLTRB(40, 0, 0, 20),
               child: Align(alignment: Alignment.centerLeft,child: Text("bio :",style: TextStyle(color: greycol,fontSize: 20),)),
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(35, 0, 35, 30),
               child: Align( alignment: Alignment.centerLeft, 
                 child: ReadMoreText(
                    'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                    trimLines: 2,
                    colorClickableText: yelowcol,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'read more',
                    trimExpandedText: ' less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: yelowcol),
                    lessStyle:TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: yelowcol) ,        
                    ),                   
               ),),

        Container(
          width: 400,
          height: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
                      color: Color.fromARGB(82, 255, 255, 255) ),
                      child: Icon(Icons.inbox,color:yelowcol,),
                  ),
                  Text("   inbox   ",style: TextStyle(color: yelowcol , fontSize: 18 , fontWeight: FontWeight.w600),)
                ], ),
             
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
                      color: Color.fromARGB(82, 255, 255, 255) ),
                      child: Icon(CupertinoIcons.plus,color:yelowcol,),
                  ),
                  Text("Share art",style: TextStyle(color: yelowcol , fontSize: 17 , fontWeight: FontWeight.w600),)
                ], ),
               Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
                      color: Color.fromARGB(82, 255, 255, 255) ),
                      child: Icon(CupertinoIcons.heart, color:yelowcol,),
                  ),
                  Text("downloads",style: TextStyle(color: yelowcol , fontSize: 16 , fontWeight: FontWeight.w600),)
                ], ),

            ],
          ),
        )       


      ])
   
   
   ,bottomNavigationBar: bottomapp(),
    );
      
    
  }
}