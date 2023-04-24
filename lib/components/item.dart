

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../models/Number_class.dart';

class Item extends StatelessWidget {
   Item({Key? key, required this.number,required this.color, required this.itemType}) : super(key: key);
 final itemScreens number;


Color color;
String itemType;

   @override
  Widget build(BuildContext context) {
    return   Container(
      height: 100,
      child: Container(
        color: color,
        child: Row(


          children: [


            Container(
              color: Color(0xffFFF4D9),
              child: Image.asset(number.image,


              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left:16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                mainAxisAlignment: MainAxisAlignment.center,


                children: [
                  Text(number.jpName,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white
                    ),),
                  Text(number.enName,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white
                    ),),
                ],
              ),
            ),
            Spacer(flex: 1),


            Padding(
              padding: const EdgeInsets.only(right: 16),

                child:IconButton(
                    onPressed: (){

                      try{
                        AudioCache player = AudioCache(prefix: 'assets/sounds/$itemType/');
                        player.play(number.sound);
                      }catch(ex){

                        print(ex);

                      }





                    },
                    
                    icon: Icon(Icons.play_arrow ,
                      color: Colors.white,
                      size: 26
                    ))
              ),



          ],
        ),
      ),
    );
  }
}
