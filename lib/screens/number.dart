

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tukuapp/components/item.dart';

import '../models/Number_class.dart';

class numberPage extends StatelessWidget {
   numberPage({Key? key}) : super(key: key);

   List<itemScreens> numbers = [

     itemScreens(image: 'assets/images/numbers/number_one.png', jpName: 'ichi', enName: 'one', sound: 'number_one_sound.mp3'),
     itemScreens(image: 'assets/images/numbers/number_two.png', jpName: 'Ni', enName: 'two', sound: 'number_two_sound.mp3'),
     itemScreens(image: 'assets/images/numbers/number_three.png', jpName: 'San', enName: 'Three', sound: 'number_three_sound.mp3'),
     itemScreens(image: 'assets/images/numbers/number_four.png', jpName: 'Shi', enName: 'four', sound: 'number_four_sound.mp3'),
     itemScreens(image: 'assets/images/numbers/number_five.png', jpName: 'Go', enName: 'five', sound: 'number_five_sound.mp3'),
     itemScreens(image: 'assets/images/numbers/number_six.png', jpName: 'Roku', enName: 'six', sound: 'number_six_sound.mp3'),
     itemScreens(image: 'assets/images/numbers/number_seven.png', jpName: 'Sebun', enName: 'seven', sound: 'number_seven_sound.mp3'),
     itemScreens(image: 'assets/images/numbers/number_eight.png', jpName: 'Hachi', enName: 'eight', sound: 'number_eight_sound.mp3'),
     itemScreens(image: 'assets/images/numbers/number_nine.png', jpName: 'Kyu', enName: 'nine', sound: 'number_nine_sound.mp3'),
     itemScreens(image: 'assets/images/numbers/number_ten.png', jpName: 'Ju', enName: 'ten', sound: 'number_ten_sound.mp3')

   ];


   @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text('Numbers'),
          backgroundColor: Color(0xff49332A),
        ),
        body:  ListView.builder(


          itemCount: numbers.length,
       itemBuilder: (context, index){


         return Item(number: numbers[index],color: Color(0xffF99531), itemType: 'numbers',);
       },


        )
      );




  }

// List<Widget> getList(List<itemNumber> numbers){
//      List<Item> itemList = [];
//      for(int i = 0; i<numbers.length; i++){
//        itemList.add(Item(number: numbers[i]));
//      }
//      return itemList;
// }

}


