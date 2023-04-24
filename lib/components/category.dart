
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
   String? text;
   Color? color;
   Function()? onTap;

  
   Category({Key? key, this.text, required this.color, required this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
   onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 18),
        height: 80,
        width: double.infinity,
        alignment: Alignment.centerLeft,
        child: Text(
          text!,
          style: TextStyle(
              fontSize: 20,
              color: Colors.white
          ),),
        color: color,

      ),
    );
  }
}
