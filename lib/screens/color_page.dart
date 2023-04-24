

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/item.dart';
import '../models/Number_class.dart';

class colorsPage extends StatelessWidget {
   colorsPage ({Key? key}) : super(key: key);

  List<itemScreens> colorPage = [

    itemScreens(image: 'assets/images/colors/color_black.png', jpName: 'Chichioya', enName: 'father', sound: 'black.wav'),
    itemScreens(image: 'assets/images/colors/color_brown.png', jpName: 'Chairo', enName: 'brown', sound: 'brown.wav'),
    itemScreens(image: 'assets/images/colors/color_dusty_yellow.png', jpName: 'Hokori ppoi kiiro', enName: 'dusty yellow', sound: 'dusty yellow.wav'),
    itemScreens(image: 'assets/images/colors/color_gray.png', jpName: 'Gurē', enName: 'gray', sound: 'gray.wav'),
    itemScreens(image: 'assets/images/colors/color_green.png', jpName: 'Midori', enName: 'green', sound: 'green.wav'),
    itemScreens(image: 'assets/images/colors/color_red.png', jpName: 'Aka', enName: 'red', sound: 'red.wav'),
    itemScreens(image: 'assets/images/colors/yellow.png', jpName: 'Kiiro', enName: 'yellow', sound: 'yellow.wav'),
    itemScreens(image: 'assets/images/colors/color_white.png', jpName: 'Shiro', enName: 'white', sound: 'white.wav'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Colors'),
        backgroundColor: Color(0xff49332A),
),
        body:  ListView.builder(


    itemCount: colorPage.length,
    itemBuilder: (context, index){


    return Item(number: colorPage[index],color: Color(0xff7D40A2), itemType: 'colors');
    },
    )
    );

  }
}
