
import 'package:tukuapp/screens/color_page.dart';
import 'package:tukuapp/screens/family_page.dart';
import 'package:tukuapp/screens/number.dart';
import 'package:tukuapp/screens/phrases_page.dart';

import '../components/category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4D9),
      appBar: AppBar(title: Text('Tuku',),
        backgroundColor: Color(0xff49332A),

      ),
      body: Column(
        children: [
          Category(color:Color(0xffF99531),text:' Numbers',
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return numberPage();
                }));

              }

          ),

          Category(color: Color(0xff528032),text:' Family Members',  onTap: (){

            Navigator.push(context, MaterialPageRoute(builder: (context){
              return familyPage();
            }));


          }
          ),
          Category(color: Color(0xff7D40A2),text:' Color',  onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return colorsPage();
            }));

          }),
          Category(color: Color(0xff47A5CB),text:' Phreses',  onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return phrasesPage();
            }));

          })
        ],
      ),
    );
  }
}
