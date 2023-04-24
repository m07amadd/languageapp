import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/item.dart';
import '../models/Number_class.dart';




class familyPage extends StatelessWidget {
   familyPage({Key? key}) : super(key: key);

  List<itemScreens> familyMembers = [

    itemScreens(image: 'assets/images/family_members/family_father.png', jpName: 'Chichioya', enName: 'father', sound: 'father.wav'),
    itemScreens(image: 'assets/images/family_members/family_daughter.png', jpName: 'Musume', enName: 'Daughter', sound: 'daughter.wav'),
    itemScreens(image: 'assets/images/family_members/family_grandfather.png', jpName: 'Ojesan', enName: 'Grand Father', sound: 'grand father.wav'),
    itemScreens(image: 'assets/images/family_members/family_mother.png', jpName: 'Hahaoya', enName: 'mother', sound: 'mother.wav'),
    itemScreens(image: 'assets/images/family_members/family_grandmother.png', jpName: 'Sobo', enName: 'Grand Mother', sound: 'grand mother.wav'),
    itemScreens(image: 'assets/images/family_members/family_older_brother.png', jpName: 'Nisan', enName: 'older brother', sound: 'older bother.wav'),
    itemScreens(image: 'assets/images/family_members/family_older_sister.png', jpName: 'Ane', enName: 'older sister', sound: 'older sister.wav'),
    itemScreens(image: 'assets/images/family_members/family_son.png', jpName: 'Musuko', enName: 'son', sound: 'son.wav'),
    itemScreens(image: 'assets/images/family_members/family_younger_brother.png', jpName: 'Otōto', enName: 'younger brother', sound: 'younger brohter.wav'),
    itemScreens(image: 'assets/images/family_members/family_younger_sister.png', jpName: 'Imōto', enName: 'younger sister', sound: 'younger sister.wav')

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members'),
        backgroundColor: Color(0xff49332A),
      ),

        body:  ListView.builder(


          itemCount: familyMembers.length,
          itemBuilder: (context, index){


            return Item(number: familyMembers[index],color: Color(0xff528032), itemType: 'family_members');
          },


        )
    );
  }
}
