

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/phrases_class.dart';

class phraseItem extends StatelessWidget {
   phraseItem({Key? key, required this.phrase,required this.itemType, required this.color }) : super(key: key);
  final phrases phrase;
   Color color;
   String itemType;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      child: Container(
        color: color,
        child: Row(


          children: [





            Padding(
              padding: const EdgeInsets.only(left:16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,


                mainAxisAlignment: MainAxisAlignment.center,


                children: [
                  Text(phrase.jpName,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white
                    ),),
                  Text(phrase.enName,
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
                        player.play(phrase.sound);
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
