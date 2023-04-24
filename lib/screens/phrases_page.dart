

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tukuapp/components/item_ph.dart';
import 'package:tukuapp/models/phrases_class.dart';



class phrasesPage extends StatelessWidget {
   phrasesPage({Key? key}) : super(key: key);

  List<phrases> phrase = [
    phrases(jpName: 'Watashi wa puroguramingu ga daisukidesu', enName: 'i love a programming', sound: 'i_love_programming.wav'),
    phrases(jpName: 'Puroguramingu wa kantandesu', enName: 'programming is easy', sound: 'programming_is_easy.wav'),
    phrases(jpName: 'Doko ni iku no', enName: 'whare are you going', sound: 'where_are_you_going.wav'),
    phrases(jpName: 'Namae wa nandesu ka', enName: 'what is your name', sound: 'what_is_your_name.wav'),
    phrases(jpName: 'Watashi wa anime ga daisukidesu', enName: 'i love anime', sound: 'i_love_anime.wav'),
    phrases(jpName: 'Go kibun wa ikagadesu ka.', enName: 'how are ypu feeling', sound: 'how_are_you_feeling.wav'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
        backgroundColor: Color(0xff49332A),
      ),

        body:  ListView.builder(


          itemCount: phrase.length,
          itemBuilder: (context, index){


            return phraseItem(phrase: phrase[index], itemType: 'phrases', color: Color(0xff51B0D5));
          },
        )



    );
  }
}
